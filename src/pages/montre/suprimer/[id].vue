<template>
  <div>
    <h1>Supprimer votre choix</h1>
    <FormkitSup :id="id" />
  </div>
</template>

<script setup lang="ts">
import FormkitSup from "@/components/FormkitSup.vue";

defineProps<{
  id: string;
}>();
</script>
