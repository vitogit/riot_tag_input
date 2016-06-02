<tag-input>
  
  <div class="bootstrap-tagsinput"> 
    <span each={tag in tag_list} >
      <span class="tag label label-info">{tag}<span onclick={remove} data-role="remove"></span></span>
    </span> 
    <input onkeyup={add} class="form-control bootstrap-tagsinput" type="text" placeholder="" size="6" name="input" autocomplete="off" />   
  </div>

  <script>
    this.tag_list = opts.tag_list || []

    this.add = function(e) {
      if (e.which == 13 && this.input.value != '') {
        this.tag_list.push(this.input.value)
        this.input.value = ''
      }
    }
    this.remove = function(e) {
      $( e.target ).parent().remove()
    }
  </script>

  <style>
    /*
     * css based on bootstrap-tagsinput v0.8.0
     * 
     */

    .bootstrap-tagsinput {
      background-color: #fff;
      border: 1px solid #ccc;
      box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
      display: inline-block;
      vertical-align: middle;
      border-radius: 4px;
      max-width: 100%;
      cursor: text;
      width: 100%;
    }
    .bootstrap-tagsinput input {
      border: none;
      box-shadow: none;
      outline: none;
      background-color: transparent;
      padding: 0 6px;
      margin: 0;
      width: auto;
      max-width: inherit;
    }
    .bootstrap-tagsinput input:focus {
      border: none;
      box-shadow: none;
    }
    .bootstrap-tagsinput .tag {
      color: white;
      margin: 2px;
      font-size: 80%;
      background-color: #d9edf7;
      color: 31708f;
      border-color: #bce8f1;
    }
    .bootstrap-tagsinput .tag [data-role="remove"] {
      margin-left: 8px;
      cursor: pointer;
    }
    .bootstrap-tagsinput .tag [data-role="remove"]:after {
      content: "x";
      padding: 0px 2px;
    }

  </style>
</tag-input>
