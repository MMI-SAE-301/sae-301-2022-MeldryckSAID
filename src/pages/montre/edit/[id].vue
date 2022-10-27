<script setup lang="ts">
import personalisationVue from "../../../pages/personalisation.vue";
defineProps<{
  id: string;
}>();
</script>

<template>
  <personalisationVue :id="id"></personalisationVue>
</template>
