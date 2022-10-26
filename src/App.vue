<template>
  <nav>
    
    <ul>
      <li>
        <router-link class="text-black underline" to="/">
          Test
          <code class="font-mono">/src/pages/index.vue</code>
        </router-link>
        
      </li>
    </ul>
  </nav>

  

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts">

</script>
