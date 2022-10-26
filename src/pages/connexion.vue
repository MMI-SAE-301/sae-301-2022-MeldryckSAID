<script setup lang="ts">
import { supabase, user } from "@/supabase";
</script>

<template>
  <main class="min-h-screen bg-mclair">
    <div class="flex justify-center">
      <div
        class=" my-5 flex h-2/3 w-3/5 flex-col items-center rounded-lg bg-Marron p-20"
      >
        <div v-if="user">
          <span class="font-bold">{{ user.email }}</span> vous êtes connecté(e)
          <button
            class="mx-5 my-4 rounded-xl bg-mclair p-3 text-black"
            @pointerdown="supabase.auth.signOut()"
          >
            Se déconnecter
          </button>
        </div>

        <button
          class="my-4 mx-5 rounded-xl bg-mclair p-3 text-black"
          v-else
          @pointerdown="supabase.auth.signIn({ provider: 'google' })"
        >
          Se connecter avec Google
        </button>

        <div v-if="user">
          <span class="font-bold">{{ user.email }}</span> vous êtes connecté(e)
          <button
            class="my-4 mx-5 rounded-xl bg-mclair p-3 text-black"
            @pointerdown="supabase.auth.signOut()"
          >
            Se déconnecter
          </button>
        </div>

        <button
          class="my-4 mx-5 rounded-xl bg-mclair p-3 text-black"
          v-else
          @pointerdown="supabase.auth.signIn({ provider: 'facebook' })"
        >
          Se connecter avec Facebook
        </button>
      </div>
    </div>
  </main>
</template>
