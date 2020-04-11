.class Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;
.super Ljava/lang/Object;
.source "MaterialPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->access$102(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->dismiss()V

    return-void
.end method
