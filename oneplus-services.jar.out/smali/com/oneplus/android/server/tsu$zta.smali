.class Lcom/oneplus/android/server/tsu$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field enable:Z

.field packageName:Ljava/lang/String;

.field reason:I

.field final synthetic this$0:Lcom/oneplus/android/server/tsu;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/tsu$zta;->this$0:Lcom/oneplus/android/server/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/tsu$zta;->enable:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/android/server/tsu$zta;->reason:I

    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/android/server/tsu$zta;->packageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/tsu;Lcom/oneplus/android/server/sis;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/tsu$zta;-><init>(Lcom/oneplus/android/server/tsu;)V

    return-void
.end method
