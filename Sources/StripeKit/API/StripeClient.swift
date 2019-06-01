//
//  StripeClient.swift
//  Stripe
//
//  Created by Andrew Edwards on 4/30/19.
//

import NIO
import NIOHTTPClient

public final class StripeClient {
    public var balance: BalanceRoutes
    public var charge: ChargeRoutes
    public var connectAccounts: AccountRoutes
    public var coupons: CouponRoutes
    public var customer: CustomerRoutes
    public var dispute: DisputeRoutes
    public var ephemeralKeys: EphemeralKeyRoutes
    public var invoiceItems: InvoiceItemRoutes
    public var invoices: InvoiceRoutes
    public var orderReturns: OrderReturnRoutes
    public var orders: OrderRoutes
    public var plans: PlanRoutes
    public var product: ProductRoutes
    public var refund: RefundRoutes
    public var skus: SKURoutes
    public var source: SourceRoutes
    public var subscriptionItems: SubscriptionItemRoutes
    public var subscriptions: SubscriptionRoutes
    public var token: TokenRoutes
    public var transfers: TransferRoutes
    public var transferReversals: TransferReversalRoutes
    public var payouts: PayoutRoutes
    public var fileLinks: FileLinkRoutes
    public var files: FileRoutes
    public var person: PersonRoutes
    public var applicationFee: ApplicationFeesRoutes
    public var applicationFeeRefunds: ApplicationFeeRefundRoutes
    public var externalAccounts: ExternalAccountsRoutes
    public var countrySpecs: CountrySpecRoutes
    public var topup: TopUpRoutes
    public var valueListItems: ValueListItemRoutes
    public var valueList: ValueListRoutes
    public var paymentMethods: PaymentMethodRoutes
    public var bankAccounts: BankAccountRoutes
    public var cards: CardRoutes
    public var sessions: SessionRoutes
    public var discounts: DiscountRoutes
    public var taxids: TaxIDRoutes
    public var taxRates: TaxRateRoutes
    public var creditNotes: CreditNoteRoutes
    public var usageRecords: UsageRecordRoutes
    public var reviews: ReviewRoutes
    public var authorizations: AuthorizationRoutes
    public var cardholders: CardholderRoutes
    public var issuingCards: IssuingCardRoutes
    public var issuingDisputes: IssuingDisputeRoutes
    public var transactions: TransactionRoutes
    public var connectionTokens: ConnectionTokenRoutes
    public var locations: LocationRoutes
    public var readers: ReaderRoutes
    
    init(eventLoop: EventLoopGroup, apiKey: String) {
        let client = HTTPClient(eventLoopGroupProvider: .shared(eventLoop))
        let handler = StripeDefaultAPIHandler(httpClient: client, apiKey: apiKey)
        
        balance = StripeBalanceRoutes(apiHandler: handler)
        charge = StripeChargeRoutes(apiHandler: handler)
        connectAccounts = StripeConnectAccountRoutes(apiHandler: handler)
        coupons = StripeCouponRoutes(apiHandler: handler)
        customer = StripeCustomerRoutes(apiHandler: handler)
        dispute = StripeDisputeRoutes(apiHandler: handler)
        ephemeralKeys = StripeEphemeralKeyRoutes(apiHandler: handler)
        invoiceItems = StripeInvoiceItemRoutes(apiHandler: handler)
        invoices = StripeInvoiceRoutes(apiHandler: handler)
        orderReturns = StripeOrderReturnRoutes(apiHandler: handler)
        orders = StripeOrderRoutes(apiHandler: handler)
        plans = StripePlanRoutes(apiHandler: handler)
        product = StripeProductRoutes(apiHandler: handler)
        refund = StripeRefundRoutes(apiHandler: handler)
        skus = StripeSKURoutes(apiHandler: handler)
        source = StripeSourceRoutes(apiHandler: handler)
        subscriptionItems = StripeSubscriptionItemRoutes(apiHandler: handler)
        subscriptions = StripeSubscriptionRoutes(apiHandler: handler)
        token = StripeTokenRoutes(apiHandler: handler)
        transfers = StripeTransferRoutes(apiHandler: handler)
        transferReversals = StripeTransferReversalRoutes(apiHandler: handler)
        payouts = StripePayoutRoutes(apiHandler: handler)
        fileLinks = StripeFileLinkRoutes(apiHandler: handler)
        files = StripeFileRoutes(apiHandler: handler)
        person = StripePersonRoutes(apiHandler: handler)
        applicationFee = StripeApplicationFeeRoutes(apiHandler: handler)
        applicationFeeRefunds = StripeApplicationFeeRefundRoutes(apiHandler: handler)
        externalAccounts = StripeExternalAccountsRoutes(apiHandler: handler)
        countrySpecs = StripeCountrySpecRoutes(apiHandler: handler)
        topup = StripeTopUpRoutes(apiHandler: handler)
        valueListItems = StripeValueListItemRoutes(apiHandler: handler)
        valueList = StripeValueListRoutes(apiHandler: handler)
        paymentMethods = StripePaymentMethodRoutes(apiHandler: handler)
        bankAccounts = StripeBankAccountRoutes(apiHandler: handler)
        cards = StripeCardRoutes(apiHandler: handler)
        sessions = StripeSessionRoutes(apiHandler: handler)
        discounts = StripeDiscountRoutes(apiHandler: handler)
        taxids = StripeTaxIDRoutes(apiHandler: handler)
        taxRates = StripeTaxRateRoutes(apiHandler: handler)
        creditNotes = StripeCreditNoteRoutes(apiHandler: handler)
        usageRecords = StripeUsageRecordRoutes(apiHandler: handler)
        reviews = StripeReviewRoutes(apiHandler: handler)
        authorizations = StripeAuthorizationRoutes(apiHandler: handler)
        cardholders = StripeCardholderRoutes(apiHandler: handler)
        issuingCards = StripeIssuingCardRoutes(apiHandler: handler)
        issuingDisputes = StripeIssuingDisputeRoutes(apiHandler: handler)
        transactions = StripeTransactionRoutes(apiHandler: handler)
        connectionTokens = StripeConnectionTokenRoutes(apiHandler: handler)
        locations = StripeLocationRoutes(apiHandler: handler)
        readers = StripeReaderRoutes(apiHandler: handler)
    }
}