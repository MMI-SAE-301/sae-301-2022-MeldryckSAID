<script setup lang="ts">
import montrex from "../../../components/Montrex.vue";

defineProps<{
  data: string;
}>();
</script>
<template>
  <montrex :data="JSON.parse(data)" />
</template>
