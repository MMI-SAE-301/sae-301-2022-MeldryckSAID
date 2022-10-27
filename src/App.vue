<template>
  <header class="bg-blanc flex justify-between  ">
   
      <div class="flex  justify-around">
          <router-link class="text-black " to="/">
            <div class="flex items-center mx-4">
              <img
                class="w-12"
                src="public/Logo_tiktak.svg"
                alt="Logo TIK TAK"
              />
              <h1 class="font-montagu-slab font-bold text-Marron text-2xl mx-2">Tik TAK</h1>
            </div>
          </router-link>
       </div>
      
      <div class="flex items-center justify-around"> 

        <!-- <router-link class="text-black px-5  font-montagu-slab font-bold text-2xl " to="/test">
            test
          </router-link> -->
          <router-link class="text-black px-5 font-montagu-slab font-bold text-2xl " to="/persoindex">
            Personalisation
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
