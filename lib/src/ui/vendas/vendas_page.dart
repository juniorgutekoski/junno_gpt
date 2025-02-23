import 'package:flutter/material.dart';
import 'package:junno_app/src/ui/vendas/widgets/drawerWidget.dart';
import 'package:junno_app/src/ui/vendas/widgets/titleWidget.dart';

class VendasPage extends StatelessWidget {
  const VendasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView(
          shrinkWrap: true,
          children: const [
            TileWidget(
                nomeCliente: "lucélia casa grande",
                statusPedido: Status.entregue,
                numeroPedido: '28774',
                dataPedido: '28/10/2024'),
            TileWidget(
                nomeCliente: "lucélia casa grande",
                statusPedido: Status.pendente,
                numeroPedido: '28774',
                dataPedido: '28/10/2024'),
            TileWidget(
                nomeCliente: "lucélia casa grande",
                statusPedido: Status.faturado,
                numeroPedido: '28774',
                dataPedido: '28/10/2024'),
            TileWidget(
                nomeCliente: "lucélia casa grande",
                statusPedido: Status.enviado,
                numeroPedido: '28774',
                dataPedido: '28/10/2024'),
            TileWidget(
                nomeCliente: "lucélia casa grande",
                statusPedido: Status.cancelado,
                numeroPedido: '28774',
                dataPedido: '28/10/2024'),
            TileWidget(
                nomeCliente: "thaisson",
                statusPedido: Status.faturado,
                numeroPedido: '25546',
                dataPedido: '28/09/2024'),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
