.class Lcom/android/server/am/vdw$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/vdw;


# direct methods
.method constructor <init>(Lcom/android/server/am/vdw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vdw$tsu;->this$0:Lcom/android/server/am/vdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/vdw$tsu;->this$0:Lcom/android/server/am/vdw;

    invoke-static {p0, p1}, Lcom/android/server/am/vdw;->zta(Lcom/android/server/am/vdw;Lorg/json/JSONArray;)V

    return-void
.end method
