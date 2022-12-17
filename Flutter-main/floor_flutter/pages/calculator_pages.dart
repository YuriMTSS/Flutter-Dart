import '../controllers/calculator_controler.dart';
import '../dialogs/result_dialog.dart';
import '../helpers/validator_helper.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de pisos'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: _buildForm(),
        ),
      ),
    );
  }

  _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderText('Dimensões do cômodo'),
          _buildVerticalSpace(),
          _buildNumberInputField(
            'Largura (metros)',
            onSaved: _controller.setRoomWidth,
          ),
          _buildVerticalSpace(),
          _buildNumberInputField(
            'Comprimento (metros)',
            onSaved: _controller.setRoomLength,
          ),
          _buildVerticalSpace(),
          _buildHeaderText('Dimensões do piso'),
          _buildVerticalSpace(),
          _buildNumberInputField(
            'Largura (centímetros)',
            onSaved: _controller.setFloorWidth,
          ),
          _buildVerticalSpace(),
          _buildNumberInputField(
            'Comprimento (centímetros)',
            onSaved: _controller.setFloorLength,
          ),
          _buildVerticalSpace(height: 40),
          _buildCalculateButton(),
        ],
      ),
    );
  }

  _buildNumberInputField(String label, {Function(String)? onSaved}) {
    return TextFormField(
      onSaved: onSaved = null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      validator: ValidatorHelper.isValidText,
      keyboardType: TextInputType.number,
    );
  }

  _buildCalculateButton() {
    return TextButton(
      onPressed: _calcular,
      child: const Text('CALCULAR'),
    );
  }

  _buildHeaderText(String label) {
    return Container(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
      height: 40,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _buildVerticalSpace({double height = 20.0}) {
    return SizedBox(height: height);
  }

  void _calcular() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final result = _controller.calculate();
      showDialog(
        context: context,
        builder: (context) => ResultDialog(result),
      );
    }
  }
}
