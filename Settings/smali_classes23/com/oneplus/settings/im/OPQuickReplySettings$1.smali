.class Lcom/oneplus/settings/im/OPQuickReplySettings$1;
.super Landroid/os/Handler;
.source "OPQuickReplySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/im/OPQuickReplySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/im/OPQuickReplySettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    iget-object v0, v0, Lcom/oneplus/settings/im/OPQuickReplySettings;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v3}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01f8

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setLayoutResource(I)V

    const v3, 0x7f0d0203

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isIMQuickReplyApps(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    nop

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isQuickReplyAppSelected(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    new-instance v4, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;

    invoke-direct {v4, p0, v1}, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;-><init>(Lcom/oneplus/settings/im/OPQuickReplySettings$1;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v2, v4}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v4}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$600(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method
