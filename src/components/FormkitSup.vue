<script setup lang="ts">
import { colors, materiaux } from "@/type";
//import type { Montre } from "@/types";
import { ref } from "vue";
import { supabase } from "../supabase";
import { useRouter } from "vue-router";

import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
import Montrec from "@/components/Montrec.vue";


import type { montrex } from "@/type";
import type {  montrer } from "@/type";
import type { montrec } from "@/type";

const montre = ref<montrex>(props.data ?? {});
const montrer = ref<montrer>(props.data ?? {});
const montrec = ref<montrec>(props.data ?? {});

const router = useRouter();

const props = defineProps(["id"]);
if (props.id) {
  // On charge les données de la montre
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("id_montre", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table montre :", error);
  else montre.value = data[0];
}

async function supprimerMontre() {
  const { data, error } = await supabase
    .from("montre")
    .delete()
    .match({ id_montre: montre.value.id_montre });
  if (error) {
    console.error(
      "Erreur à la suppression de ",
      montre.value,
      "erreur :",
      error
    );
  } else {
    router.push("/listes");
  }
}
</script>