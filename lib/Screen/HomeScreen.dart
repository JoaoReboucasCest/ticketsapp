import 'package:flutter/material.dart';
import 'package:tickets/Screen/TicketsDetailsScreen.dart';
import 'package:tickets/models/Tickets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingressos'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ver Detalhes'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TicketDetailsScreen(
                  ticket: Ticket(
                    title: 'Ingresso VIP',
                    description: 'Acesso exclusivo ao camarote VIP',
                    imageUrl: 'https://via.placeholder.com/500x250',
                    date: '20/05/23',
                    location: 'Lagoa da Jansen',
                    name: 'Pedriana',
                    price: '120Rs',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
