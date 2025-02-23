// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

import 'package:junno_app/src/domain/models/partner/address.dart';
import 'package:junno_app/src/domain/models/partner/partner.dart';
import 'package:junno_app/src/domain/models/product/product.dart';
import 'package:junno_app/src/domain/models/proposal/payment.dart';

class Proposal {
  final String proposalId;
  final String proposalNumber;
  final String proposalType;
  final Partner customer;
  final DateTime orderDate;
  final List<Product> products;
  final int totalAmount;
  final String status;
  final Payment payment;
  final List<int> installmentPlan;
  final String? priceTable;
  final int discountValue;
  final double discountPercentage;
  final Address deliveryAddress;
  final String shippingMethod; //meio de entrega
  final DateTime? estimatedDelivery;
  final Pattern pattern;
  final Pattern seller;
  final Pattern representedCompany;
  final DateTime issueDate; //data emissao
  final DateTime? billingDate; //data faturamento
  final DateTime? deliveryDate;
  final String? clientNote;
  final String? representedNote;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? isDeleted;
  final DateTime? deletedAt;
  Proposal({
    required this.proposalId,
    required this.proposalNumber,
    required this.proposalType,
    required this.customer,
    required this.orderDate,
    required this.products,
    required this.totalAmount,
    required this.status,
    required this.payment,
    required this.installmentPlan,
    this.priceTable,
    required this.discountValue,
    required this.discountPercentage,
    required this.deliveryAddress,
    required this.shippingMethod,
    this.estimatedDelivery,
    required this.pattern,
    required this.seller,
    required this.representedCompany,
    required this.issueDate,
    this.billingDate,
    this.deliveryDate,
    this.clientNote,
    this.representedNote,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
    this.deletedAt,
  });

  @override
  String toString() {
    return 'Proposal(proposalId: $proposalId, proposalNumber: $proposalNumber, proposalType: $proposalType, customer: $customer, orderDate: $orderDate, products: $products, totalAmount: $totalAmount, status: $status, payment: $payment, installmentPlan: $installmentPlan, priceTable: $priceTable, discountValue: $discountValue, discountPercentage: $discountPercentage, deliveryAddress: $deliveryAddress, shippingMethod: $shippingMethod, estimatedDelivery: $estimatedDelivery, pattern: $pattern, seller: $seller, representedCompany: $representedCompany, issueDate: $issueDate, billingDate: $billingDate, deliveryDate: $deliveryDate, clientNote: $clientNote, representedNote: $representedNote, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(covariant Proposal other) {
    if (identical(this, other)) return true;

    return other.proposalId == proposalId &&
        other.proposalNumber == proposalNumber &&
        other.proposalType == proposalType &&
        other.customer == customer &&
        other.orderDate == orderDate &&
        listEquals(other.products, products) &&
        other.totalAmount == totalAmount &&
        other.status == status &&
        other.payment == payment &&
        listEquals(other.installmentPlan, installmentPlan) &&
        other.priceTable == priceTable &&
        other.discountValue == discountValue &&
        other.discountPercentage == discountPercentage &&
        other.deliveryAddress == deliveryAddress &&
        other.shippingMethod == shippingMethod &&
        other.estimatedDelivery == estimatedDelivery &&
        other.pattern == pattern &&
        other.seller == seller &&
        other.representedCompany == representedCompany &&
        other.issueDate == issueDate &&
        other.billingDate == billingDate &&
        other.deliveryDate == deliveryDate &&
        other.clientNote == clientNote &&
        other.representedNote == representedNote &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.isDeleted == isDeleted &&
        other.deletedAt == deletedAt;
  }

  @override
  int get hashCode {
    return proposalId.hashCode ^
        proposalNumber.hashCode ^
        proposalType.hashCode ^
        customer.hashCode ^
        orderDate.hashCode ^
        products.hashCode ^
        totalAmount.hashCode ^
        status.hashCode ^
        payment.hashCode ^
        installmentPlan.hashCode ^
        priceTable.hashCode ^
        discountValue.hashCode ^
        discountPercentage.hashCode ^
        deliveryAddress.hashCode ^
        shippingMethod.hashCode ^
        estimatedDelivery.hashCode ^
        pattern.hashCode ^
        seller.hashCode ^
        representedCompany.hashCode ^
        issueDate.hashCode ^
        billingDate.hashCode ^
        deliveryDate.hashCode ^
        clientNote.hashCode ^
        representedNote.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        isDeleted.hashCode ^
        deletedAt.hashCode;
  }

  Proposal copyWith({
    String? proposalId,
    String? proposalNumber,
    String? proposalType,
    Partner? customer,
    DateTime? orderDate,
    List<Product>? products,
    int? totalAmount,
    String? status,
    Payment? payment,
    List<int>? installmentPlan,
    String? priceTable,
    int? discountValue,
    double? discountPercentage,
    Address? deliveryAddress,
    String? shippingMethod,
    DateTime? estimatedDelivery,
    Pattern? pattern,
    Pattern? seller,
    Pattern? representedCompany,
    DateTime? issueDate,
    DateTime? billingDate,
    DateTime? deliveryDate,
    String? clientNote,
    String? representedNote,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isDeleted,
    DateTime? deletedAt,
  }) {
    return Proposal(
      proposalId: proposalId ?? this.proposalId,
      proposalNumber: proposalNumber ?? this.proposalNumber,
      proposalType: proposalType ?? this.proposalType,
      customer: customer ?? this.customer,
      orderDate: orderDate ?? this.orderDate,
      products: products ?? this.products,
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
      payment: payment ?? this.payment,
      installmentPlan: installmentPlan ?? this.installmentPlan,
      priceTable: priceTable ?? this.priceTable,
      discountValue: discountValue ?? this.discountValue,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
      shippingMethod: shippingMethod ?? this.shippingMethod,
      estimatedDelivery: estimatedDelivery ?? this.estimatedDelivery,
      pattern: pattern ?? this.pattern,
      seller: seller ?? this.seller,
      representedCompany: representedCompany ?? this.representedCompany,
      issueDate: issueDate ?? this.issueDate,
      billingDate: billingDate ?? this.billingDate,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      clientNote: clientNote ?? this.clientNote,
      representedNote: representedNote ?? this.representedNote,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}
