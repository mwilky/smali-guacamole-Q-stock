.class Lcom/android/server/am/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/x;->tc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/x;


# direct methods
.method constructor <init>(Lcom/android/server/am/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/t;->this$0:Lcom/android/server/am/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/t;->this$0:Lcom/android/server/am/x;

    invoke-static {v0}, Lcom/android/server/am/x;->sis(Lcom/android/server/am/x;)V

    iget-object p0, p0, Lcom/android/server/am/t;->this$0:Lcom/android/server/am/x;

    invoke-static {p0}, Lcom/android/server/am/x;->tsu(Lcom/android/server/am/x;)V

    return-void
.end method
