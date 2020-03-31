.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$EDCYzTgUQ8bpFfKolETll4jmVsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$EDCYzTgUQ8bpFfKolETll4jmVsA;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$EDCYzTgUQ8bpFfKolETll4jmVsA;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$EDCYzTgUQ8bpFfKolETll4jmVsA;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$EDCYzTgUQ8bpFfKolETll4jmVsA;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$2$DozeTriggers(II)V

    return-void
.end method
