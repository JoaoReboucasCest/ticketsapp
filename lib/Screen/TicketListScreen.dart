import 'package:flutter/material.dart';
import 'package:tickets/Screen/TicketsDetailsScreen.dart';
import 'package:tickets/models/Tickets.dart';

class TicketListScreen extends StatelessWidget {
  final List<Ticket> tickets = [
    Ticket(
      title: 'Ingresso VIP',
      description: 'Acesso exclusivo ao camarote VIP',
      imageUrl: 'https://via.placeholder.com/500x250',
      name: '',
      location: '',
      date: '',
      price: '',
    ),
    Ticket(
      title: 'Ingresso Regular',
      description: 'Acesso à pista principal',
      imageUrl: 'https://via.placeholder.com/500x250',
      name: '',
      location: '',
      date: '',
      price: '',
    ),
    Ticket(
      title: 'Ingresso Estudante',
      description: 'Acesso à pista principal com desconto para estudantes',
      imageUrl: 'https://via.placeholder.com/500x250',
      name: '',
      location: '',
      date: '',
      price: '',
    ),
  ];

  TicketListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Ingressos'),
      ),
      body: ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              tickets[index].imageUrl,
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
            title: Text(tickets[index].title),
            subtitle: Text(tickets[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TicketDetailsScreen(
                    ticket: tickets[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
