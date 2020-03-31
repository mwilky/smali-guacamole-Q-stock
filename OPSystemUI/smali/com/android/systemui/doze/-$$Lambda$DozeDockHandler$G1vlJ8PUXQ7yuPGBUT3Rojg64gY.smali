.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeDockHandler;

.field private final synthetic f$1:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;->f$0:Lcom/android/systemui/doze/DozeDockHandler;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;->f$0:Lcom/android/systemui/doze/DozeDockHandler;

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeDockHandler;->lambda$transitionTo$0$DozeDockHandler(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method
