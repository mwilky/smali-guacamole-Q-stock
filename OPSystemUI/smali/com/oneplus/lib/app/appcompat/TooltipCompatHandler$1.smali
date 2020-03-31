.class Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;->this$0:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler$1;->this$0:Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;->access$000(Lcom/oneplus/lib/app/appcompat/TooltipCompatHandler;Z)V

    return-void
.end method
