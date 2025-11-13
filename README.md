# 饭店管理系统项目文档

## 1. 问题定义

本项目旨在解决餐饮业务运营中的低效问题，例如客户订单、菜品库存、供应链和人员的分散管理。当前的手动或分散系统常常导致订单处理延迟、库存跟踪不准确以及餐厅业主难以获取实时运营数据。该解决方案将核心实体（如客户、厨师、员工、菜品和订单）集成到统一系统中，功能模块涵盖下单、库存控制、人员排班和营收分析。它优化了客户、厨师和业主之间的信息流，自动化了库存更新和请假管理等关键流程，并为决策提供数据支持，最终提升运营效率和客户体验。[1,2](@ref)

## 2. 问题关注点

作为大学生，我们对这个问题有浓厚的兴趣，因为“吃什么”是大多数同学日常关注的焦点。我们看重便捷的点餐、清晰的菜品信息和可靠的服务。然而，许多校园内及周边的餐饮服务仍存在令人不满的问题，例如课后等高峰时段的订单延迟、热门菜品的库存状态不清晰导致白跑一趟，以及缺乏对食品质量反馈的便捷渠道。这些痛点打乱了我们的日常生活节奏，影响了用餐满意度。本项目集成的系统直接应对这些以学生为中心的需求：它简化点餐流程、实时更新库存并收集反馈，使我们的用餐更加高效。[3](@ref)

## 3. 系统建模信息

### 3.1 实体集 (Entity Sets)

数据库 `project` 包含以下主要表，各表之间通过外键建立关联：

1.  **Customer** (`customer_id`, `customer_name`, `address`)
2.  **Account** (`account_id`, `customer_id`, `username`, `password`, `account_status`)
3.  **Dish** (`dish_id`, `dish_name`, `description`, `price`, `size`, `taste_level`)
4.  **Inventory** (`inventory_id`, `dish_id`, `stock_level`, `stock_status`)
5.  **Order** (`order_id`, `customer_id`, `order_time`, `total_amount`, `order_status`, `payment_status`, `isTakeout`) (*注: 与Dish的关联通过中间表实现*)
6.  **Chef** (`chef_id`, `employee_id`, `specialty`)
7.  **Cook** (`cook_id`, `order_id`, `dish_id`, `item_id`, `count`, `method`) (*注: 调整为主键`cook_id`，表示烹饪细节*)
8.  **Employee** (`employee_id`, `name`, `role`, `salary`, `leave_status`)
9.  **SupplyChain** (`item_id`, `item_name`, `quantity`)
10. **SupplyRecord** (`record_id`, `item_id`, `unit_price`, `count`, `supply_date`, `supplier`, `cost`)
11. **LeaveRecord** (`leave_id`, `employee_id`, `start_date`, `end_date`, `reason`)
12. **Feedback** (`feedback_id`, `customer_id`, `order_id`, `rating`, `comments`, `date`)
13. **DailyRevenue** (`revenue_id`, `date`, `total_revenue`, `total_orders`, `total_customers`)

### 3.2 关系集 (Relationship Sets)

主要的外键关联与业务逻辑如下：

*   **Customer-Account**: 一个客户拥有一个账户 (`Customer.customer_id` -> `Account.customer_id`)。
*   **Customer-Order**: 一个客户可以有多个订单 (`Order.customer_id` -> `Customer.customer_id`)。
*   **Order-Dish**: 一个订单包含多个菜品，一个菜品可被多个订单点选（多对多关系，通过 `Cook` 表连接，包含数量、做法等细节）。
*   **Dish-Inventory**: 一个菜品对应一个库存记录 (`Inventory.dish_id` -> `Dish.dish_id`)。
*   **Employee-Chef**: 厨师是员工的一种角色 (`Chef.employee_id` -> `Employee.employee_id`)。
*   **Employee-LeaveRecord**: 一个员工可以有多个请假记录 (`LeaveRecord.employee_id` -> `Employee.employee_id`)。
*   **Customer-Feedback**: 一个客户可以对多个订单提交反馈 (`Feedback.customer_id` -> `Customer.customer_id`)。
*   **Order-Feedback**: 一个订单对应一份反馈 (`Feedback.order_id` -> `Order.order_id`)。
*   **Dish-SupplyChain**: 制作菜品需要消耗供应链物品（通过 `Cook.item_id` -> `SupplyChain.item_id` 关联）。

### 3.3 功能模块设计 (Functional Module Design)

#### 3.3.1 顾客模块 (Customer Module)

1.  **菜单浏览与点餐 (Menu Browsing and Ordering)**
    *   **菜品信息显示**: 清晰展示菜品分量（大、中、小）、口味等级（不辣、微辣、中辣、重辣）[4](@ref)。
    *   **点餐操作**: 支持在线支付，可添加个性化备注，并能实时检查菜品库存状态。
2.  **账户管理 (Account Management)**
    *   **密码找回功能**: 为客户提供便捷的账户密码找回渠道。

#### 3.3.2 厨师模块 (Chef Module)

1.  **订单处理 (Order Processing)**
    *   **订单详情查看**: 可清晰查看客户订单的所有信息。
    *   **菜品库存管理**: 确认食材是否充足，若缺货可在系统中更新菜品的库存状态。
2.  **厨师操作系统 (Chef Operation System)**
    *   **流程化管理**: 实现订单的步骤化操作，完成后提交，并配有反馈平台，方便厨师与其他环节高效协作[2](@ref)。
    *   **菜品预设管理**: 后台数据库存储各类菜品的预设信息，辅助厨师标准化操作。

#### 3.3.3 店主模块 (Owner Module)

1.  **供应链管理 (Supply Chain Management)**
    *   **每日配送状态查看**: 可查看配送的种类、时间和数量，便于控制食材供应。
2.  **人员管理 (Personnel Management)**
    *   **员工状态查看**: 实时掌握员工是否请假及请假时长，方便人事调度。
3.  **运营分析 (Operation Analysis)**
    *   **店铺评价查看**: 了解客户对餐厅的反馈，帮助优化服务[1](@ref)。
    *   **营收管理**: 可查看当日营收，并能实时监控营收、客户数量等运营数据，为决策提供依据[5](@ref)。

## 4. 系统特色

*   **集成化管理**: 将点餐、库存、供应链、人事、财务等模块紧密结合[1,5](@ref)。
*   **实时数据**: 库存、订单状态、营收数据等实时更新，助力快速决策。
*   **自动化流程**: 减少人工干预，提升效率，降低错误率。
*   **数据驱动决策**: 通过数据分析报表，为餐厅经营提供深入洞察[1,5](@ref)。