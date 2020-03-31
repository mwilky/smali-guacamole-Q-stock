.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;

    invoke-direct {v0}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;-><init>()V

    sput-object v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;->INSTANCE:Lcom/android/keyguard/clock/-$$Lambda$ClockManager$i436KHmxBKLRfCOA6rL_7pJbxgc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    check-cast p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-static {p1, p2}, Lcom/android/keyguard/clock/ClockManager;->lambda$reload$4(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/keyguard/clock/ClockManager$AvailableClocks;)V

    return-void
.end method
