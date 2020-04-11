.class final Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private final mClient:Lcom/android/internal/view/IInputMethodClient;

.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    return-void
.end method
