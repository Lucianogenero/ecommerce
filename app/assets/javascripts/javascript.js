
buscar=function(){
	alert("asdfasdfasdf");
}
$(#buscar").on('click', buscar);

adicionarCarrinho = function(produto_id) {
	$.get("/adicionar_carrinho/"+produto_id).success(function(data) {
		alert('adicionado com sucesso!');
	})
}

vez="X";

marca=function(evt){
	elem = this;
	
	celulaclicada = elem.innerHTML;
	if (celulaclicada == "X" || celulaclicada == "O") {
		<!--alert ("escolha outra casa");-->
	}else{
		elem.innerHTML = vez;
		if (vez=="X") { 
			vez ="O";
			$(elem).addClass("xis");
		}else{
			$(elem).addClass("bolinha");
			vez = "X";
		}
	}
}

mover = function(elem){
	elem.style.position = "absolute";
	var pos = elem.offsetTop;
	elem.style.top = parseInt(pos - 10) + "px";
	if (elem.offsetTop < 0){
		alert("Você foi trolado");
	}
}

limpar = function(){
	$("#limpar").on('click',limpar);
	$('.quadrado').removeClass('bolinha').removeClass('xis');
quadrados = document.getElementsByClassName("quadrado"); <!-- marcar evento - onclick-->
for (i = 0; i < quadrados.length; i++) {
	quadrado = quadrados[i];
	console.log(i);
	quadrado.innerHTML = '';
	}
}

$("#limpar").on('click', limpar);

clicar = function(evt){
	elem = this;
	alert(elem.getAttribute(id));



}

//botao=document.getElementById("meu botao");
//botao.addEventListener("click", clicar);

quadrados = document.getElementsByClassName("quadrado"); <!-- marcar evento - onclick-->
for (i = 0; i < quadrados.length; i++) {
	quadrado = quadrados[i];
	console.log(i);
	quadrado.addEventListener("click", marca);
}
$(".quadrado").on('click', marca);