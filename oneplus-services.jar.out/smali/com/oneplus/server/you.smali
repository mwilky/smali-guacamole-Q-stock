.class Lcom/oneplus/server/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/sis;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/sis;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/server/sis;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/you;->this$0:Lcom/oneplus/server/sis;

    iput-object p2, p0, Lcom/oneplus/server/you;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/oneplus/server/you;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/you;->val$context:Landroid/content/Context;

    iget p0, p0, Lcom/oneplus/server/you;->val$userId:I

    invoke-static {v0, p0}, Lcom/oneplus/server/tsu;->sis(Landroid/content/Context;I)V

    return-void
.end method
