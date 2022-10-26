<template>
  <header class="bg-blanc flex justify-between">
   
      <div class="flex  justify-around">
          <router-link class="text-black " to="/">
            <div class="flex items-center">
              <img
                class="w-8"
                src="public/Logo_tiktak.svg"
                alt="Logo TIK TAK"
              />
              <h1 class="font-montagu-slab font-bold text-Marron text-2xl">Tik TAK</h1>
            </div>
          </router-link>
       </div>
      
      <div class="flex items-center justify-around"> 
          <router-link class="text-black px-5 font-montagu-slab font-bold text-2xl " to="/personalisation">
            personalisation
          </router-link>
       
          <router-link class="text-black px-5  font-montagu-slab font-bold text-2xl " to="/produit">
            Produit
          </router-link>
       
          <router-link class="text-black px-5  font-montagu-slab font-bold text-2xl " to="/liste">
            Ma liste
          </router-link>
        
          <router-link class="text-black px-5  font-montagu-slab font-bold text-2xl " to="/connexion">
            Conexion
          </router-link>
       
  </div>
  </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts"></script>
