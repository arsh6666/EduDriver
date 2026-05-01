package mono.io.sentry;


public class FullyDisplayedReporter_FullyDisplayedReporterListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.sentry.FullyDisplayedReporter.FullyDisplayedReporterListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onFullyDrawn:()V:GetOnFullyDrawnHandler:Sentry.JavaSdk.FullyDisplayedReporter+IFullyDisplayedReporterListenerInvoker, Sentry.Bindings.Android\n" +
			"";
		mono.android.Runtime.register ("Sentry.JavaSdk.FullyDisplayedReporter+IFullyDisplayedReporterListenerImplementor, Sentry.Bindings.Android", FullyDisplayedReporter_FullyDisplayedReporterListenerImplementor.class, __md_methods);
	}

	public FullyDisplayedReporter_FullyDisplayedReporterListenerImplementor ()
	{
		super ();
		if (getClass () == FullyDisplayedReporter_FullyDisplayedReporterListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Sentry.JavaSdk.FullyDisplayedReporter+IFullyDisplayedReporterListenerImplementor, Sentry.Bindings.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public void onFullyDrawn ()
	{
		n_onFullyDrawn ();
	}

	private native void n_onFullyDrawn ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
