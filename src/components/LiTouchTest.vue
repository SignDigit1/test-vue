<template>
  <div class="hello">
    <ul>
      <li
        style="width:100%;height:200px;background-color:rgb(212 238 217)"
        @touchstart="liTouchStart"
        @touchend="liTouchEnd"
      >
        li
        <div
          style="width:100px;height:30px;background-color:rgb(238 154 165);line-height:30px;color:#FFF"
          @click="divClick"
        >
          button
        </div>
      </li>
    </ul>
    <div style="height:100px;overflow:auto">
      message:
      <div v-for="(item, index) of message" :key="`${item}${index}`">
        {{ item }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LiTouchTest',
  data() {
    return {
      message: [],
    };
  },
  methods: {
    divClick() {
      console.log('div', 'click');
      this.message.unshift('div click');
    },
    liTouchStart() {
      console.log('li', 'touchstart');
      this.message.unshift('li touchstart');
    },
    liTouchEnd() {
      console.log('li', 'touchend');
      this.message.unshift('li touchend');
    },
  },
};
</script>
