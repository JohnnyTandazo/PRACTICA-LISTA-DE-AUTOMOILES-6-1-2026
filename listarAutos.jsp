<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>

<!DOCTYPE html>
<html>
<head>
    <title>Inventario de Automóviles</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; color: #333; padding: 30px; }
        h1 { text-align: center; color: #2c3e50; }
        .container { max-width: 800px; margin: auto; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h3 { background-color: #3498db; color: white; padding: 10px; border-radius: 4px; margin-top: 25px; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 10px; }
        th, td { text-align: left; padding: 12px; border-bottom: 1px solid #ddd; }
        th { background-color: #f8f9fa; }
        tr:hover { background-color: #f1f1f1; }
        .badge { padding: 5px 10px; border-radius: 15px; font-size: 0.8em; color: white; }
        .color-box { width: 15px; height: 15px; display: inline-block; border-radius: 50%; border: 1px solid #ccc; vertical-align: middle; }
    </style>
</head>
<body>

<div class="container">
    <h1>🚗 Control de Inventario - MVC Maps</h1>

    <%-- Bloque para HashMap --%>
    <h3>Estructura: HashMap (Búsqueda Rápida)</h3>
    <table>
        <tr><th>Modelo (Clave)</th><th>Fabricante</th><th>Color</th></tr>
        <%
            Map<String, Automovil> hash = (Map<String, Automovil>) request.getAttribute("hashMap");
            if(hash != null) {
                for (Automovil a : hash.values()) {
        %>
            <tr>
                <td><strong><%= a.getModelo() %></strong></td>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getColor() %></td>
            </tr>
        <% } } %>
    </table>

    <%-- Bloque para LinkedHashMap --%>
    <h3>Estructura: LinkedHashMap (Orden de Registro)</h3>
    <table>
        <tr><th>Modelo</th><th>Fabricante</th><th>Color</th></tr>
        <%
            Map<String, Automovil> linked = (Map<String, Automovil>) request.getAttribute("linkedHashMap");
            if(linked != null) {
                for (Automovil a : linked.values()) {
        %>
            <tr>
                <td><strong><%= a.getModelo() %></strong></td>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getColor() %></td>
            </tr>
        <% } } %>
    </table>

    <%-- Bloque para TreeMap --%>
    <h3>Estructura: TreeMap (Orden Alfabético)</h3>
    <table>
        <tr><th>Modelo</th><th>Fabricante</th><th>Color</th></tr>
        <%
            Map<String, Automovil> tree = (Map<String, Automovil>) request.getAttribute("treeMap");
            if(tree != null) {
                for (Automovil a : tree.values()) {
        %>
            <tr>
                <td><strong><%= a.getModelo() %></strong></td>
                <td><%= a.getFabricante() %></td>
                <td><%= a.getColor() %></td>
            </tr>
        <% } } %>
    </table>
</div>

</body>
</html>