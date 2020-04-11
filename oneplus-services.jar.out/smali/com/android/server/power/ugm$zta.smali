.class Lcom/android/server/power/ugm$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ugm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ugm;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ugm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ugm$zta;->this$0:Lcom/android/server/power/ugm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ugm;Lcom/android/server/power/gwm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ugm$zta;-><init>(Lcom/android/server/power/ugm;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/ugm$zta;->this$0:Lcom/android/server/power/ugm;

    invoke-static {p0, p1}, Lcom/android/server/power/ugm;->zta(Lcom/android/server/power/ugm;Lorg/json/JSONArray;)V

    return-void
.end method
