.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$YVZbhjPAFxzfykYNnZr-_WVxBbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$YVZbhjPAFxzfykYNnZr-_WVxBbM;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$YVZbhjPAFxzfykYNnZr-_WVxBbM;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->lambda$new$0(Landroid/content/Context;)Lcom/android/systemui/ScreenDecorations;

    move-result-object p0

    return-object p0
.end method
