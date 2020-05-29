.class Lcom/oneplus/systemui/biometrics/OpQLController$1;
.super Ljava/lang/Object;
.source "OpQLController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLController;->interruptShowingQLView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldHideQLView()V

    return-void
.end method
