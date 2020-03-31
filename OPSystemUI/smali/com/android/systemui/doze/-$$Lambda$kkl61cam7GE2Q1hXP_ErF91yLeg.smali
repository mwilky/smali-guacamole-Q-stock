.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$kkl61cam7GE2Q1hXP_ErF91yLeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/doze/DozeSensors$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$kkl61cam7GE2Q1hXP_ErF91yLeg;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    return-void
.end method


# virtual methods
.method public final onSensorPulse(IZFF[F)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$kkl61cam7GE2Q1hXP_ErF91yLeg;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IZFF[F)V

    return-void
.end method
