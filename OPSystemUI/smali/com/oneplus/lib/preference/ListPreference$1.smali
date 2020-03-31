.class Lcom/oneplus/lib/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/preference/ListPreference;->onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference$1;->this$0:Lcom/oneplus/lib/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference$1;->this$0:Lcom/oneplus/lib/preference/ListPreference;

    invoke-static {v0, p2}, Lcom/oneplus/lib/preference/ListPreference;->access$002(Lcom/oneplus/lib/preference/ListPreference;I)I

    iget-object p0, p0, Lcom/oneplus/lib/preference/ListPreference$1;->this$0:Lcom/oneplus/lib/preference/ListPreference;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
