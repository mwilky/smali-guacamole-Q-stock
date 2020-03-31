.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:F

.field private final synthetic f$4:F

.field private final synthetic f$5:I

.field private final synthetic f$6:Z

.field private final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-boolean p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$2:Z

    iput p4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$3:F

    iput p5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$4:F

    iput p6, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$5:I

    iput-boolean p7, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$6:Z

    iput-boolean p8, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$7:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-boolean v1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$2:Z

    iget v3, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$3:F

    iget v4, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$4:F

    iget v5, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$5:I

    iget-boolean v6, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$6:Z

    iget-boolean v7, p0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$tDF3nUoeKjZGk_4_gWQ9lz7YWJk;->f$7:Z

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$0$DozeTriggers(ZZFFIZZI)V

    return-void
.end method
