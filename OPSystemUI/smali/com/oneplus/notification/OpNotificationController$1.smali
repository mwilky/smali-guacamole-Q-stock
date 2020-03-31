.class Lcom/oneplus/notification/OpNotificationController$1;
.super Ljava/lang/Object;
.source "OpNotificationController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OpNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$1;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$1;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->access$002(Lcom/oneplus/notification/OpNotificationController;Z)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
