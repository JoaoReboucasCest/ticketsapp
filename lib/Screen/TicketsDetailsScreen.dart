import 'package:flutter/material.dart';
import 'package:tickets/models/Tickets.dart';

class TicketDetailsScreen extends StatelessWidget {
  final Ticket ticket;

  const TicketDetailsScreen({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do ingresso'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text('Title: ${ticket.title}'),
            Text('Nome: ${ticket.name}'),
            const SizedBox(height: 16),
            Text('Data: ${ticket.date}'),
            const SizedBox(height: 16),
            Text('Local: ${ticket.location}'),
            const SizedBox(height: 16),
            Text('Preço: ${ticket.price}'),
            const SizedBox(height: 16),
            Text('Description: ${ticket.description}'),
            const SizedBox(height: 16),
            Text('ImagenURL: ${ticket.imageUrl}'),
          ],
        ),
      ),
    );
  }
}
