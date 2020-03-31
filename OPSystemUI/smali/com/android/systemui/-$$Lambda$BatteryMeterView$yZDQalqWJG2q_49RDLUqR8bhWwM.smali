.class public final synthetic Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;->f$0:Lcom/android/systemui/BatteryMeterView;

    return-void
.end method


# virtual methods
.method public final onBatteryRemainingEstimateRetrieved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$yZDQalqWJG2q_49RDLUqR8bhWwM;->f$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->lambda$updatePercentText$0$BatteryMeterView(Ljava/lang/String;)V

    return-void
.end method
