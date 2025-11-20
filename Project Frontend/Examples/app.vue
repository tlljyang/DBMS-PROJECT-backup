<template>
  <div class="customer-container">
    <h1>顾客ID列表</h1>
    
    <div v-if="loading" class="loading">加载中...</div>
    
    <div v-if="error" class="error">
      {{ error }}
      <button @click="fetchCustomers">重试</button>
    </div>
    
    <div v-if="customers.length > 0">
      <ul class="customer-list">
        <li v-for="customer in customers" :key="customer.id" class="customer-item">
          {{ customer.id }}
        </li>
      </ul>
    </div>
    
    <div v-else-if="!loading" class="no-data">
      没有找到顾客记录
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'CustomerList',
  data() {
    return {
      customers: [],
      loading: true,
      error: null
    };
  },
  mounted() {
    this.fetchCustomers();
  },
  methods: {
    async fetchCustomers() {
      this.loading = true;
      this.error = null;
      
      try {
        const response = await axios.get('GuestLogin.php');
        this.customers = response.data;
      } catch (err) {
        console.error('获取数据失败:', err);
        this.error = '加载顾客数据失败，请稍后再试';
      } finally {
        this.loading = false;
      }
    }
  }
};
</script>

<style scoped>
.customer-container {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  font-family: Arial, sans-serif;
}

h1 {
  text-align: center;
  color: #2c3e50;
}

.loading, .no-data, .error {
  text-align: center;
  padding: 20px;
  font-size: 18px;
}

.error {
  color: #e74c3c;
}

.customer-list {
  list-style-type: none;
  padding: 0;
}

.customer-item {
  background-color: #f8f9fa;
  border: 1px solid #dee2e6;
  border-radius: 4px;
  padding: 12px 15px;
  margin-bottom: 10px;
  transition: all 0.3s;
}

.customer-item:hover {
  background-color: #e9ecef;
  transform: translateX(5px);
}
</style>