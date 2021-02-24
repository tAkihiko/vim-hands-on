using System.Collections.Generic;
using src;

namespace src
{
	public interface ISampleClassA
	{
		int same_value_a{ get; set; }

		private ICollection<ISampleClassC> iSampleClassC;

		private ISampleD iSampleD;

		private ISampleE iSampleE;

		private ISampleF iSampleF;

		///  
		void Calc(ISampleClassB b);

	}

}

