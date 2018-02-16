<%-- 
    Document   : selecionajsp
    Created on : 26/08/2017, 11:08:17
    Author     : Romulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo equipamentos</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script>
            var totalgeral=0;
            function teste(i){
                var total="total"+i;
                var q="q"+i
                var p="p"+i
                var d="d"+i
                var h="h"+i
                var m="m"+i
                
                var xq =  parseFloat(document.getElementsByName(q)[0].value);
                var xp =  parseFloat(document.getElementsByName(p)[0].value);
                var xd =  parseFloat(document.getElementsByName(d)[0].value);
                var xh =  parseFloat(document.getElementsByName(h)[0].value);
                var xm =  parseFloat(document.getElementsByName(m)[0].value);
                
                var t=(xh + xm/60)*xq * xp * xd / 1000;
                
                document.getElementById(total).innerHTML = t;
                //totalgeral=totalgeral+t;
                
                //var para = document.createElement("P");
                //var tt = document.createTextNode("total " + totalgeral);
                //para.appendChild(tt);
                //document.body.appendChild(para);
            } 
        </script>    
    </head>
    <body>
        <TABLE class="responsive-table" cellSpacing=1 width="100%">
          <caption>Simulador de Consumo</caption>
          <thead>
             <tr> 
          
           <th scope="col"><B>Numero</B></th>
           <th scope="col">Equipamento</th>
           <th scope="col"><B>Quantidade</B></th>
           <th scope="col"><B>Potência</B></th>
           <th scope="col"><B>Dias de Uso</B></th>
           <th scope="col" colSpan=2><B>Tempo de Uso</B></th>
           <th scope="col"><B>Total</B></th></TR>
            </tr>
          </thead>
          
   
        
        <%
        String nome[]=new String[85];
        int potencia[]=new int[85];
        
        nome[0]="Aquecedor de água por acumulação até 80 L";
        potencia[0]= 1500;
        nome[1]="Aquecedor de água por acumulação de 100 a 150 L";
        potencia[1]= 2500;
        nome[2]="Aquecedor de água por acumulação de 200 a 400 L";
        potencia[2]= 4000;
        nome[3]="Aquecedor de água por tampa";
        potencia[3]= 6000;
        nome[4]="Aquecedor de ambiente";
        potencia[4]= 1000;   
        nome[5]="Aspirador de pó residencial";
        potencia[5]= 600;    
        nome[6]="Assadeira grande";
        potencia[6]= 1000;
        nome[7]="Assadeira pequena";
        potencia[7]= 500;
        nome[8]="Banheira de hidromassagem";
        potencia[8]= 6600;
        nome[9]="Batedeira de bolo";
        potencia[9]= 100;
        nome[10]="Bomba d´água 1/4 CV monofásica";
        potencia[10]= 390;
        nome[11]="Bomba d”água 1/3 CV monofásica";
        potencia[11]= 520;
        nome[12]="Bomba d”água 1/2 CV trifásica";
        potencia[12]= 570;
        nome[13]="Bomba d”água 3/4 CV trifásica";
        potencia[13]= 820;
        nome[14]="Bomba d”água 1 CV monofásica";
        potencia[14]= 1100;
        nome[15]="Cafeteira elétrica pequena uso doméstico";
        potencia[15]= 600;
        nome[16]="Cafeteira elétrica uso comercial";
        potencia[16]= 1200;
        nome[17]="Chuveiro elétrico 127V ";
        potencia[17]= 4400;
        nome[18]="Chuveiro elétrico 220V";
        potencia[18]= 6000;
        nome[19]="Chuveiro 4 estações";
        potencia[19]= 6500;
        nome[20]="Conjunto de som";
        potencia[20]= 100;
        nome[21]="Ebulidor";
        potencia[21]= 1000;
        nome[22]="Enceradeira residencial";
        potencia[22]= 300;
        nome[23]="Espremedor de frutas";
        potencia[23]= 200;
        nome[24]="Exaustor";
        potencia[24]= 150;
        nome[25]="Ferro elétrico automático de passar roupa";
        potencia[25]= 1000;
        nome[26]="Ferro elétrico simples de passar roupa";
        potencia[26]= 500;
        nome[27]="Fogão comum com acendedor";
        potencia[27]= 90;
        nome[28]="Fogão elétrico de 4 bocas potência por cada queimador";
        potencia[28]= 1500;
        nome[29]="Fogão elétrico de 6 bocas potência por cada queimador médio";
        potencia[29]= 2100;
        nome[30]="Fogão elétrico de 6 bocas potência por cada queimador grande";
        potencia[30]= 2700;
        nome[31]="Forno de microondas";
        potencia[31]= 750;
        nome[32]="Forno elétrico de embutir";
        potencia[32]= 4500;
        nome[33]="Freezer vertical Pequeno";
        potencia[33]= 300;
        nome[34]="Freezer horizontal médio";
        potencia[34]= 400;
        nome[35]="Freezer Horizontal Grande";
        potencia[35]= 500;
        nome[36]="Geladeira Comum";
        potencia[36]= 250;
        nome[37]="Geladeira Duplex";
        potencia[37]= 300;
        nome[38]="Grill";
        potencia[38]= 1200;
        nome[39]="Impressora comum";
        potencia[39]= 90;
        nome[40]="Impressora laser";
        potencia[40]= 900;
        nome[41]="Liquidificador doméstico";
        potencia[41]= 200;
        nome[42]="Lâmpada Incandescente de 15W";
        potencia[42]= 15;
        nome[43]="Lâmpada Incandescente de 20W";
        potencia[43]= 20;
        nome[44]="Lâmpada Incandescente de 25W";
        potencia[44]= 25;
        nome[45]="Lâmpada Incandescente de 40W";
        potencia[45]= 40;
        nome[46]="Lâmpada Incandescente de 60W";
        potencia[46]= 60;
        nome[47]="Lâmpada Incandescente de 100W";
        potencia[47]= 100;
        nome[48]="Lâmpada Incandescente de 150W";
        potencia[48]= 150;
        nome[49]="Lâmpada Incandescente de 200W";
        potencia[49]= 200;
        nome[50]="Lâmpada Incandescente de 250W";
        potencia[50]= 250;
        nome[51]="Lâmpada Incandescente";
        potencia[51]= 0;
        nome[52]="Lâmpada Fluorescente de 20W";
        potencia[52]= 20;
        nome[53]="Lâmpada Fluorescente de 40W";
        potencia[53]= 40;
        nome[54]="Lâmpada Fluorescente ";
        potencia[54]= 0;
        nome[55]="Máquina de lavar louças";
        potencia[55]= 1500;
        nome[56]="Máquina de lavar roupas com aquecimento";
        potencia[56]= 1000;
        nome[57]="Máquina de secar roupas";
        potencia[57]= 3500;
        nome[58]="Máquina para costurar";
        potencia[58]= 100;
        nome[59]="Máquina de lavar pratos";
        potencia[59]= 1200;
        nome[60]="Máquina de lavar roupas";
        potencia[60]= 1500;
        nome[61]="Máquina de xerox grande";
        potencia[61]= 2000;
        nome[62]="Máquina de xerox pequena";
        potencia[62]= 1500;
        nome[63]="Micro computador";
        potencia[63]= 250;
        nome[64]="Micro forno elétrico";
        potencia[64]= 1000;
        nome[65]="Panela elétrica";
        potencia[65]= 1200;
        nome[66]="Raio X (dentista)";
        potencia[66]= 1090;
        nome[67]="Raio X (hospital)";
        potencia[67]= 12100;
        nome[68]="Refletor odontológico";
        potencia[68]= 150;
        nome[69]="Sanduicheira";
        potencia[69]= 640;
        nome[70]="Sauna comercial";
        potencia[70]= 12000;
        nome[71]="Sauna residencial";
        potencia[71]= 4500;
        nome[72]="Scanner";
        potencia[72]= 50;
        nome[73]="Secador de cabelos grande";
        potencia[73]= 1250;
        nome[74]="Secador de cabelos pequeno";
        potencia[74]= 700;
        nome[75]="Secador de roupa comercial";
        potencia[75]= 5000;
        nome[76]="Secador de roupa residencial";
        potencia[76]= 1100;
        nome[77]="Televisor colorido";
        potencia[77]= 200;
        nome[78]="Televisor preto e branco";
        potencia[78]= 90;
        nome[79]="Torneira elétrica";
        potencia[79]= 2000;
        nome[80]="Vaporizador";
        potencia[80]= 300;
        nome[81]="Ventilador grande";
        potencia[81]= 250;
        nome[82]="Ventilador médio";
        potencia[82]= 200;
        nome[83]="Ventilador pequeno";
        potencia[83]= 70;
        nome[84]="Vídeo game";
        potencia[84]= 10;
       
        String checks[]= request.getParameterValues("check");
        if(checks != null){%>
        <ul><%for(int i=0; i<checks.length; i++){%>
           
              
  <TR class="table_line_light">
    <TD><%=checks[i]%>  </TD>
    <TD><% int x = Integer.parseInt(checks[i]); %>
        <%=nome[x]%>  </TD>
    <TD><INPUT onblur=teste(<%=i%>) value=0 size=5 name=<%="q"+i%> > </TD>
    <TD><INPUT onblur=teste(<%=i%>) value=<%=potencia[x]%> size=6 name= <%="p"+i%> > W</TD>
    <TD>Dias/mês <INPUT onblur=teste(<%=i%>) value=30 size=4 name=<%="d"+i%>> </TD>
    <TD>Hr. <INPUT onblur=teste(<%=i%>) value=0 maxLength=2 size=2 name=<%="h"+i%>> </TD>
    <TD>Min. <INPUT onblur=teste(<%=i%>) value=0 maxLength=2 size=2 name=<%="m"+i%>> </TD>
    <TD><p style="COLOR: green; FONT-WEIGHT: bold"  size=5 id=<%="total"+i%> >0  </TD></TR>
            
            <%}%>
            
    </TABLE>
        
      
            
            
            
            
        </ul><%}%>
                
                <p id="demo"></p>
    </body>
</html>
