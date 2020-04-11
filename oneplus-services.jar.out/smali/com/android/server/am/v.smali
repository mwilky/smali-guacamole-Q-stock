.class Lcom/android/server/am/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/z;->xc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/z;


# direct methods
.method constructor <init>(Lcom/android/server/am/z;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/v;->this$0:Lcom/android/server/am/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/v;->this$0:Lcom/android/server/am/z;

    invoke-static {v0}, Lcom/android/server/am/z;->sis(Lcom/android/server/am/z;)V

    iget-object p0, p0, Lcom/android/server/am/v;->this$0:Lcom/android/server/am/z;

    invoke-static {p0}, Lcom/android/server/am/z;->tsu(Lcom/android/server/am/z;)V

    return-void
.end method
