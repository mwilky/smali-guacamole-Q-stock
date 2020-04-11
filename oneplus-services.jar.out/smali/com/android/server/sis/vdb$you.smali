.class Lcom/android/server/sis/vdb$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sis/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/vdb$you;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/vdb$you;->this$0:Lcom/android/server/sis/vdb;

    invoke-static {p0, p1}, Lcom/android/server/sis/vdb;->zta(Lcom/android/server/sis/vdb;Lorg/json/JSONArray;)V

    return-void
.end method
