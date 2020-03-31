.class Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;->this$0:Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;->this$0:Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->access$100(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;I)V

    return-void
.end method
