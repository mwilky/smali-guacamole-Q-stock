.class Lcom/android/server/inputmethod/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;->commitCodeOneByOne(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UD:Ljava/lang/CharSequence;

.field final synthetic VD:I

.field final synthetic this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/sis;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    iput-object p2, p0, Lcom/android/server/inputmethod/sis;->UD:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/server/inputmethod/sis;->VD:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/sis;->this$0:Lcom/android/server/inputmethod/OpVerificationCodeController;

    iget-object v1, p0, Lcom/android/server/inputmethod/sis;->UD:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/server/inputmethod/sis;->VD:I

    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$900(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V

    return-void
.end method
