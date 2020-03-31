.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardClockSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    return-void
.end method


# virtual methods
.method public final onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->lambda$H31kNGqlEfE-tZQZgrBtirdKZKc(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method
