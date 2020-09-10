.class Lcom/android/server/policy/OpQuickPay$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpQuickPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field OG:Ljava/lang/String;

.field PG:Ljava/lang/String;

.field QG:Z

.field RG:Ljava/lang/String;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field className:Ljava/lang/String;

.field index:I

.field isDefault:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/OpQuickPay;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$zta;->this$0:Lcom/android/server/policy/OpQuickPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/OpQuickPay$zta;->QG:Z

    iput-boolean p1, p0, Lcom/android/server/policy/OpQuickPay$zta;->isDefault:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$zta;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
