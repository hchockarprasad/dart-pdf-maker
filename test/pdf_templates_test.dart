import 'dart:convert';

import 'package:pdf_templates/pdf_templates.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Awesome awesome;
    RowStack row;
    TextStack textStack;

    setUp(() {
      awesome = Awesome();
      textStack = TextStack(
        children: [
          Text(
            'Stack 1',
          ),
          Text(
            'Stack 2',
          ),
        ],
      );
      print(json.encode(textStack.build()));
      row = RowStack(
        children: [
          Row(
            children: [
              RowItem(
                child: TextStack(
                  children: [
                    Text(
                      'Tx1',
                    ),
                    Text(
                      'Tx2',
                    ),
                  ],
                ),
              ),
              RowItem(
                child: Text(
                  'Row stack 1',
                ),
              ),
            ],
          ),
          Row(
            children: [
              RowItem(
                child: Text(
                  'Row stack 2',
                ),
              ),
              RowItem(
                child: Text(
                  'Row stack 2',
                ),
              ),
            ],
          ),
        ],
      );
      print(json.encode(row.build()));
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
