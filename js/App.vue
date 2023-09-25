<template>
  <Layout>
      <suspense>
          <RouterView :key='$route.fullPath' />
      </suspense>
  </Layout>
</template>

<script setup>
import Layout from './components/AppLayout.vue';
</script>
