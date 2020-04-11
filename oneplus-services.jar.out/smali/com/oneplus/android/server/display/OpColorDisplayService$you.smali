.class public final Lcom/oneplus/android/server/display/OpColorDisplayService$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {v0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$602(Lcom/oneplus/android/server/display/OpColorDisplayService;I)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public E(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public ve()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->this$0:Lcom/oneplus/android/server/display/OpColorDisplayService;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method
