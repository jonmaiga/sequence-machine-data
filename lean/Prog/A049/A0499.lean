import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A049900: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049900, there is no canonical definition to state claims against.
-/

/-! ## A049900.P10745696483666162671

`A049884(n+1)+A049904(n+1)-A049888(n+1)`
-/

namespace A049900.P10745696483666162671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049904 (n + 1) - A049888 (n + 1))

end

end A049900.P10745696483666162671

/-! ## A049900.P18100693382426056490

`A049884(n+1)+A049908(n+1)-A049892(n+1)`
-/

namespace A049900.P18100693382426056490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049908 (n + 1) - A049892 (n + 1))

end

end A049900.P18100693382426056490

/-! ## A049900.P11290047803388687685

`A049888(n+1)+A049904(n+1)-A049892(n+1)`
-/

namespace A049900.P11290047803388687685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049904 (n + 1) - A049892 (n + 1))

end

end A049900.P11290047803388687685

/-! ## A049900.P4664743052473494973

`A049904(n+1)+A049904(n+1)-A049908(n+1)`
-/

namespace A049900.P4664743052473494973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049908 (n + 1))

end

end A049900.P4664743052473494973

/-! ## A049900.P14837545405465833458

`(A049916(n+1)+A049884(n+1))/2`
-/

namespace A049900.P14837545405465833458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049916 (n + 1) + A049884 (n + 1) : ℚ) / 2

end

end A049900.P14837545405465833458

/-! ## A049900.P5246546236142800003

`2*A049904(n+1)-A049908(n+1)`
-/

namespace A049900.P5246546236142800003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049908 (n + 1)

end

end A049900.P5246546236142800003

/-!
# A049901: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049901, there is no canonical definition to state claims against.
-/

/-! ## A049901.P10351055787066136547

`A049885(n+1)+A049905(n+1)-A049889(n+1)`
-/

namespace A049901.P10351055787066136547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049905 (n + 1) - A049889 (n + 1))

end

end A049901.P10351055787066136547

/-! ## A049901.P1322481648984426396

`(A049917(n+1)+A049885(n+1))/2`
-/

namespace A049901.P1322481648984426396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049917 (n + 1) + A049885 (n + 1) : ℚ) / 2

end

end A049901.P1322481648984426396

/-! ## A049901.P12953364983035038790

`2*A049905(n+1)-A049909(n+1)`
-/

namespace A049901.P12953364983035038790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049909 (n + 1)

end

end A049901.P12953364983035038790

/-! ## A049901.P9824234620693150614

`A049885(n+1)+A049909(n+1)-A049893(n+1)`
-/

namespace A049901.P9824234620693150614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049909 (n + 1) - A049893 (n + 1))

end

end A049901.P9824234620693150614

/-! ## A049901.P13155964180314418147

`A049885(n+1)+A049913(n+1)-A049897(n+1)`
-/

namespace A049901.P13155964180314418147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049913 (n + 1) - A049897 (n + 1))

end

end A049901.P13155964180314418147

/-! ## A049901.P4584601406940496764

`A049889(n+1)+A049905(n+1)-A049893(n+1)`
-/

namespace A049901.P4584601406940496764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049905 (n + 1) - A049893 (n + 1))

end

end A049901.P4584601406940496764

/-! ## A049901.P8261438198252245683

`A049893(n+1)+A049921(n+1)-A049913(n+1)`
-/

namespace A049901.P8261438198252245683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049921 (n + 1) - A049913 (n + 1))

end

end A049901.P8261438198252245683

/-! ## A049901.P3141668218200963195

`A049897(n+1)+A049917(n+1)-A049913(n+1)`
-/

namespace A049901.P3141668218200963195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049917 (n + 1) - A049913 (n + 1))

end

end A049901.P3141668218200963195

/-!
# A049902: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049902, there is no canonical definition to state claims against.
-/

/-! ## A049902.P3658310835740970063

`A049886(n+1)+A049906(n+1)-A049890(n+1)`
-/

namespace A049902.P3658310835740970063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049906 (n + 1) - A049890 (n + 1))

end

end A049902.P3658310835740970063

/-! ## A049902.P6331953513948613811

`A049886(n+1)+A049910(n+1)-A049894(n+1)`
-/

namespace A049902.P6331953513948613811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049910 (n + 1) - A049894 (n + 1))

end

end A049902.P6331953513948613811

/-! ## A049902.P10855849157495860774

`A049890(n+1)+A049906(n+1)-A049894(n+1)`
-/

namespace A049902.P10855849157495860774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049906 (n + 1) - A049894 (n + 1))

end

end A049902.P10855849157495860774

/-! ## A049902.P5606208128940258092

`A049906(n+1)+A049906(n+1)-A049910(n+1)`
-/

namespace A049902.P5606208128940258092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049910 (n + 1))

end

end A049902.P5606208128940258092

/-! ## A049902.P15870509095803057545

`(A049918(n+1)+A049886(n+1))/2`
-/

namespace A049902.P15870509095803057545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049918 (n + 1) + A049886 (n + 1) : ℚ) / 2

end

end A049902.P15870509095803057545

/-! ## A049902.P6792378132314716556

`2*A049906(n+1)-A049910(n+1)`
-/

namespace A049902.P6792378132314716556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049910 (n + 1)

end

end A049902.P6792378132314716556

/-!
# A049903: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049903, there is no canonical definition to state claims against.
-/

/-! ## A049903.P4853430493567812303

`(A049919(n+1)+A049887(n+1))/2`
-/

namespace A049903.P4853430493567812303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049919 (n + 1) + A049887 (n + 1) : ℚ) / 2

end

end A049903.P4853430493567812303

/-! ## A049903.P7445265841789517130

`A049887(n+1)+A049907(n+1)-A049891(n+1)`
-/

namespace A049903.P7445265841789517130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049907 (n + 1) - A049891 (n + 1))

end

end A049903.P7445265841789517130

/-! ## A049903.P17017054424115907615

`A049887(n+1)+A049911(n+1)-A049895(n+1)`
-/

namespace A049903.P17017054424115907615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049911 (n + 1) - A049895 (n + 1))

end

end A049903.P17017054424115907615

/-! ## A049903.P16887546005511390869

`A049907(n+1)+A049907(n+1)-A049911(n+1)`
-/

namespace A049903.P16887546005511390869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049911 (n + 1))

end

end A049903.P16887546005511390869

/-! ## A049903.P8710017661869442298

`round(2*A049923(n+1)/3)`
-/

namespace A049903.P8710017661869442298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A049923 (n + 1) : ℚ) / 3)

end

end A049903.P8710017661869442298

/-! ## A049903.P1543306842624711065

`2*A049907(n+1)-A049911(n+1)`
-/

namespace A049903.P1543306842624711065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049911 (n + 1)

end

end A049903.P1543306842624711065

/-!
# A049904: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049904, there is no canonical definition to state claims against.
-/

/-! ## A049904.P11193070913942454878

`A049884(n+1)+A049908(n+1)-A049888(n+1)`
-/

namespace A049904.P11193070913942454878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049908 (n + 1) - A049888 (n + 1))

end

end A049904.P11193070913942454878

/-! ## A049904.P14852646187072762436

`A049908(n+1)+A049908(n+1)-A049912(n+1)`
-/

namespace A049904.P14852646187072762436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049908 (n + 1) + (A049908 (n + 1) - A049912 (n + 1))

end

end A049904.P14852646187072762436

/-! ## A049904.P15696045549086871632

`(A049908(n+1)+A049900(n+1))/2`
-/

namespace A049904.P15696045549086871632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049908 (n + 1) + A049900 (n + 1) : ℚ) / 2

end

end A049904.P15696045549086871632

/-! ## A049904.P6205264918249023267

`(A049916(n+1)+A049892(n+1))/2`
-/

namespace A049904.P6205264918249023267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049916 (n + 1) + A049892 (n + 1) : ℚ) / 2

end

end A049904.P6205264918249023267

/-! ## A049904.P8804790504370727074

`(A049920(n+1)+A049888(n+1))/2`
-/

namespace A049904.P8804790504370727074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049920 (n + 1) + A049888 (n + 1) : ℚ) / 2

end

end A049904.P8804790504370727074

/-! ## A049904.P12163744121966875322

`(A049924(n+1)+A049884(n+1))/2`
-/

namespace A049904.P12163744121966875322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049924 (n + 1) + A049884 (n + 1) : ℚ) / 2

end

end A049904.P12163744121966875322

/-! ## A049904.P6705380891379450835

`2*A049908(n+1)-A049912(n+1)`
-/

namespace A049904.P6705380891379450835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049912 (n + 1)

end

end A049904.P6705380891379450835

/-!
# A049905: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 3, where m = 2^(p+1) + 2 - n and p is the unique number such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 2.

The programs for A049905, there is no canonical definition to state claims against.
-/

/-! ## A049905.P6057234359107493994

`(A049909(n+1)+A049901(n+1))/2`
-/

namespace A049905.P6057234359107493994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049909 (n + 1) + A049901 (n + 1) : ℚ) / 2

end

end A049905.P6057234359107493994

/-! ## A049905.P14748796399175624185

`(A049917(n+1)+A049893(n+1))/2`
-/

namespace A049905.P14748796399175624185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049917 (n + 1) + A049893 (n + 1) : ℚ) / 2

end

end A049905.P14748796399175624185

/-! ## A049905.P4928851948259959490

`(A049921(n+1)+A049889(n+1))/2`
-/

namespace A049905.P4928851948259959490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049921 (n + 1) + A049889 (n + 1) : ℚ) / 2

end

end A049905.P4928851948259959490

/-! ## A049905.P1338512340945657438

`(A049925(n+1)+A049885(n+1))/2`
-/

namespace A049905.P1338512340945657438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049925 (n + 1) + A049885 (n + 1) : ℚ) / 2

end

end A049905.P1338512340945657438

/-! ## A049905.P2749776952324802636

`A049885(n+1)+A049909(n+1)-A049889(n+1)`
-/

namespace A049905.P2749776952324802636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049909 (n + 1) - A049889 (n + 1))

end

end A049905.P2749776952324802636

/-! ## A049905.P4987725830105697686

`A049885(n+1)+A049913(n+1)-A049893(n+1)`
-/

namespace A049905.P4987725830105697686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049913 (n + 1) - A049893 (n + 1))

end

end A049905.P4987725830105697686

/-! ## A049905.P13347136053374393007

`A049885(n+1)+A049921(n+1)-A049901(n+1)`
-/

namespace A049905.P13347136053374393007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049921 (n + 1) - A049901 (n + 1))

end

end A049905.P13347136053374393007

/-! ## A049905.P17187592703800848785

`A049893(n+1)+A049909(n+1)-A049897(n+1)`
-/

namespace A049905.P17187592703800848785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049909 (n + 1) - A049897 (n + 1))

end

end A049905.P17187592703800848785

/-! ## A049905.P16048907125552201700

`A049897(n+1)+A049901(n+1)-A049893(n+1)`
-/

namespace A049905.P16048907125552201700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049901 (n + 1) - A049893 (n + 1))

end

end A049905.P16048907125552201700

/-! ## A049905.P7565586595730331928

`A049885(n+1)+A049929(n+1)-A049909(n+1)`
-/

namespace A049905.P7565586595730331928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049929 (n + 1) - A049909 (n + 1))

end

end A049905.P7565586595730331928

/-! ## A049905.P3951293722674596755

`A049897(n+1)+A049921(n+1)-A049913(n+1)`
-/

namespace A049905.P3951293722674596755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049921 (n + 1) - A049913 (n + 1))

end

end A049905.P3951293722674596755

/-! ## A049905.P7113683310984568699

`A049901(n+1)+A049921(n+1)-A049917(n+1)`
-/

namespace A049905.P7113683310984568699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049921 (n + 1) - A049917 (n + 1))

end

end A049905.P7113683310984568699

/-! ## A049905.P7287924863763976427

`A049909(n+1)+A049909(n+1)-A049913(n+1)`
-/

namespace A049905.P7287924863763976427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049913 (n + 1))

end

end A049905.P7287924863763976427

/-! ## A049905.P1598658118166129396

`2*A049909(n+1)-A049913(n+1)`
-/

namespace A049905.P1598658118166129396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049913 (n + 1)

end

end A049905.P1598658118166129396

/-!
# A049906: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049906, there is no canonical definition to state claims against.
-/

/-! ## A049906.P15231289207518432951

`A049886(n+1)+A049910(n+1)-A049890(n+1)`
-/

namespace A049906.P15231289207518432951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049910 (n + 1) - A049890 (n + 1))

end

end A049906.P15231289207518432951

/-! ## A049906.P9227330801491404608

`A049890(n+1)+A049902(n+1)-A049886(n+1)`
-/

namespace A049906.P9227330801491404608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049902 (n + 1) - A049886 (n + 1))

end

end A049906.P9227330801491404608

/-! ## A049906.P10999800545367871721

`A049890(n+1)+A049910(n+1)-A049894(n+1)`
-/

namespace A049906.P10999800545367871721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049910 (n + 1) - A049894 (n + 1))

end

end A049906.P10999800545367871721

/-! ## A049906.P16290485629459635309

`(A049910(n+1)+A049902(n+1))/2`
-/

namespace A049906.P16290485629459635309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049910 (n + 1) + A049902 (n + 1) : ℚ) / 2

end

end A049906.P16290485629459635309

/-! ## A049906.P6557974569041845454

`(A049918(n+1)+A049894(n+1))/2`
-/

namespace A049906.P6557974569041845454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049918 (n + 1) + A049894 (n + 1) : ℚ) / 2

end

end A049906.P6557974569041845454

/-! ## A049906.P13467539648135860395

`(A049922(n+1)+A049890(n+1))/2`
-/

namespace A049906.P13467539648135860395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049922 (n + 1) + A049890 (n + 1) : ℚ) / 2

end

end A049906.P13467539648135860395

/-! ## A049906.P18193801351357622274

`(A049926(n+1)+A049886(n+1))/2`
-/

namespace A049906.P18193801351357622274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049926 (n + 1) + A049886 (n + 1) : ℚ) / 2

end

end A049906.P18193801351357622274

/-!
# A049907: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049907, there is no canonical definition to state claims against.
-/

/-! ## A049907.P17620090629580591012

`A049887(n+1)+A049911(n+1)-A049891(n+1)`
-/

namespace A049907.P17620090629580591012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049911 (n + 1) - A049891 (n + 1))

end

end A049907.P17620090629580591012

/-! ## A049907.P17493307630041140271

`A049891(n+1)+A049903(n+1)-A049887(n+1)`
-/

namespace A049907.P17493307630041140271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049903 (n + 1) - A049887 (n + 1))

end

end A049907.P17493307630041140271

/-! ## A049907.P9345091236903232331

`A049891(n+1)+A049911(n+1)-A049895(n+1)`
-/

namespace A049907.P9345091236903232331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049911 (n + 1) - A049895 (n + 1))

end

end A049907.P9345091236903232331

/-! ## A049907.P8642413345332176652

`(A049911(n+1)+A049903(n+1))/2`
-/

namespace A049907.P8642413345332176652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049911 (n + 1) + A049903 (n + 1) : ℚ) / 2

end

end A049907.P8642413345332176652

/-! ## A049907.P4159687448459370527

`(A049919(n+1)+A049895(n+1))/2`
-/

namespace A049907.P4159687448459370527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049919 (n + 1) + A049895 (n + 1) : ℚ) / 2

end

end A049907.P4159687448459370527

/-! ## A049907.P7794242788422975973

`(A049923(n+1)+A049891(n+1))/2`
-/

namespace A049907.P7794242788422975973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049923 (n + 1) + A049891 (n + 1) : ℚ) / 2

end

end A049907.P7794242788422975973

/-! ## A049907.P579191861635677795

`(A049927(n+1)+A049887(n+1))/2`
-/

namespace A049907.P579191861635677795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049927 (n + 1) + A049887 (n + 1) : ℚ) / 2

end

end A049907.P579191861635677795

/-!
# A049908: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049908, there is no canonical definition to state claims against.
-/

/-! ## A049908.P1841350758492012859

`A049888(n+1)+A049904(n+1)-A049884(n+1)`
-/

namespace A049908.P1841350758492012859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049904 (n + 1) - A049884 (n + 1))

end

end A049908.P1841350758492012859

/-! ## A049908.P15413215427577958128

`A049892(n+1)+A049904(n+1)-A049888(n+1)`
-/

namespace A049908.P15413215427577958128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049892 (n + 1) + (A049904 (n + 1) - A049888 (n + 1))

end

end A049908.P15413215427577958128

/-! ## A049908.P10883930991750228241

`A049904(n+1)+A049904(n+1)-A049900(n+1)`
-/

namespace A049908.P10883930991750228241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049900 (n + 1))

end

end A049908.P10883930991750228241

/-! ## A049908.P16230210419882336099

`2*A049904(n+1)-A049900(n+1)`
-/

namespace A049908.P16230210419882336099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049900 (n + 1)

end

end A049908.P16230210419882336099

/-! ## A049908.P6958682389026695203

`(A049912(n+1)+A049904(n+1))/2`
-/

namespace A049908.P6958682389026695203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049912 (n + 1) + A049904 (n + 1) : ℚ) / 2

end

end A049908.P6958682389026695203

/-! ## A049908.P3298205545224883893

`(A049920(n+1)+A049896(n+1))/2`
-/

namespace A049908.P3298205545224883893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049920 (n + 1) + A049896 (n + 1) : ℚ) / 2

end

end A049908.P3298205545224883893

/-! ## A049908.P11544619112128257791

`(A049924(n+1)+A049892(n+1))/2`
-/

namespace A049908.P11544619112128257791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049924 (n + 1) + A049892 (n + 1) : ℚ) / 2

end

end A049908.P11544619112128257791

/-! ## A049908.P12514563224123615768

`(A049928(n+1)+A049888(n+1))/2`
-/

namespace A049908.P12514563224123615768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049928 (n + 1) + A049888 (n + 1) : ℚ) / 2

end

end A049908.P12514563224123615768

/-!
# A049909: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the smallest integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049909, there is no canonical definition to state claims against.
-/

/-! ## A049909.P7896331187769631533

`2*A049905(n+1)-A049901(n+1)`
-/

namespace A049909.P7896331187769631533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049901 (n + 1)

end

end A049909.P7896331187769631533

/-! ## A049909.P16353589514114078931

`A049889(n+1)+A049905(n+1)-A049885(n+1)`
-/

namespace A049909.P16353589514114078931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049905 (n + 1) - A049885 (n + 1))

end

end A049909.P16353589514114078931

/-! ## A049909.P13299868035032779768

`A049893(n+1)+A049901(n+1)-A049885(n+1)`
-/

namespace A049909.P13299868035032779768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049901 (n + 1) - A049885 (n + 1))

end

end A049909.P13299868035032779768

/-! ## A049909.P9111921656308563005

`A049893(n+1)+A049905(n+1)-A049889(n+1)`
-/

namespace A049909.P9111921656308563005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049905 (n + 1) - A049889 (n + 1))

end

end A049909.P9111921656308563005

/-! ## A049909.P17758973552027743116

`A049893(n+1)+A049913(n+1)-A049897(n+1)`
-/

namespace A049909.P17758973552027743116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049913 (n + 1) - A049897 (n + 1))

end

end A049909.P17758973552027743116

/-! ## A049909.P9351567980990866704

`A049893(n+1)+A049917(n+1)-A049901(n+1)`
-/

namespace A049909.P9351567980990866704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049917 (n + 1) - A049901 (n + 1))

end

end A049909.P9351567980990866704

/-! ## A049909.P18089514302088013953

`A049913(n+1)+A049917(n+1)-A049921(n+1)`
-/

namespace A049909.P18089514302088013953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049913 (n + 1) + (A049917 (n + 1) - A049921 (n + 1))

end

end A049909.P18089514302088013953

/-! ## A049909.P6856923446837332509

`(A049913(n+1)+A049905(n+1))/2`
-/

namespace A049909.P6856923446837332509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049913 (n + 1) + A049905 (n + 1) : ℚ) / 2

end

end A049909.P6856923446837332509

/-! ## A049909.P4387844034594466082

`(A049921(n+1)+A049897(n+1))/2`
-/

namespace A049909.P4387844034594466082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049921 (n + 1) + A049897 (n + 1) : ℚ) / 2

end

end A049909.P4387844034594466082

/-! ## A049909.P11329727643219972423

`(A049925(n+1)+A049893(n+1))/2`
-/

namespace A049909.P11329727643219972423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049925 (n + 1) + A049893 (n + 1) : ℚ) / 2

end

end A049909.P11329727643219972423

/-! ## A049909.P17006843083259906940

`(A049929(n+1)+A049889(n+1))/2`
-/

namespace A049909.P17006843083259906940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049929 (n + 1) + A049889 (n + 1) : ℚ) / 2

end

end A049909.P17006843083259906940

/-!
# A049910: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049910, there is no canonical definition to state claims against.
-/

/-! ## A049910.P4756443574898627205

`A049890(n+1)+A049906(n+1)-A049886(n+1)`
-/

namespace A049910.P4756443574898627205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049906 (n + 1) - A049886 (n + 1))

end

end A049910.P4756443574898627205

/-! ## A049910.P1362800969880723316

`A049894(n+1)+A049902(n+1)-A049886(n+1)`
-/

namespace A049910.P1362800969880723316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049902 (n + 1) - A049886 (n + 1))

end

end A049910.P1362800969880723316

/-! ## A049910.P12046078674191103928

`A049894(n+1)+A049906(n+1)-A049890(n+1)`
-/

namespace A049910.P12046078674191103928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049906 (n + 1) - A049890 (n + 1))

end

end A049910.P12046078674191103928

/-! ## A049910.P4867337558821951726

`A049890(n+1)+A049922(n+1)-A049902(n+1)`
-/

namespace A049910.P4867337558821951726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049922 (n + 1) - A049902 (n + 1))

end

end A049910.P4867337558821951726

/-! ## A049910.P9517805973898303163

`A049906(n+1)+A049906(n+1)-A049902(n+1)`
-/

namespace A049910.P9517805973898303163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049902 (n + 1))

end

end A049910.P9517805973898303163

/-! ## A049910.P15596618766092422485

`2*A049906(n+1)-A049902(n+1)`
-/

namespace A049910.P15596618766092422485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049902 (n + 1)

end

end A049910.P15596618766092422485

/-!
# A049911: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2 and a(3) = 3.

The programs for A049911, there is no canonical definition to state claims against.
-/

/-! ## A049911.P12072416414469070190

`A020639(A004278(n+1))*A049887(n+1)`
-/

namespace A049911.P12072416414469070190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004278 (n + 1)).toNat * A049887 (n + 1)

end

end A049911.P12072416414469070190

/-! ## A049911.P15038397007440382807

`A020639(A055721(n+1))*A049887(n+1)`
-/

namespace A049911.P15038397007440382807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055721 (n + 1)).toNat * A049887 (n + 1)

end

end A049911.P15038397007440382807

/-! ## A049911.P6738651176514516739

`A049891(n+1)+A049907(n+1)-A049887(n+1)`
-/

namespace A049911.P6738651176514516739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049907 (n + 1) - A049887 (n + 1))

end

end A049911.P6738651176514516739

/-! ## A049911.P16781443536829949546

`A049907(n+1)+A049907(n+1)-A049903(n+1)`
-/

namespace A049911.P16781443536829949546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049903 (n + 1))

end

end A049911.P16781443536829949546

/-! ## A049911.P8941505912297249927

`2*A049907(n+1)-A049903(n+1)`
-/

namespace A049911.P8941505912297249927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049903 (n + 1)

end

end A049911.P8941505912297249927

/-! ## A049911.P15810282094287378694

`(A049927(n+1)+A049895(n+1))/2`
-/

namespace A049911.P15810282094287378694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049927 (n + 1) + A049895 (n + 1) : ℚ) / 2

end

end A049911.P15810282094287378694

/-! ## A049911.P9457958620387893065

`A049887(n+1)/A049935(n+1)*A049959(n+1)`
-/

namespace A049911.P9457958620387893065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049887 (n + 1) : ℚ) / (A049935 (n + 1) : ℚ) * (A049959 (n + 1) : ℚ)

end

end A049911.P9457958620387893065

/-! ## A049911.P7609765699392279321

`A020639(A002093(n+1))*A049887(n+1)`
-/

namespace A049911.P7609765699392279321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002093 (n + 1)).toNat * A049887 (n + 1)

end

end A049911.P7609765699392279321

/-! ## A049911.P10772769622736807355

`A020639(A175381(n+1))*A049887(n+1)`
-/

namespace A049911.P10772769622736807355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175381 (n + 1)).toNat * A049887 (n + 1)

end

end A049911.P10772769622736807355

/-!
# A049912: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A049912, there is no canonical definition to state claims against.
-/

/-! ## A049912.P17428051094228891019

`A049888(n+1)+A049908(n+1)-A049884(n+1)`
-/

namespace A049912.P17428051094228891019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049908 (n + 1) - A049884 (n + 1))

end

end A049912.P17428051094228891019

/-! ## A049912.P8348231747881309268

`A049892(n+1)+A049904(n+1)-A049884(n+1)`
-/

namespace A049912.P8348231747881309268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049892 (n + 1) + (A049904 (n + 1) - A049884 (n + 1))

end

end A049912.P8348231747881309268

/-! ## A049912.P10241344349063685992

`A049896(n+1)+A049900(n+1)-A049884(n+1)`
-/

namespace A049912.P10241344349063685992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049896 (n + 1) + (A049900 (n + 1) - A049884 (n + 1))

end

end A049912.P10241344349063685992

/-! ## A049912.P3525206441730612854

`A049908(n+1)+A049908(n+1)-A049904(n+1)`
-/

namespace A049912.P3525206441730612854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049908 (n + 1) + (A049908 (n + 1) - A049904 (n + 1))

end

end A049912.P3525206441730612854

/-! ## A049912.P16442784214863758770

`2*A049908(n+1)-A049904(n+1)`
-/

namespace A049912.P16442784214863758770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049904 (n + 1)

end

end A049912.P16442784214863758770

/-! ## A049912.P13832748928273715703

`(A049928(n+1)+A049896(n+1))/2`
-/

namespace A049912.P13832748928273715703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049928 (n + 1) + A049896 (n + 1) : ℚ) / 2

end

end A049912.P13832748928273715703

/-!
# A049913: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A049913, there is no canonical definition to state claims against.
-/

/-! ## A049913.P17995991990781232943

`A049889(n+1)+A049909(n+1)-A049885(n+1)`
-/

namespace A049913.P17995991990781232943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049909 (n + 1) - A049885 (n + 1))

end

end A049913.P17995991990781232943

/-! ## A049913.P2743849975790949537

`A049893(n+1)+A049905(n+1)-A049885(n+1)`
-/

namespace A049913.P2743849975790949537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049905 (n + 1) - A049885 (n + 1))

end

end A049913.P2743849975790949537

/-! ## A049913.P12419873499297111659

`A049897(n+1)+A049901(n+1)-A049885(n+1)`
-/

namespace A049913.P12419873499297111659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049901 (n + 1) - A049885 (n + 1))

end

end A049913.P12419873499297111659

/-! ## A049913.P7698000419709289549

`A049897(n+1)+A049909(n+1)-A049893(n+1)`
-/

namespace A049913.P7698000419709289549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049909 (n + 1) - A049893 (n + 1))

end

end A049913.P7698000419709289549

/-! ## A049913.P4868720375513174743

`A049885(n+1)+A049929(n+1)-A049901(n+1)`
-/

namespace A049913.P4868720375513174743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049929 (n + 1) - A049901 (n + 1))

end

end A049913.P4868720375513174743

/-! ## A049913.P4442066092616604102

`A049893(n+1)+A049921(n+1)-A049901(n+1)`
-/

namespace A049913.P4442066092616604102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049921 (n + 1) - A049901 (n + 1))

end

end A049913.P4442066092616604102

/-! ## A049913.P14814649828382124289

`A049897(n+1)+A049917(n+1)-A049901(n+1)`
-/

namespace A049913.P14814649828382124289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049917 (n + 1) - A049901 (n + 1))

end

end A049913.P14814649828382124289

/-! ## A049913.P15771408114940412526

`A049893(n+1)+A049929(n+1)-A049909(n+1)`
-/

namespace A049913.P15771408114940412526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049929 (n + 1) - A049909 (n + 1))

end

end A049913.P15771408114940412526

/-! ## A049913.P12603668313087758967

`A049909(n+1)+A049909(n+1)-A049905(n+1)`
-/

namespace A049913.P12603668313087758967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049905 (n + 1))

end

end A049913.P12603668313087758967

/-! ## A049913.P17028906845349132547

`2*A049909(n+1)-A049905(n+1)`
-/

namespace A049913.P17028906845349132547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049905 (n + 1)

end

end A049913.P17028906845349132547

/-! ## A049913.P16071766443145515921

`(A049929(n+1)+A049897(n+1))/2`
-/

namespace A049913.P16071766443145515921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049929 (n + 1) + A049897 (n + 1) : ℚ) / 2

end

end A049913.P16071766443145515921

/-!
# A049914: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2 and a(3) = 4.

The programs for A049914, there is no canonical definition to state claims against.
-/

/-! ## A049914.P17268700951863906631

`2*A049910(n+1)-A049906(n+1)`
-/

namespace A049914.P17268700951863906631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049910 (n + 1) - A049906 (n + 1)

end

end A049914.P17268700951863906631

/-! ## A049914.P9516864327685187531

`A049890(n+1)+A049910(n+1)-A049886(n+1)`
-/

namespace A049914.P9516864327685187531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049910 (n + 1) - A049886 (n + 1))

end

end A049914.P9516864327685187531

/-! ## A049914.P13700052930475122957

`A049894(n+1)+A049906(n+1)-A049886(n+1)`
-/

namespace A049914.P13700052930475122957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049906 (n + 1) - A049886 (n + 1))

end

end A049914.P13700052930475122957

/-! ## A049914.P12941344167173952986

`A049894(n+1)+A049910(n+1)-A049890(n+1)`
-/

namespace A049914.P12941344167173952986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049910 (n + 1) - A049890 (n + 1))

end

end A049914.P12941344167173952986

/-! ## A049914.P16213342203683193699

`A049898(n+1)+A049902(n+1)-A049886(n+1)`
-/

namespace A049914.P16213342203683193699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049898 (n + 1) + (A049902 (n + 1) - A049886 (n + 1))

end

end A049914.P16213342203683193699

/-!
# A049915: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2 and a(3) = 4.

The programs for A049915, there is no canonical definition to state claims against.
-/

/-! ## A049915.P1715822783408221742

`A049891(n+1)+A049911(n+1)-A049887(n+1)`
-/

namespace A049915.P1715822783408221742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049911 (n + 1) - A049887 (n + 1))

end

end A049915.P1715822783408221742

/-! ## A049915.P11449929429918839846

`A049895(n+1)+A049907(n+1)-A049887(n+1)`
-/

namespace A049915.P11449929429918839846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049907 (n + 1) - A049887 (n + 1))

end

end A049915.P11449929429918839846

/-! ## A049915.P8444613638268820451

`A049895(n+1)+A049911(n+1)-A049891(n+1)`
-/

namespace A049915.P8444613638268820451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049911 (n + 1) - A049891 (n + 1))

end

end A049915.P8444613638268820451

/-! ## A049915.P1833744796058278916

`A049899(n+1)+A049903(n+1)-A049887(n+1)`
-/

namespace A049915.P1833744796058278916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049899 (n + 1) + (A049903 (n + 1) - A049887 (n + 1))

end

end A049915.P1833744796058278916

/-! ## A049915.P5842606398627170849

`A049911(n+1)+A049911(n+1)-A049907(n+1)`
-/

namespace A049915.P5842606398627170849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049907 (n + 1))

end

end A049915.P5842606398627170849

/-! ## A049915.P1125264485898789642

`2*A049911(n+1)-A049907(n+1)`
-/

namespace A049915.P1125264485898789642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049907 (n + 1)

end

end A049915.P1125264485898789642

/-!
# A049916: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049916, there is no canonical definition to state claims against.
-/

/-! ## A049916.P18437169455505631201

`A049884(n+1)+A049920(n+1)-A049888(n+1)`
-/

namespace A049916.P18437169455505631201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049920 (n + 1) - A049888 (n + 1))

end

end A049916.P18437169455505631201

/-! ## A049916.P17316754468266032069

`A049900(n+1)+A049900(n+1)-A049884(n+1)`
-/

namespace A049916.P17316754468266032069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049900 (n + 1) + (A049900 (n + 1) - A049884 (n + 1))

end

end A049916.P17316754468266032069

/-! ## A049916.P2079690099339903900

`A049900(n+1)+A049904(n+1)-A049888(n+1)`
-/

namespace A049916.P2079690099339903900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049900 (n + 1) + (A049904 (n + 1) - A049888 (n + 1))

end

end A049916.P2079690099339903900

/-! ## A049916.P1470044192026589026

`A049904(n+1)+A049904(n+1)-A049892(n+1)`
-/

namespace A049916.P1470044192026589026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049892 (n + 1))

end

end A049916.P1470044192026589026

/-! ## A049916.P17403409930257721870

`2*A049900(n+1)-A049884(n+1)`
-/

namespace A049916.P17403409930257721870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049900 (n + 1) - A049884 (n + 1)

end

end A049916.P17403409930257721870

/-! ## A049916.P9171317763432455961

`2*A049904(n+1)-A049892(n+1)`
-/

namespace A049916.P9171317763432455961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049892 (n + 1)

end

end A049916.P9171317763432455961

/-! ## A049916.P5598800950413160890

`2*A049920(n+1)-A049924(n+1)`
-/

namespace A049916.P5598800950413160890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049920 (n + 1) - A049924 (n + 1)

end

end A049916.P5598800950413160890

/-!
# A049917: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049917, there is no canonical definition to state claims against.
-/

/-! ## A049917.P845868065249752776

`A049901(n+1)+A049901(n+1)-A049885(n+1)`
-/

namespace A049917.P845868065249752776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049901 (n + 1) - A049885 (n + 1))

end

end A049917.P845868065249752776

/-! ## A049917.P4620681293719096849

`A049901(n+1)+A049905(n+1)-A049889(n+1)`
-/

namespace A049917.P4620681293719096849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049905 (n + 1) - A049889 (n + 1))

end

end A049917.P4620681293719096849

/-! ## A049917.P5498646928951619552

`2*A049901(n+1)-A049885(n+1)`
-/

namespace A049917.P5498646928951619552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049901 (n + 1) - A049885 (n + 1)

end

end A049917.P5498646928951619552

/-! ## A049917.P15860473739723775720

`2*A049905(n+1)-A049893(n+1)`
-/

namespace A049917.P15860473739723775720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049893 (n + 1)

end

end A049917.P15860473739723775720

/-! ## A049917.P16858718477477619302

`A049885(n+1)+A049921(n+1)-A049889(n+1)`
-/

namespace A049917.P16858718477477619302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049921 (n + 1) - A049889 (n + 1))

end

end A049917.P16858718477477619302

/-! ## A049917.P6590132105662986598

`A049885(n+1)+A049929(n+1)-A049897(n+1)`
-/

namespace A049917.P6590132105662986598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049929 (n + 1) - A049897 (n + 1))

end

end A049917.P6590132105662986598

/-! ## A049917.P15298555409455842374

`A049893(n+1)+A049921(n+1)-A049897(n+1)`
-/

namespace A049917.P15298555409455842374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049921 (n + 1) - A049897 (n + 1))

end

end A049917.P15298555409455842374

/-! ## A049917.P4173476003214224738

`A049901(n+1)+A049909(n+1)-A049893(n+1)`
-/

namespace A049917.P4173476003214224738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049909 (n + 1) - A049893 (n + 1))

end

end A049917.P4173476003214224738

/-! ## A049917.P1804319205028458524

`A049901(n+1)+A049913(n+1)-A049897(n+1)`
-/

namespace A049917.P1804319205028458524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049913 (n + 1) - A049897 (n + 1))

end

end A049917.P1804319205028458524

/-! ## A049917.P11343022533255736757

`A049921(n+1)+A049921(n+1)-A049925(n+1)`
-/

namespace A049917.P11343022533255736757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049921 (n + 1) + (A049921 (n + 1) - A049925 (n + 1))

end

end A049917.P11343022533255736757

/-! ## A049917.P12743307157766096869

`2*A049921(n+1)-A049925(n+1)`
-/

namespace A049917.P12743307157766096869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049921 (n + 1) - A049925 (n + 1)

end

end A049917.P12743307157766096869

/-!
# A049918: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049918, there is no canonical definition to state claims against.
-/

/-! ## A049918.P15290542240906515186

`A049886(n+1)+A049922(n+1)-A049890(n+1)`
-/

namespace A049918.P15290542240906515186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049922 (n + 1) - A049890 (n + 1))

end

end A049918.P15290542240906515186

/-! ## A049918.P6258992201225752263

`A049902(n+1)+A049902(n+1)-A049886(n+1)`
-/

namespace A049918.P6258992201225752263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049902 (n + 1) - A049886 (n + 1))

end

end A049918.P6258992201225752263

/-! ## A049918.P17936812157524246823

`A049890(n+1)+A049922(n+1)-A049894(n+1)`
-/

namespace A049918.P17936812157524246823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049922 (n + 1) - A049894 (n + 1))

end

end A049918.P17936812157524246823

/-! ## A049918.P10609216316301509124

`A049902(n+1)+A049906(n+1)-A049890(n+1)`
-/

namespace A049918.P10609216316301509124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049906 (n + 1) - A049890 (n + 1))

end

end A049918.P10609216316301509124

/-! ## A049918.P17685278249664858835

`A049902(n+1)+A049910(n+1)-A049894(n+1)`
-/

namespace A049918.P17685278249664858835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049910 (n + 1) - A049894 (n + 1))

end

end A049918.P17685278249664858835

/-! ## A049918.P15514820048568776291

`A049906(n+1)+A049906(n+1)-A049894(n+1)`
-/

namespace A049918.P15514820048568776291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049894 (n + 1))

end

end A049918.P15514820048568776291

/-! ## A049918.P10443102966622223234

`2*A049902(n+1)-A049886(n+1)`
-/

namespace A049918.P10443102966622223234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049902 (n + 1) - A049886 (n + 1)

end

end A049918.P10443102966622223234

/-! ## A049918.P10273481830753746256

`2*A049906(n+1)-A049894(n+1)`
-/

namespace A049918.P10273481830753746256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049894 (n + 1)

end

end A049918.P10273481830753746256

/-! ## A049918.P8794767093149841723

`2*A049922(n+1)-A049926(n+1)`
-/

namespace A049918.P8794767093149841723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049922 (n + 1) - A049926 (n + 1)

end

end A049918.P8794767093149841723

/-!
# A049919: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 3, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 3.

The programs for A049919, there is no canonical definition to state claims against.
-/

/-! ## A049919.P16528721648645293723

`A049903(n+1)+A049903(n+1)-A049887(n+1)`
-/

namespace A049919.P16528721648645293723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049903 (n + 1) + (A049903 (n + 1) - A049887 (n + 1))

end

end A049919.P16528721648645293723

/-! ## A049919.P11841362735575771394

`2*A049903(n+1)-A049887(n+1)`
-/

namespace A049919.P11841362735575771394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049903 (n + 1) - A049887 (n + 1)

end

end A049919.P11841362735575771394

/-! ## A049919.P5467592698070780027

`A049887(n+1)+A049923(n+1)-A049891(n+1)`
-/

namespace A049919.P5467592698070780027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049923 (n + 1) - A049891 (n + 1))

end

end A049919.P5467592698070780027

/-! ## A049919.P16403248467241035468

`A049903(n+1)+A049907(n+1)-A049891(n+1)`
-/

namespace A049919.P16403248467241035468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049903 (n + 1) + (A049907 (n + 1) - A049891 (n + 1))

end

end A049919.P16403248467241035468

/-! ## A049919.P14013488329611939514

`A049907(n+1)+A049907(n+1)-A049895(n+1)`
-/

namespace A049919.P14013488329611939514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049895 (n + 1))

end

end A049919.P14013488329611939514

/-! ## A049919.P9323496205715154715

`A049923(n+1)+A049923(n+1)-A049927(n+1)`
-/

namespace A049919.P9323496205715154715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049923 (n + 1) + (A049923 (n + 1) - A049927 (n + 1))

end

end A049919.P9323496205715154715

/-! ## A049919.P14846642854243307912

`2*A049907(n+1)-A049895(n+1)`
-/

namespace A049919.P14846642854243307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049895 (n + 1)

end

end A049919.P14846642854243307912

/-! ## A049919.P10689748108254341306

`2*A049923(n+1)-A049927(n+1)`
-/

namespace A049919.P10689748108254341306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049923 (n + 1) - A049927 (n + 1)

end

end A049919.P10689748108254341306

/-!
# A049920: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049920, there is no canonical definition to state claims against.
-/

/-! ## A049920.P16699847450424407410

`A049888(n+1)+A049916(n+1)-A049884(n+1)`
-/

namespace A049920.P16699847450424407410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049916 (n + 1) - A049884 (n + 1))

end

end A049920.P16699847450424407410

/-! ## A049920.P10904349606146168074

`A049904(n+1)+A049904(n+1)-A049888(n+1)`
-/

namespace A049920.P10904349606146168074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049888 (n + 1))

end

end A049920.P10904349606146168074

/-! ## A049920.P17873124675733453786

`A049908(n+1)+A049908(n+1)-A049896(n+1)`
-/

namespace A049920.P17873124675733453786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049908 (n + 1) + (A049908 (n + 1) - A049896 (n + 1))

end

end A049920.P17873124675733453786

/-! ## A049920.P273958264317099187

`2*A049904(n+1)-A049888(n+1)`
-/

namespace A049920.P273958264317099187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049888 (n + 1)

end

end A049920.P273958264317099187

/-! ## A049920.P2556297467256338324

`2*A049908(n+1)-A049896(n+1)`
-/

namespace A049920.P2556297467256338324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049896 (n + 1)

end

end A049920.P2556297467256338324

/-! ## A049920.P6770157313117341108

`(A049924(n+1)+A049916(n+1))/2`
-/

namespace A049920.P6770157313117341108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049924 (n + 1) + A049916 (n + 1) : ℚ) / 2

end

end A049920.P6770157313117341108

/-! ## A049920.P5280223373910724875

`A049884(n+1)+A049924(n+1)-A049888(n+1)`
-/

namespace A049920.P5280223373910724875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049924 (n + 1) - A049888 (n + 1))

end

end A049920.P5280223373910724875

/-! ## A049920.P8977518167931410120

`A049924(n+1)+A049924(n+1)-A049928(n+1)`
-/

namespace A049920.P8977518167931410120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049924 (n + 1) + (A049924 (n + 1) - A049928 (n + 1))

end

end A049920.P8977518167931410120

/-! ## A049920.P12667913160973211152

`2*A049924(n+1)-A049928(n+1)`
-/

namespace A049920.P12667913160973211152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049924 (n + 1) - A049928 (n + 1)

end

end A049920.P12667913160973211152

/-!
# A049921: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049921, there is no canonical definition to state claims against.
-/

/-! ## A049921.P1760474171096104740

`2*A049905(n+1)-A049889(n+1)`
-/

namespace A049921.P1760474171096104740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049889 (n + 1)

end

end A049921.P1760474171096104740

/-! ## A049921.P1500711496779985615

`A049885(n+1)+A049925(n+1)-A049889(n+1)`
-/

namespace A049921.P1500711496779985615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049925 (n + 1) - A049889 (n + 1))

end

end A049921.P1500711496779985615

/-! ## A049921.P4618106854270490418

`A049889(n+1)+A049917(n+1)-A049885(n+1)`
-/

namespace A049921.P4618106854270490418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049917 (n + 1) - A049885 (n + 1))

end

end A049921.P4618106854270490418

/-! ## A049921.P3062803028011201370

`A049885(n+1)+A049929(n+1)-A049893(n+1)`
-/

namespace A049921.P3062803028011201370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049929 (n + 1) - A049893 (n + 1))

end

end A049921.P3062803028011201370

/-! ## A049921.P10611593627473510713

`A049897(n+1)+A049917(n+1)-A049893(n+1)`
-/

namespace A049921.P10611593627473510713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049917 (n + 1) - A049893 (n + 1))

end

end A049921.P10611593627473510713

/-! ## A049921.P14320329639447504230

`A049901(n+1)+A049913(n+1)-A049893(n+1)`
-/

namespace A049921.P14320329639447504230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049913 (n + 1) - A049893 (n + 1))

end

end A049921.P14320329639447504230

/-! ## A049921.P15794605826463218060

`A049909(n+1)+A049909(n+1)-A049897(n+1)`
-/

namespace A049921.P15794605826463218060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049897 (n + 1))

end

end A049921.P15794605826463218060

/-! ## A049921.P16972624842209460758

`A049901(n+1)+A049929(n+1)-A049909(n+1)`
-/

namespace A049921.P16972624842209460758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049929 (n + 1) - A049909 (n + 1))

end

end A049921.P16972624842209460758

/-! ## A049921.P14436810104657556699

`A049925(n+1)+A049925(n+1)-A049929(n+1)`
-/

namespace A049921.P14436810104657556699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049925 (n + 1) + (A049925 (n + 1) - A049929 (n + 1))

end

end A049921.P14436810104657556699

/-! ## A049921.P13759192134799994892

`2*A049909(n+1)-A049897(n+1)`
-/

namespace A049921.P13759192134799994892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049897 (n + 1)

end

end A049921.P13759192134799994892

/-! ## A049921.P1173733264933408822

`(A049925(n+1)+A049917(n+1))/2`
-/

namespace A049921.P1173733264933408822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049925 (n + 1) + A049917 (n + 1) : ℚ) / 2

end

end A049921.P1173733264933408822

/-! ## A049921.P14998062948401378867

`2*A049925(n+1)-A049929(n+1)`
-/

namespace A049921.P14998062948401378867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049925 (n + 1) - A049929 (n + 1)

end

end A049921.P14998062948401378867

/-!
# A049922: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3 and a(3) = 2.

The programs for A049922, there is no canonical definition to state claims against.
-/

/-! ## A049922.P2945467092934893314

`A049890(n+1)+A049918(n+1)-A049886(n+1)`
-/

namespace A049922.P2945467092934893314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049918 (n + 1) - A049886 (n + 1))

end

end A049922.P2945467092934893314

/-! ## A049922.P10771273164058052960

`A049894(n+1)+A049918(n+1)-A049890(n+1)`
-/

namespace A049922.P10771273164058052960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049918 (n + 1) - A049890 (n + 1))

end

end A049922.P10771273164058052960

/-! ## A049922.P2378842321267294649

`A049902(n+1)+A049906(n+1)-A049886(n+1)`
-/

namespace A049922.P2378842321267294649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049906 (n + 1) - A049886 (n + 1))

end

end A049922.P2378842321267294649

/-! ## A049922.P5244085444642299977

`A049902(n+1)+A049910(n+1)-A049890(n+1)`
-/

namespace A049922.P5244085444642299977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049910 (n + 1) - A049890 (n + 1))

end

end A049922.P5244085444642299977

/-! ## A049922.P6473925072354038360

`A049906(n+1)+A049906(n+1)-A049890(n+1)`
-/

namespace A049922.P6473925072354038360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049890 (n + 1))

end

end A049922.P6473925072354038360

/-! ## A049922.P13996752858594526216

`2*A049906(n+1)-A049890(n+1)`
-/

namespace A049922.P13996752858594526216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049890 (n + 1)

end

end A049922.P13996752858594526216

/-! ## A049922.P16968899058060059633

`A049886(n+1)+A049926(n+1)-A049890(n+1)`
-/

namespace A049922.P16968899058060059633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049926 (n + 1) - A049890 (n + 1))

end

end A049922.P16968899058060059633

/-!
# A049923: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049923, there is no canonical definition to state claims against.
-/

/-! ## A049923.P8929246677990656469

`A049887(n+1)+A049927(n+1)-A049891(n+1)`
-/

namespace A049923.P8929246677990656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049927 (n + 1) - A049891 (n + 1))

end

end A049923.P8929246677990656469

/-! ## A049923.P2178788841818993469

`A049891(n+1)+A049919(n+1)-A049887(n+1)`
-/

namespace A049923.P2178788841818993469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049919 (n + 1) - A049887 (n + 1))

end

end A049923.P2178788841818993469

/-! ## A049923.P268595925558329982

`A049903(n+1)+A049907(n+1)-A049887(n+1)`
-/

namespace A049923.P268595925558329982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049903 (n + 1) + (A049907 (n + 1) - A049887 (n + 1))

end

end A049923.P268595925558329982

/-! ## A049923.P1583112416452200271

`A049903(n+1)+A049911(n+1)-A049891(n+1)`
-/

namespace A049923.P1583112416452200271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049903 (n + 1) + (A049911 (n + 1) - A049891 (n + 1))

end

end A049923.P1583112416452200271

/-! ## A049923.P6398501619008755734

`A049907(n+1)+A049907(n+1)-A049891(n+1)`
-/

namespace A049923.P6398501619008755734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049891 (n + 1))

end

end A049923.P6398501619008755734

/-! ## A049923.P136246817873439768

`A049911(n+1)+A049911(n+1)-A049899(n+1)`
-/

namespace A049923.P136246817873439768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049899 (n + 1))

end

end A049923.P136246817873439768

/-! ## A049923.P16353935339168480984

`2*A049907(n+1)-A049891(n+1)`
-/

namespace A049923.P16353935339168480984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049891 (n + 1)

end

end A049923.P16353935339168480984

/-! ## A049923.P6060502450968072479

`2*A049911(n+1)-A049899(n+1)`
-/

namespace A049923.P6060502450968072479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049899 (n + 1)

end

end A049923.P6060502450968072479

/-! ## A049923.P10166985682638982069

`(A049927(n+1)+A049919(n+1))/2`
-/

namespace A049923.P10166985682638982069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049927 (n + 1) + A049919 (n + 1) : ℚ) / 2

end

end A049923.P10166985682638982069

/-!
# A049924: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 3.

The programs for A049924, there is no canonical definition to state claims against.
-/

/-! ## A049924.P11115553646115349570

`2*A049904(n+1)-A049884(n+1)`
-/

namespace A049924.P11115553646115349570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049884 (n + 1)

end

end A049924.P11115553646115349570

/-! ## A049924.P13149949770484768800

`2*A049908(n+1)-A049892(n+1)`
-/

namespace A049924.P13149949770484768800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049892 (n + 1)

end

end A049924.P13149949770484768800

/-! ## A049924.P666551842145696416

`2*A049920(n+1)-A049916(n+1)`
-/

namespace A049924.P666551842145696416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049920 (n + 1) - A049916 (n + 1)

end

end A049924.P666551842145696416

/-! ## A049924.P14244652084181678957

`A049888(n+1)+A049920(n+1)-A049884(n+1)`
-/

namespace A049924.P14244652084181678957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049920 (n + 1) - A049884 (n + 1))

end

end A049924.P14244652084181678957

/-! ## A049924.P1730423300138264139

`(A049928(n+1)+A049920(n+1))/2`
-/

namespace A049924.P1730423300138264139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049928 (n + 1) + A049920 (n + 1) : ℚ) / 2

end

end A049924.P1730423300138264139

/-!
# A049925: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049925, there is no canonical definition to state claims against.
-/

/-! ## A049925.P17413879817803357389

`2*A049905(n+1)-A049885(n+1)`
-/

namespace A049925.P17413879817803357389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049885 (n + 1)

end

end A049925.P17413879817803357389

/-! ## A049925.P11138073934983643628

`A049889(n+1)+A049921(n+1)-A049885(n+1)`
-/

namespace A049925.P11138073934983643628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049921 (n + 1) - A049885 (n + 1))

end

end A049925.P11138073934983643628

/-! ## A049925.P13300222909026639936

`A049893(n+1)+A049917(n+1)-A049885(n+1)`
-/

namespace A049925.P13300222909026639936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049917 (n + 1) - A049885 (n + 1))

end

end A049925.P13300222909026639936

/-! ## A049925.P6534214882303697764

`A049901(n+1)+A049909(n+1)-A049885(n+1)`
-/

namespace A049925.P6534214882303697764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049909 (n + 1) - A049885 (n + 1))

end

end A049925.P6534214882303697764

/-! ## A049925.P14357600336421595495

`A049893(n+1)+A049929(n+1)-A049897(n+1)`
-/

namespace A049925.P14357600336421595495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049929 (n + 1) - A049897 (n + 1))

end

end A049925.P14357600336421595495

/-! ## A049925.P12386487987061358387

`A049897(n+1)+A049921(n+1)-A049893(n+1)`
-/

namespace A049925.P12386487987061358387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049921 (n + 1) - A049893 (n + 1))

end

end A049925.P12386487987061358387

/-! ## A049925.P16245901965523955954

`A049909(n+1)+A049909(n+1)-A049893(n+1)`
-/

namespace A049925.P16245901965523955954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049893 (n + 1))

end

end A049925.P16245901965523955954

/-! ## A049925.P2094332046657323287

`A049921(n+1)+A049921(n+1)-A049917(n+1)`
-/

namespace A049925.P2094332046657323287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049921 (n + 1) + (A049921 (n + 1) - A049917 (n + 1))

end

end A049925.P2094332046657323287

/-! ## A049925.P11408875435766220529

`2*A049909(n+1)-A049893(n+1)`
-/

namespace A049925.P11408875435766220529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049893 (n + 1)

end

end A049925.P11408875435766220529

/-! ## A049925.P608164932228645572

`2*A049921(n+1)-A049917(n+1)`
-/

namespace A049925.P608164932228645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049921 (n + 1) - A049917 (n + 1)

end

end A049925.P608164932228645572

/-! ## A049925.P3294767737108638594

`(A049929(n+1)+A049921(n+1))/2`
-/

namespace A049925.P3294767737108638594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049929 (n + 1) + A049921 (n + 1) : ℚ) / 2

end

end A049925.P3294767737108638594

/-!
# A049926: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049926, there is no canonical definition to state claims against.
-/

/-! ## A049926.P10211027465768407681

`2*A049906(n+1)-A049886(n+1)`
-/

namespace A049926.P10211027465768407681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049886 (n + 1)

end

end A049926.P10211027465768407681

/-! ## A049926.P2122958091982634420

`2*A049910(n+1)-A049894(n+1)`
-/

namespace A049926.P2122958091982634420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049910 (n + 1) - A049894 (n + 1)

end

end A049926.P2122958091982634420

/-! ## A049926.P1962781681140721036

`2*A049922(n+1)-A049918(n+1)`
-/

namespace A049926.P1962781681140721036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049922 (n + 1) - A049918 (n + 1)

end

end A049926.P1962781681140721036

/-! ## A049926.P15174226404936209960

`A049890(n+1)+A049922(n+1)-A049886(n+1)`
-/

namespace A049926.P15174226404936209960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049922 (n + 1) - A049886 (n + 1))

end

end A049926.P15174226404936209960

/-! ## A049926.P14296710802331804154

`A049894(n+1)+A049922(n+1)-A049890(n+1)`
-/

namespace A049926.P14296710802331804154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049922 (n + 1) - A049890 (n + 1))

end

end A049926.P14296710802331804154

/-! ## A049926.P9027410807868864129

`A049902(n+1)+A049910(n+1)-A049886(n+1)`
-/

namespace A049926.P9027410807868864129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049910 (n + 1) - A049886 (n + 1))

end

end A049926.P9027410807868864129

/-! ## A049926.P12411936321260209098

`A049906(n+1)+A049910(n+1)-A049890(n+1)`
-/

namespace A049926.P12411936321260209098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049910 (n + 1) - A049890 (n + 1))

end

end A049926.P12411936321260209098

/-! ## A049926.P5126788225812532726

`(A049930(n+1)+A049922(n+1))/2`
-/

namespace A049926.P5126788225812532726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049930 (n + 1) + A049922 (n + 1) : ℚ) / 2

end

end A049926.P5126788225812532726

/-!
# A049927: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049927, there is no canonical definition to state claims against.
-/

/-! ## A049927.P1743110945325316992

`A049891(n+1)+A049923(n+1)-A049887(n+1)`
-/

namespace A049927.P1743110945325316992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049923 (n + 1) - A049887 (n + 1))

end

end A049927.P1743110945325316992

/-! ## A049927.P10874286276014995565

`A049895(n+1)+A049919(n+1)-A049887(n+1)`
-/

namespace A049927.P10874286276014995565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049919 (n + 1) - A049887 (n + 1))

end

end A049927.P10874286276014995565

/-! ## A049927.P6423691114021781944

`A049907(n+1)+A049907(n+1)-A049887(n+1)`
-/

namespace A049927.P6423691114021781944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049887 (n + 1))

end

end A049927.P6423691114021781944

/-! ## A049927.P13375284573235502507

`A049911(n+1)+A049911(n+1)-A049895(n+1)`
-/

namespace A049927.P13375284573235502507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049895 (n + 1))

end

end A049927.P13375284573235502507

/-! ## A049927.P16961172588850549008

`A049923(n+1)+A049923(n+1)-A049919(n+1)`
-/

namespace A049927.P16961172588850549008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049923 (n + 1) + (A049923 (n + 1) - A049919 (n + 1))

end

end A049927.P16961172588850549008

/-! ## A049927.P11169189264507275972

`2*A049907(n+1)-A049887(n+1)`
-/

namespace A049927.P11169189264507275972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049887 (n + 1)

end

end A049927.P11169189264507275972

/-! ## A049927.P14615912968451622727

`2*A049911(n+1)-A049895(n+1)`
-/

namespace A049927.P14615912968451622727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049895 (n + 1)

end

end A049927.P14615912968451622727

/-! ## A049927.P281993811403026087

`2*A049923(n+1)-A049919(n+1)`
-/

namespace A049927.P281993811403026087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049923 (n + 1) - A049919 (n + 1)

end

end A049927.P281993811403026087

/-!
# A049928: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049928, there is no canonical definition to state claims against.
-/

/-! ## A049928.P18401226472450494465

`2*A049908(n+1)-A049888(n+1)`
-/

namespace A049928.P18401226472450494465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049888 (n + 1)

end

end A049928.P18401226472450494465

/-! ## A049928.P17888969906485348441

`2*A049912(n+1)-A049896(n+1)`
-/

namespace A049928.P17888969906485348441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049912 (n + 1) - A049896 (n + 1)

end

end A049928.P17888969906485348441

/-! ## A049928.P9484703078797300345

`A049888(n+1)+A049924(n+1)-A049884(n+1)`
-/

namespace A049928.P9484703078797300345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049924 (n + 1) - A049884 (n + 1))

end

end A049928.P9484703078797300345

/-! ## A049928.P1026854587589820954

`A049892(n+1)+A049920(n+1)-A049884(n+1)`
-/

namespace A049928.P1026854587589820954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049892 (n + 1) + (A049920 (n + 1) - A049884 (n + 1))

end

end A049928.P1026854587589820954

/-! ## A049928.P11667448222655912607

`A049900(n+1)+A049912(n+1)-A049884(n+1)`
-/

namespace A049928.P11667448222655912607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049900 (n + 1) + (A049912 (n + 1) - A049884 (n + 1))

end

end A049928.P11667448222655912607

/-! ## A049928.P3809069244867405437

`A049924(n+1)+A049924(n+1)-A049920(n+1)`
-/

namespace A049928.P3809069244867405437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049924 (n + 1) + (A049924 (n + 1) - A049920 (n + 1))

end

end A049928.P3809069244867405437

/-! ## A049928.P1113139519816491591

`2*A049924(n+1)-A049920(n+1)`
-/

namespace A049928.P1113139519816491591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049924 (n + 1) - A049920 (n + 1)

end

end A049928.P1113139519816491591

/-!
# A049929: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n-1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049929, there is no canonical definition to state claims against.
-/

/-! ## A049929.P4976538507719874406

`A049889(n+1)+A049925(n+1)-A049885(n+1)`
-/

namespace A049929.P4976538507719874406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049925 (n + 1) - A049885 (n + 1))

end

end A049929.P4976538507719874406

/-! ## A049929.P9569172538282035822

`A049893(n+1)+A049921(n+1)-A049885(n+1)`
-/

namespace A049929.P9569172538282035822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049921 (n + 1) - A049885 (n + 1))

end

end A049929.P9569172538282035822

/-! ## A049929.P6523395275731048746

`A049897(n+1)+A049917(n+1)-A049885(n+1)`
-/

namespace A049929.P6523395275731048746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049917 (n + 1) - A049885 (n + 1))

end

end A049929.P6523395275731048746

/-! ## A049929.P14667638260990126587

`A049901(n+1)+A049913(n+1)-A049885(n+1)`
-/

namespace A049929.P14667638260990126587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049913 (n + 1) - A049885 (n + 1))

end

end A049929.P14667638260990126587

/-! ## A049929.P6668154865930870898

`A049909(n+1)+A049909(n+1)-A049889(n+1)`
-/

namespace A049929.P6668154865930870898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049889 (n + 1))

end

end A049929.P6668154865930870898

/-! ## A049929.P236757759164046747

`A049913(n+1)+A049913(n+1)-A049897(n+1)`
-/

namespace A049929.P236757759164046747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049913 (n + 1) + (A049913 (n + 1) - A049897 (n + 1))

end

end A049929.P236757759164046747

/-! ## A049929.P2686564467315288824

`A049913(n+1)+A049917(n+1)-A049901(n+1)`
-/

namespace A049929.P2686564467315288824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049913 (n + 1) + (A049917 (n + 1) - A049901 (n + 1))

end

end A049929.P2686564467315288824

/-! ## A049929.P3786605666792096958

`A049925(n+1)+A049925(n+1)-A049921(n+1)`
-/

namespace A049929.P3786605666792096958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049925 (n + 1) + (A049925 (n + 1) - A049921 (n + 1))

end

end A049929.P3786605666792096958

/-! ## A049929.P10385451743400513286

`2*A049909(n+1)-A049889(n+1)`
-/

namespace A049929.P10385451743400513286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049889 (n + 1)

end

end A049929.P10385451743400513286

/-! ## A049929.P5323900017457889359

`2*A049913(n+1)-A049897(n+1)`
-/

namespace A049929.P5323900017457889359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049913 (n + 1) - A049897 (n + 1)

end

end A049929.P5323900017457889359

/-! ## A049929.P180610189465515788

`2*A049925(n+1)-A049921(n+1)`
-/

namespace A049929.P180610189465515788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049925 (n + 1) - A049921 (n + 1)

end

end A049929.P180610189465515788

/-!
# A049930: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(4) = 4.

The programs for A049930, there is no canonical definition to state claims against.
-/

/-! ## A049930.P6203891871537779724

`2*A049910(n+1)-A049890(n+1)`
-/

namespace A049930.P6203891871537779724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049910 (n + 1) - A049890 (n + 1)

end

end A049930.P6203891871537779724

/-! ## A049930.P15024056201175322316

`A049890(n+1)+A049926(n+1)-A049886(n+1)`
-/

namespace A049930.P15024056201175322316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049926 (n + 1) - A049886 (n + 1))

end

end A049930.P15024056201175322316

/-! ## A049930.P10143299653796012630

`A049894(n+1)+A049922(n+1)-A049886(n+1)`
-/

namespace A049930.P10143299653796012630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049922 (n + 1) - A049886 (n + 1))

end

end A049930.P10143299653796012630

/-! ## A049930.P11211007179503675688

`A049902(n+1)+A049914(n+1)-A049886(n+1)`
-/

namespace A049930.P11211007179503675688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049914 (n + 1) - A049886 (n + 1))

end

end A049930.P11211007179503675688

/-! ## A049930.P13771995108077104862

`A049906(n+1)+A049910(n+1)-A049886(n+1)`
-/

namespace A049930.P13771995108077104862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049910 (n + 1) - A049886 (n + 1))

end

end A049930.P13771995108077104862

/-! ## A049930.P4612495108273217703

`A049914(n+1)+A049914(n+1)-A049898(n+1)`
-/

namespace A049930.P4612495108273217703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049914 (n + 1) + (A049914 (n + 1) - A049898 (n + 1))

end

end A049930.P4612495108273217703

/-! ## A049930.P14731341334770225176

`A049926(n+1)+A049926(n+1)-A049922(n+1)`
-/

namespace A049930.P14731341334770225176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049926 (n + 1) + (A049926 (n + 1) - A049922 (n + 1))

end

end A049930.P14731341334770225176

/-! ## A049930.P8339641604961296446

`2*A049914(n+1)-A049898(n+1)`
-/

namespace A049930.P8339641604961296446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049914 (n + 1) - A049898 (n + 1)

end

end A049930.P8339641604961296446

/-! ## A049930.P4860255667012212840

`2*A049926(n+1)-A049922(n+1)`
-/

namespace A049930.P4860255667012212840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049926 (n + 1) - A049922 (n + 1)

end

end A049930.P4860255667012212840

/-!
# A049931: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049931, there is no canonical definition to state claims against.
-/

/-! ## A049931.P9337211469361064209

`A049891(n+1)+A049927(n+1)-A049887(n+1)`
-/

namespace A049931.P9337211469361064209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049927 (n + 1) - A049887 (n + 1))

end

end A049931.P9337211469361064209

/-! ## A049931.P5853217410005588714

`A049895(n+1)+A049923(n+1)-A049887(n+1)`
-/

namespace A049931.P5853217410005588714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049923 (n + 1) - A049887 (n + 1))

end

end A049931.P5853217410005588714

/-! ## A049931.P10492350487785715438

`A049911(n+1)+A049911(n+1)-A049891(n+1)`
-/

namespace A049931.P10492350487785715438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049891 (n + 1))

end

end A049931.P10492350487785715438

/-! ## A049931.P11562157554617619467

`A049915(n+1)+A049915(n+1)-A049899(n+1)`
-/

namespace A049931.P11562157554617619467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049915 (n + 1) + (A049915 (n + 1) - A049899 (n + 1))

end

end A049931.P11562157554617619467

/-! ## A049931.P15466950833002812751

`A049927(n+1)+A049927(n+1)-A049923(n+1)`
-/

namespace A049931.P15466950833002812751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049927 (n + 1) + (A049927 (n + 1) - A049923 (n + 1))

end

end A049931.P15466950833002812751

/-! ## A049931.P12508469763667271921

`2*A049911(n+1)-A049891(n+1)`
-/

namespace A049931.P12508469763667271921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049891 (n + 1)

end

end A049931.P12508469763667271921

/-! ## A049931.P13503441530506198875

`2*A049915(n+1)-A049899(n+1)`
-/

namespace A049931.P13503441530506198875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049915 (n + 1) - A049899 (n + 1)

end

end A049931.P13503441530506198875

/-! ## A049931.P7673495022514888135

`2*A049927(n+1)-A049923(n+1)`
-/

namespace A049931.P7673495022514888135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049927 (n + 1) - A049923 (n + 1)

end

end A049931.P7673495022514888135

/-!
# A049932: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049932, there is no canonical definition to state claims against.
-/

/-! ## A049932.P5436271574535174137

`A049936(n+1)+A049936(n+1)-A049940(n+1)`
-/

namespace A049932.P5436271574535174137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049936 (n + 1) - A049940 (n + 1))

end

end A049932.P5436271574535174137

/-! ## A049932.P4235812573873165422

`A049936(n+1)+A049948(n+1)-A049952(n+1)`
-/

namespace A049932.P4235812573873165422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049948 (n + 1) - A049952 (n + 1))

end

end A049932.P4235812573873165422

/-! ## A049932.P10610977202305495960

`A049940(n+1)+A049952(n+1)-A049960(n+1)`
-/

namespace A049932.P10610977202305495960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049952 (n + 1) - A049960 (n + 1))

end

end A049932.P10610977202305495960

/-! ## A049932.P7393607595971662363

`A049944(n+1)+A049948(n+1)-A049960(n+1)`
-/

namespace A049932.P7393607595971662363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049948 (n + 1) - A049960 (n + 1))

end

end A049932.P7393607595971662363

/-! ## A049932.P10112715109056368761

`A049948(n+1)+A049948(n+1)-A049964(n+1)`
-/

namespace A049932.P10112715109056368761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049948 (n + 1) - A049964 (n + 1))

end

end A049932.P10112715109056368761

/-! ## A049932.P16293583717132049235

`2*A049936(n+1)-A049940(n+1)`
-/

namespace A049932.P16293583717132049235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049936 (n + 1) - A049940 (n + 1)

end

end A049932.P16293583717132049235

/-! ## A049932.P12772654364071531317

`2*A049948(n+1)-A049964(n+1)`
-/

namespace A049932.P12772654364071531317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049948 (n + 1) - A049964 (n + 1)

end

end A049932.P12772654364071531317

/-!
# A049933: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049933, there is no canonical definition to state claims against.
-/

/-! ## A049933.P3098307158345057878

`A049937(n+1)+A049937(n+1)-A049941(n+1)`
-/

namespace A049933.P3098307158345057878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049937 (n + 1) - A049941 (n + 1))

end

end A049933.P3098307158345057878

/-! ## A049933.P18945667833255217

`2*A049937(n+1)-A049941(n+1)`
-/

namespace A049933.P18945667833255217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049937 (n + 1) - A049941 (n + 1)

end

end A049933.P18945667833255217

/-! ## A049933.P11890983688087295887

`A049937(n+1)+A049949(n+1)-A049953(n+1)`
-/

namespace A049933.P11890983688087295887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049949 (n + 1) - A049953 (n + 1))

end

end A049933.P11890983688087295887

/-! ## A049933.P4494051851752500246

`A049937(n+1)+A049953(n+1)-A049957(n+1)`
-/

namespace A049933.P4494051851752500246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049953 (n + 1) - A049957 (n + 1))

end

end A049933.P4494051851752500246

/-! ## A049933.P17186314627963812705

`A049937(n+1)+A049973(n+1)-A049977(n+1)`
-/

namespace A049933.P17186314627963812705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049973 (n + 1) - A049977 (n + 1))

end

end A049933.P17186314627963812705

/-! ## A049933.P10192321069812600365

`A049953(n+1)+A049957(n+1)-A049977(n+1)`
-/

namespace A049933.P10192321069812600365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049957 (n + 1) - A049977 (n + 1))

end

end A049933.P10192321069812600365

/-!
# A049934: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049934, there is no canonical definition to state claims against.
-/

/-! ## A049934.P4769060750665150904

`A049938(n+1)+A049938(n+1)-A049942(n+1)`
-/

namespace A049934.P4769060750665150904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049938 (n + 1) - A049942 (n + 1))

end

end A049934.P4769060750665150904

/-! ## A049934.P13832882049664593957

`A049938(n+1)+A049950(n+1)-A049954(n+1)`
-/

namespace A049934.P13832882049664593957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049950 (n + 1) - A049954 (n + 1))

end

end A049934.P13832882049664593957

/-! ## A049934.P18184805674937734722

`A049950(n+1)+A049950(n+1)-A049966(n+1)`
-/

namespace A049934.P18184805674937734722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049950 (n + 1) + (A049950 (n + 1) - A049966 (n + 1))

end

end A049934.P18184805674937734722

/-! ## A049934.P13616140882068814851

`A049954(n+1)+A049954(n+1)-A049974(n+1)`
-/

namespace A049934.P13616140882068814851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049974 (n + 1))

end

end A049934.P13616140882068814851

/-! ## A049934.P3815407446609502903

`2*A049938(n+1)-A049942(n+1)`
-/

namespace A049934.P3815407446609502903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049938 (n + 1) - A049942 (n + 1)

end

end A049934.P3815407446609502903

/-! ## A049934.P17740935387749108674

`2*A049950(n+1)-A049966(n+1)`
-/

namespace A049934.P17740935387749108674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049950 (n + 1) - A049966 (n + 1)

end

end A049934.P17740935387749108674

/-! ## A049934.P12906297566805531260

`2*A049954(n+1)-A049974(n+1)`
-/

namespace A049934.P12906297566805531260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049974 (n + 1)

end

end A049934.P12906297566805531260

/-!
# A049935: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049935, there is no canonical definition to state claims against.
-/

/-! ## A049935.P7305874754636545291

`A049939(n+1)+A049939(n+1)-A049943(n+1)`
-/

namespace A049935.P7305874754636545291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049939 (n + 1) - A049943 (n + 1))

end

end A049935.P7305874754636545291

/-! ## A049935.P906075987965304560

`A049939(n+1)+A049951(n+1)-A049955(n+1)`
-/

namespace A049935.P906075987965304560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049951 (n + 1) - A049955 (n + 1))

end

end A049935.P906075987965304560

/-! ## A049935.P3434159026146202279

`2*A049939(n+1)-A049943(n+1)`
-/

namespace A049935.P3434159026146202279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049939 (n + 1) - A049943 (n + 1)

end

end A049935.P3434159026146202279

/-! ## A049935.P5201386595843336766

`A049887(n+1)/A049911(n+1)*A049959(n+1)`
-/

namespace A049935.P5201386595843336766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049887 (n + 1) : ℚ) / (A049911 (n + 1) : ℚ) * (A049959 (n + 1) : ℚ)

end

end A049935.P5201386595843336766

/-! ## A049935.P8002295610779134262

`A049959(n+1)/A020639(A049959(n+1))`
-/

namespace A049935.P8002295610779134262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049959 (n + 1) : ℚ) / (A020639 (A049959 (n + 1)).toNat : ℚ)

end

end A049935.P8002295610779134262

/-!
# A049936: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049936, there is no canonical definition to state claims against.
-/

/-! ## A049936.P15132413414407840116

`A049932(n+1)+A049944(n+1)-A049940(n+1)`
-/

namespace A049936.P15132413414407840116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049944 (n + 1) - A049940 (n + 1))

end

end A049936.P15132413414407840116

/-! ## A049936.P16092570304141946789

`A049932(n+1)+A049952(n+1)-A049948(n+1)`
-/

namespace A049936.P16092570304141946789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049952 (n + 1) - A049948 (n + 1))

end

end A049936.P16092570304141946789

/-! ## A049936.P17577121633965776969

`A049940(n+1)+A049948(n+1)-A049952(n+1)`
-/

namespace A049936.P17577121633965776969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049948 (n + 1) - A049952 (n + 1))

end

end A049936.P17577121633965776969

/-! ## A049936.P16976010774991738712

`(A049940(n+1)+A049932(n+1))/2`
-/

namespace A049936.P16976010774991738712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049940 (n + 1) + A049932 (n + 1) : ℚ) / 2

end

end A049936.P16976010774991738712

/-! ## A049936.P7571266931073590670

`2*A049940(n+1)-A049944(n+1)`
-/

namespace A049936.P7571266931073590670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049940 (n + 1) - A049944 (n + 1)

end

end A049936.P7571266931073590670

/-!
# A049937: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049937, there is no canonical definition to state claims against.
-/

/-! ## A049937.P7616275031248507854

`(A049941(n+1)+A049933(n+1))/2`
-/

namespace A049937.P7616275031248507854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049941 (n + 1) + A049933 (n + 1) : ℚ) / 2

end

end A049937.P7616275031248507854

/-! ## A049937.P5102473678284875089

`2*A049941(n+1)-A049945(n+1)`
-/

namespace A049937.P5102473678284875089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049941 (n + 1) - A049945 (n + 1)

end

end A049937.P5102473678284875089

/-! ## A049937.P7962396357008817611

`A049933(n+1)+A049945(n+1)-A049941(n+1)`
-/

namespace A049937.P7962396357008817611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049945 (n + 1) - A049941 (n + 1))

end

end A049937.P7962396357008817611

/-! ## A049937.P1479095644596484757

`A049933(n+1)+A049957(n+1)-A049953(n+1)`
-/

namespace A049937.P1479095644596484757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049957 (n + 1) - A049953 (n + 1))

end

end A049937.P1479095644596484757

/-! ## A049937.P11574805169654127306

`A049941(n+1)+A049949(n+1)-A049953(n+1)`
-/

namespace A049937.P11574805169654127306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049949 (n + 1) - A049953 (n + 1))

end

end A049937.P11574805169654127306

/-! ## A049937.P761843151391406853

`A049941(n+1)+A049953(n+1)-A049957(n+1)`
-/

namespace A049937.P761843151391406853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049953 (n + 1) - A049957 (n + 1))

end

end A049937.P761843151391406853

/-! ## A049937.P9645839436679267382

`A049945(n+1)+A049949(n+1)-A049957(n+1)`
-/

namespace A049937.P9645839436679267382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049949 (n + 1) - A049957 (n + 1))

end

end A049937.P9645839436679267382

/-! ## A049937.P17657030346872482446

`A049933(n+1)+A049977(n+1)-A049973(n+1)`
-/

namespace A049937.P17657030346872482446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049973 (n + 1))

end

end A049937.P17657030346872482446

/-! ## A049937.P1151660086472755693

`A049957(n+1)+A049957(n+1)-A049977(n+1)`
-/

namespace A049937.P1151660086472755693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049977 (n + 1))

end

end A049937.P1151660086472755693

/-! ## A049937.P16930708535897445040

`2*A049957(n+1)-A049977(n+1)`
-/

namespace A049937.P16930708535897445040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049977 (n + 1)

end

end A049937.P16930708535897445040

/-!
# A049938: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049938, there is no canonical definition to state claims against.
-/

/-! ## A049938.P6107712252596206516

`A049934(n+1)+A049946(n+1)-A049942(n+1)`
-/

namespace A049938.P6107712252596206516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049946 (n + 1) - A049942 (n + 1))

end

end A049938.P6107712252596206516

/-! ## A049938.P12833619749308882103

`A049954(n+1)+A049954(n+1)-A049970(n+1)`
-/

namespace A049938.P12833619749308882103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049970 (n + 1))

end

end A049938.P12833619749308882103

/-! ## A049938.P5836041355848243972

`(A049942(n+1)+A049934(n+1))/2`
-/

namespace A049938.P5836041355848243972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049942 (n + 1) + A049934 (n + 1) : ℚ) / 2

end

end A049938.P5836041355848243972

/-! ## A049938.P4694893043793250532

`2*A049942(n+1)-A049946(n+1)`
-/

namespace A049938.P4694893043793250532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049942 (n + 1) - A049946 (n + 1)

end

end A049938.P4694893043793250532

/-! ## A049938.P10403573876214022601

`2*A049954(n+1)-A049970(n+1)`
-/

namespace A049938.P10403573876214022601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049970 (n + 1)

end

end A049938.P10403573876214022601

/-! ## A049938.P12316320752468997369

`2*A049958(n+1)-A049978(n+1)`
-/

namespace A049938.P12316320752468997369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049978 (n + 1)

end

end A049938.P12316320752468997369

/-!
# A049939: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049939, there is no canonical definition to state claims against.
-/

/-! ## A049939.P4726753786385668905

`A049935(n+1)+A049947(n+1)-A049943(n+1)`
-/

namespace A049939.P4726753786385668905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049947 (n + 1) - A049943 (n + 1))

end

end A049939.P4726753786385668905

/-! ## A049939.P8654815160832249407

`A049935(n+1)+A049955(n+1)-A049951(n+1)`
-/

namespace A049939.P8654815160832249407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049955 (n + 1) - A049951 (n + 1))

end

end A049939.P8654815160832249407

/-! ## A049939.P14816617698676004633

`A049943(n+1)+A049951(n+1)-A049955(n+1)`
-/

namespace A049939.P14816617698676004633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049943 (n + 1) + (A049951 (n + 1) - A049955 (n + 1))

end

end A049939.P14816617698676004633

/-! ## A049939.P7332718212388357329

`(A049943(n+1)+A049935(n+1))/2`
-/

namespace A049939.P7332718212388357329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049943 (n + 1) + A049935 (n + 1) : ℚ) / 2

end

end A049939.P7332718212388357329

/-! ## A049939.P10413733851897135163

`2*A049943(n+1)-A049947(n+1)`
-/

namespace A049939.P10413733851897135163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049943 (n + 1) - A049947 (n + 1)

end

end A049939.P10413733851897135163

/-! ## A049939.P6913749060391746640

`2*A049955(n+1)-A049971(n+1)`
-/

namespace A049939.P6913749060391746640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049971 (n + 1)

end

end A049939.P6913749060391746640

/-!
# A049940: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1) with a(1) = a(2) = 1.

The programs for A049940, there is no canonical definition to state claims against.
-/

/-! ## A049940.P7838452153407067012

`A049932(n+1)+A049944(n+1)-A049936(n+1)`
-/

namespace A049940.P7838452153407067012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049944 (n + 1) - A049936 (n + 1))

end

end A049940.P7838452153407067012

/-! ## A049940.P15399928105857899079

`A049936(n+1)+A049952(n+1)-A049948(n+1)`
-/

namespace A049940.P15399928105857899079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049952 (n + 1) - A049948 (n + 1))

end

end A049940.P15399928105857899079

/-! ## A049940.P6854852329371474538

`A049952(n+1)+A049952(n+1)-A049964(n+1)`
-/

namespace A049940.P6854852329371474538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049964 (n + 1))

end

end A049940.P6854852329371474538

/-! ## A049940.P12030761114978790023

`2*A049936(n+1)-A049932(n+1)`
-/

namespace A049940.P12030761114978790023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049936 (n + 1) - A049932 (n + 1)

end

end A049940.P12030761114978790023

/-! ## A049940.P4538473674989182924

`(A049944(n+1)+A049936(n+1))/2`
-/

namespace A049940.P4538473674989182924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049944 (n + 1) + A049936 (n + 1) : ℚ) / 2

end

end A049940.P4538473674989182924

/-! ## A049940.P1358792902556110220

`2*A049952(n+1)-A049964(n+1)`
-/

namespace A049940.P1358792902556110220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049964 (n + 1)

end

end A049940.P1358792902556110220

/-!
# A049941: a(n) = a(1) + a(2) + ... + a(n-1) + a(m), where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n-1 <= 2^(p+1), starting with a(1) = a(2) = 1.

The programs for A049941, there is no canonical definition to state claims against.
-/

/-! ## A049941.P13894765980345902536

`A049937(n+1)+A049937(n+1)-A049933(n+1)`
-/

namespace A049941.P13894765980345902536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049937 (n + 1) - A049933 (n + 1))

end

end A049941.P13894765980345902536

/-! ## A049941.P5635664592986329388

`2*A049937(n+1)-A049933(n+1)`
-/

namespace A049941.P5635664592986329388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049937 (n + 1) - A049933 (n + 1)

end

end A049941.P5635664592986329388

/-! ## A049941.P10766761815486752661

`(A049945(n+1)+A049937(n+1))/2`
-/

namespace A049941.P10766761815486752661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049945 (n + 1) + A049937 (n + 1) : ℚ) / 2

end

end A049941.P10766761815486752661

/-! ## A049941.P16257494902813275999

`A049933(n+1)+A049957(n+1)-A049949(n+1)`
-/

namespace A049941.P16257494902813275999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049957 (n + 1) - A049949 (n + 1))

end

end A049941.P16257494902813275999

/-! ## A049941.P10373914144076417679

`A049937(n+1)+A049953(n+1)-A049949(n+1)`
-/

namespace A049941.P10373914144076417679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049953 (n + 1) - A049949 (n + 1))

end

end A049941.P10373914144076417679

/-! ## A049941.P9440555953248539973

`A049937(n+1)+A049957(n+1)-A049953(n+1)`
-/

namespace A049941.P9440555953248539973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049957 (n + 1) - A049953 (n + 1))

end

end A049941.P9440555953248539973

/-! ## A049941.P4040758834460464462

`A049945(n+1)+A049953(n+1)-A049957(n+1)`
-/

namespace A049941.P4040758834460464462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049953 (n + 1) - A049957 (n + 1))

end

end A049941.P4040758834460464462

/-! ## A049941.P15536340797691053748

`A049937(n+1)+A049977(n+1)-A049973(n+1)`
-/

namespace A049941.P15536340797691053748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049977 (n + 1) - A049973 (n + 1))

end

end A049941.P15536340797691053748

/-! ## A049941.P12463338996390284610

`A049945(n+1)+A049973(n+1)-A049977(n+1)`
-/

namespace A049941.P12463338996390284610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049973 (n + 1) - A049977 (n + 1))

end

end A049941.P12463338996390284610

/-! ## A049941.P7354538809076116676

`A049957(n+1)+A049957(n+1)-A049973(n+1)`
-/

namespace A049941.P7354538809076116676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049973 (n + 1))

end

end A049941.P7354538809076116676

/-! ## A049941.P3697661069949559774

`2*A049957(n+1)-A049973(n+1)`
-/

namespace A049941.P3697661069949559774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049973 (n + 1)

end

end A049941.P3697661069949559774

/-!
# A049942: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 3, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1.

The programs for A049942, there is no canonical definition to state claims against.
-/

/-! ## A049942.P9384757582312356493

`A049934(n+1)+A049946(n+1)-A049938(n+1)`
-/

namespace A049942.P9384757582312356493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049946 (n + 1) - A049938 (n + 1))

end

end A049942.P9384757582312356493

/-! ## A049942.P16758298990822864973

`A049938(n+1)+A049954(n+1)-A049950(n+1)`
-/

namespace A049942.P16758298990822864973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049954 (n + 1) - A049950 (n + 1))

end

end A049942.P16758298990822864973

/-! ## A049942.P15601535893245973674

`A049954(n+1)+A049954(n+1)-A049966(n+1)`
-/

namespace A049942.P15601535893245973674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049966 (n + 1))

end

end A049942.P15601535893245973674

/-! ## A049942.P3685840693051666092

`A049958(n+1)+A049958(n+1)-A049974(n+1)`
-/

namespace A049942.P3685840693051666092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049974 (n + 1))

end

end A049942.P3685840693051666092

/-! ## A049942.P16997751416906034174

`2*A049938(n+1)-A049934(n+1)`
-/

namespace A049942.P16997751416906034174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049938 (n + 1) - A049934 (n + 1)

end

end A049942.P16997751416906034174

/-! ## A049942.P2138710919096697691

`(A049946(n+1)+A049938(n+1))/2`
-/

namespace A049942.P2138710919096697691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049946 (n + 1) + A049938 (n + 1) : ℚ) / 2

end

end A049942.P2138710919096697691

/-! ## A049942.P2993878807225456181

`2*A049954(n+1)-A049966(n+1)`
-/

namespace A049942.P2993878807225456181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049966 (n + 1)

end

end A049942.P2993878807225456181

/-! ## A049942.P16605233727877236660

`2*A049958(n+1)-A049974(n+1)`
-/

namespace A049942.P16605233727877236660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049974 (n + 1)

end

end A049942.P16605233727877236660

/-!
# A049943: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 3, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), starting with a(1) = a(2) = 1.

The programs for A049943, there is no canonical definition to state claims against.
-/

/-! ## A049943.P13206933680634699365

`A049935(n+1)+A049947(n+1)-A049939(n+1)`
-/

namespace A049943.P13206933680634699365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049947 (n + 1) - A049939 (n + 1))

end

end A049943.P13206933680634699365

/-! ## A049943.P4267128815592779705

`A049939(n+1)+A049955(n+1)-A049951(n+1)`
-/

namespace A049943.P4267128815592779705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049955 (n + 1) - A049951 (n + 1))

end

end A049943.P4267128815592779705

/-! ## A049943.P15749061381341388782

`A049955(n+1)+A049955(n+1)-A049967(n+1)`
-/

namespace A049943.P15749061381341388782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049955 (n + 1) + (A049955 (n + 1) - A049967 (n + 1))

end

end A049943.P15749061381341388782

/-! ## A049943.P7468107524655051665

`2*A049939(n+1)-A049935(n+1)`
-/

namespace A049943.P7468107524655051665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049939 (n + 1) - A049935 (n + 1)

end

end A049943.P7468107524655051665

/-! ## A049943.P17988452796450799626

`(A049947(n+1)+A049939(n+1))/2`
-/

namespace A049943.P17988452796450799626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049947 (n + 1) + A049939 (n + 1) : ℚ) / 2

end

end A049943.P17988452796450799626

/-! ## A049943.P2408370651262096041

`2*A049955(n+1)-A049967(n+1)`
-/

namespace A049943.P2408370651262096041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049967 (n + 1)

end

end A049943.P2408370651262096041

/-! ## A049943.P6601145309616533723

`A049935(n+1)+A049959(n+1)-A049951(n+1)`
-/

namespace A049943.P6601145309616533723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049959 (n + 1) - A049951 (n + 1))

end

end A049943.P6601145309616533723

/-!
# A049944: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049944, there is no canonical definition to state claims against.
-/

/-! ## A049944.P9916044932581724767

`A049936(n+1)+A049940(n+1)-A049932(n+1)`
-/

namespace A049944.P9916044932581724767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049940 (n + 1) - A049932 (n + 1))

end

end A049944.P9916044932581724767

/-! ## A049944.P15163264205464123366

`A049932(n+1)+A049960(n+1)-A049948(n+1)`
-/

namespace A049944.P15163264205464123366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049960 (n + 1) - A049948 (n + 1))

end

end A049944.P15163264205464123366

/-! ## A049944.P13692650513543709267

`A049936(n+1)+A049960(n+1)-A049952(n+1)`
-/

namespace A049944.P13692650513543709267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049960 (n + 1) - A049952 (n + 1))

end

end A049944.P13692650513543709267

/-! ## A049944.P9630458153544782934

`A049940(n+1)+A049952(n+1)-A049948(n+1)`
-/

namespace A049944.P9630458153544782934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049952 (n + 1) - A049948 (n + 1))

end

end A049944.P9630458153544782934

/-! ## A049944.P1820435396499389885

`2*A049940(n+1)-A049936(n+1)`
-/

namespace A049944.P1820435396499389885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049940 (n + 1) - A049936 (n + 1)

end

end A049944.P1820435396499389885

/-!
# A049945: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n-1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049945, there is no canonical definition to state claims against.
-/

/-! ## A049945.P16769542449562206182

`2*A049941(n+1)-A049937(n+1)`
-/

namespace A049945.P16769542449562206182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049941 (n + 1) - A049937 (n + 1)

end

end A049945.P16769542449562206182

/-! ## A049945.P1041907238578152766

`A049937(n+1)+A049941(n+1)-A049933(n+1)`
-/

namespace A049945.P1041907238578152766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049941 (n + 1) - A049933 (n + 1))

end

end A049945.P1041907238578152766

/-! ## A049945.P11929052771920364114

`A049937(n+1)+A049957(n+1)-A049949(n+1)`
-/

namespace A049945.P11929052771920364114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049957 (n + 1) - A049949 (n + 1))

end

end A049945.P11929052771920364114

/-! ## A049945.P10076406101268680698

`A049941(n+1)+A049953(n+1)-A049949(n+1)`
-/

namespace A049945.P10076406101268680698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049953 (n + 1) - A049949 (n + 1))

end

end A049945.P10076406101268680698

/-! ## A049945.P11101565235573287945

`A049941(n+1)+A049957(n+1)-A049953(n+1)`
-/

namespace A049945.P11101565235573287945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049957 (n + 1) - A049953 (n + 1))

end

end A049945.P11101565235573287945

/-!
# A049946: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049946, there is no canonical definition to state claims against.
-/

/-! ## A049946.P12569174386758785590

`A049938(n+1)+A049942(n+1)-A049934(n+1)`
-/

namespace A049946.P12569174386758785590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049942 (n + 1) - A049934 (n + 1))

end

end A049946.P12569174386758785590

/-! ## A049946.P18226150827042968800

`A049934(n+1)+A049962(n+1)-A049950(n+1)`
-/

namespace A049946.P18226150827042968800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049962 (n + 1) - A049950 (n + 1))

end

end A049946.P18226150827042968800

/-! ## A049946.P17810112970052326082

`A049958(n+1)+A049958(n+1)-A049970(n+1)`
-/

namespace A049946.P17810112970052326082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049970 (n + 1))

end

end A049946.P17810112970052326082

/-! ## A049946.P2695882237554146818

`2*A049942(n+1)-A049938(n+1)`
-/

namespace A049946.P2695882237554146818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049942 (n + 1) - A049938 (n + 1)

end

end A049946.P2695882237554146818

/-! ## A049946.P6173904182398359027

`2*A049958(n+1)-A049970(n+1)`
-/

namespace A049946.P6173904182398359027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049970 (n + 1)

end

end A049946.P6173904182398359027

/-! ## A049946.P12572222283967186075

`2*A049962(n+1)-A049978(n+1)`
-/

namespace A049946.P12572222283967186075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049962 (n + 1) - A049978 (n + 1)

end

end A049946.P12572222283967186075

/-!
# A049947: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049947, there is no canonical definition to state claims against.
-/

/-! ## A049947.P2976818079632463397

`A049939(n+1)+A049943(n+1)-A049935(n+1)`
-/

namespace A049947.P2976818079632463397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049943 (n + 1) - A049935 (n + 1))

end

end A049947.P2976818079632463397

/-! ## A049947.P6146805948825665797

`A049943(n+1)+A049955(n+1)-A049951(n+1)`
-/

namespace A049947.P6146805948825665797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049943 (n + 1) + (A049955 (n + 1) - A049951 (n + 1))

end

end A049947.P6146805948825665797

/-! ## A049947.P1882394385698640148

`2*A049943(n+1)-A049939(n+1)`
-/

namespace A049947.P1882394385698640148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049943 (n + 1) - A049939 (n + 1)

end

end A049947.P1882394385698640148

/-! ## A049947.P4699526809579877150

`A049939(n+1)+A049959(n+1)-A049951(n+1)`
-/

namespace A049947.P4699526809579877150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049959 (n + 1) - A049951 (n + 1))

end

end A049947.P4699526809579877150

/-! ## A049947.P16089491799958758926

`A049959(n+1)+A049959(n+1)-A049971(n+1)`
-/

namespace A049947.P16089491799958758926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049959 (n + 1) + (A049959 (n + 1) - A049971 (n + 1))

end

end A049947.P16089491799958758926

/-! ## A049947.P16241128564550910047

`A049963(n+1)+A049963(n+1)-A049979(n+1)`
-/

namespace A049947.P16241128564550910047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049963 (n + 1) + (A049963 (n + 1) - A049979 (n + 1))

end

end A049947.P16241128564550910047

/-! ## A049947.P310173026087195508

`2*A049959(n+1)-A049971(n+1)`
-/

namespace A049947.P310173026087195508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049959 (n + 1) - A049971 (n + 1)

end

end A049947.P310173026087195508

/-! ## A049947.P6186809433622023014

`2*A049963(n+1)-A049979(n+1)`
-/

namespace A049947.P6186809433622023014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049963 (n + 1) - A049979 (n + 1)

end

end A049947.P6186809433622023014

/-!
# A049948: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049948, there is no canonical definition to state claims against.
-/

/-! ## A049948.P16438957991430735345

`A049932(n+1)+A049952(n+1)-A049936(n+1)`
-/

namespace A049948.P16438957991430735345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049952 (n + 1) - A049936 (n + 1))

end

end A049948.P16438957991430735345

/-! ## A049948.P7133369196879182750

`A049932(n+1)+A049960(n+1)-A049944(n+1)`
-/

namespace A049948.P7133369196879182750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049960 (n + 1) - A049944 (n + 1))

end

end A049948.P7133369196879182750

/-! ## A049948.P2456810150369548532

`A049936(n+1)+A049952(n+1)-A049940(n+1)`
-/

namespace A049948.P2456810150369548532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049952 (n + 1) - A049940 (n + 1))

end

end A049948.P2456810150369548532

/-! ## A049948.P4664335253610362856

`A049940(n+1)+A049952(n+1)-A049944(n+1)`
-/

namespace A049948.P4664335253610362856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049952 (n + 1) - A049944 (n + 1))

end

end A049948.P4664335253610362856

/-! ## A049948.P12752640934436436236

`A049952(n+1)+A049952(n+1)-A049956(n+1)`
-/

namespace A049948.P12752640934436436236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049956 (n + 1))

end

end A049948.P12752640934436436236

/-! ## A049948.P16591319767254931389

`(A049964(n+1)+A049932(n+1))/2`
-/

namespace A049948.P16591319767254931389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049964 (n + 1) + A049932 (n + 1) : ℚ) / 2

end

end A049948.P16591319767254931389

/-! ## A049948.P7633385906716167057

`2*A049952(n+1)-A049956(n+1)`
-/

namespace A049948.P7633385906716167057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049956 (n + 1)

end

end A049948.P7633385906716167057

/-!
# A049949: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049949, there is no canonical definition to state claims against.
-/

/-! ## A049949.P5112859361509982692

`(A049965(n+1)+A049933(n+1))/2`
-/

namespace A049949.P5112859361509982692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049965 (n + 1) + A049933 (n + 1) : ℚ) / 2

end

end A049949.P5112859361509982692

/-! ## A049949.P8087728009942873275

`A049933(n+1)+A049953(n+1)-A049937(n+1)`
-/

namespace A049949.P8087728009942873275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049953 (n + 1) - A049937 (n + 1))

end

end A049949.P8087728009942873275

/-! ## A049949.P6534360088788521793

`A049933(n+1)+A049957(n+1)-A049941(n+1)`
-/

namespace A049949.P6534360088788521793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049957 (n + 1) - A049941 (n + 1))

end

end A049949.P6534360088788521793

/-! ## A049949.P14030769939284489497

`A049937(n+1)+A049953(n+1)-A049941(n+1)`
-/

namespace A049949.P14030769939284489497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049953 (n + 1) - A049941 (n + 1))

end

end A049949.P14030769939284489497

/-! ## A049949.P14991681338287796488

`A049937(n+1)+A049957(n+1)-A049945(n+1)`
-/

namespace A049949.P14991681338287796488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049957 (n + 1) - A049945 (n + 1))

end

end A049949.P14991681338287796488

/-! ## A049949.P10752880569607923009

`A049941(n+1)+A049953(n+1)-A049945(n+1)`
-/

namespace A049949.P10752880569607923009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049953 (n + 1) - A049945 (n + 1))

end

end A049949.P10752880569607923009

/-! ## A049949.P16664584370840924806

`A049933(n+1)+A049973(n+1)-A049957(n+1)`
-/

namespace A049949.P16664584370840924806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049973 (n + 1) - A049957 (n + 1))

end

end A049949.P16664584370840924806

/-! ## A049949.P162233765189749923

`A049953(n+1)+A049953(n+1)-A049957(n+1)`
-/

namespace A049949.P162233765189749923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049953 (n + 1) - A049957 (n + 1))

end

end A049949.P162233765189749923

/-! ## A049949.P6166416803272602375

`2*A049953(n+1)-A049957(n+1)`
-/

namespace A049949.P6166416803272602375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049953 (n + 1) - A049957 (n + 1)

end

end A049949.P6166416803272602375

/-!
# A049950: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049950, there is no canonical definition to state claims against.
-/

/-! ## A049950.P2950296317703833465

`A049934(n+1)+A049954(n+1)-A049938(n+1)`
-/

namespace A049950.P2950296317703833465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049954 (n + 1) - A049938 (n + 1))

end

end A049950.P2950296317703833465

/-! ## A049950.P11460245011111006737

`A049934(n+1)+A049958(n+1)-A049942(n+1)`
-/

namespace A049950.P11460245011111006737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049958 (n + 1) - A049942 (n + 1))

end

end A049950.P11460245011111006737

/-! ## A049950.P9489117605103316897

`A049938(n+1)+A049954(n+1)-A049942(n+1)`
-/

namespace A049950.P9489117605103316897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049954 (n + 1) - A049942 (n + 1))

end

end A049950.P9489117605103316897

/-! ## A049950.P6615986760099108131

`A049954(n+1)+A049954(n+1)-A049958(n+1)`
-/

namespace A049950.P6615986760099108131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049958 (n + 1))

end

end A049950.P6615986760099108131

/-! ## A049950.P4977104813481254529

`(A049966(n+1)+A049934(n+1))/2`
-/

namespace A049950.P4977104813481254529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049966 (n + 1) + A049934 (n + 1) : ℚ) / 2

end

end A049950.P4977104813481254529

/-! ## A049950.P17317947834594050219

`2*A049954(n+1)-A049958(n+1)`
-/

namespace A049950.P17317947834594050219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049958 (n + 1)

end

end A049950.P17317947834594050219

/-!
# A049951: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), with a(1) = 1, a(2) = 2, and a(3) = 1.

The programs for A049951, there is no canonical definition to state claims against.
-/

/-! ## A049951.P6713104880876254252

`A049935(n+1)+A049955(n+1)-A049939(n+1)`
-/

namespace A049951.P6713104880876254252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049955 (n + 1) - A049939 (n + 1))

end

end A049951.P6713104880876254252

/-! ## A049951.P17275936892757818805

`(A049967(n+1)+A049935(n+1))/2`
-/

namespace A049951.P17275936892757818805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049967 (n + 1) + A049935 (n + 1) : ℚ) / 2

end

end A049951.P17275936892757818805

/-! ## A049951.P7741277439125447559

`2*A049955(n+1)-A049959(n+1)`
-/

namespace A049951.P7741277439125447559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049959 (n + 1)

end

end A049951.P7741277439125447559

/-! ## A049951.P5070643101819575848

`A049903(n+1)/A049923(n+1)*A049971(n+1)`
-/

namespace A049951.P5070643101819575848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049903 (n + 1) : ℚ) / (A049923 (n + 1) : ℚ) * (A049971 (n + 1) : ℚ)

end

end A049951.P5070643101819575848

/-! ## A049951.P5048747594721550449

`round(2*A049971(n+1)/3)`
-/

namespace A049951.P5048747594721550449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A049971 (n + 1) : ℚ) / 3)

end

end A049951.P5048747594721550449

/-!
# A049952: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049952, there is no canonical definition to state claims against.
-/

/-! ## A049952.P13974491678063891195

`A049936(n+1)+A049948(n+1)-A049932(n+1)`
-/

namespace A049952.P13974491678063891195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049948 (n + 1) - A049932 (n + 1))

end

end A049952.P13974491678063891195

/-! ## A049952.P17767984389865987359

`A049932(n+1)+A049960(n+1)-A049940(n+1)`
-/

namespace A049952.P17767984389865987359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049960 (n + 1) - A049940 (n + 1))

end

end A049952.P17767984389865987359

/-! ## A049952.P5063637670225678021

`A049940(n+1)+A049948(n+1)-A049936(n+1)`
-/

namespace A049952.P5063637670225678021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049948 (n + 1) - A049936 (n + 1))

end

end A049952.P5063637670225678021

/-! ## A049952.P16993060318844965593

`A049944(n+1)+A049948(n+1)-A049940(n+1)`
-/

namespace A049952.P16993060318844965593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049948 (n + 1) - A049940 (n + 1))

end

end A049952.P16993060318844965593

/-! ## A049952.P9468851819943884438

`(A049964(n+1)+A049940(n+1))/2`
-/

namespace A049952.P9468851819943884438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049964 (n + 1) + A049940 (n + 1) : ℚ) / 2

end

end A049952.P9468851819943884438

/-! ## A049952.P12128198913000778051

`(A049968(n+1)+A049936(n+1))/2`
-/

namespace A049952.P12128198913000778051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049968 (n + 1) + A049936 (n + 1) : ℚ) / 2

end

end A049952.P12128198913000778051

/-! ## A049952.P5879763455620261118

`(A049972(n+1)+A049932(n+1))/2`
-/

namespace A049952.P5879763455620261118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049972 (n + 1) + A049932 (n + 1) : ℚ) / 2

end

end A049952.P5879763455620261118

/-!
# A049953: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049953, there is no canonical definition to state claims against.
-/

/-! ## A049953.P5090421155795633309

`A049933(n+1)+A049957(n+1)-A049937(n+1)`
-/

namespace A049953.P5090421155795633309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049957 (n + 1) - A049937 (n + 1))

end

end A049953.P5090421155795633309

/-! ## A049953.P7041218984452986766

`A049937(n+1)+A049949(n+1)-A049933(n+1)`
-/

namespace A049953.P7041218984452986766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049949 (n + 1) - A049933 (n + 1))

end

end A049953.P7041218984452986766

/-! ## A049953.P16916054731605751274

`A049937(n+1)+A049957(n+1)-A049941(n+1)`
-/

namespace A049953.P16916054731605751274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049957 (n + 1) - A049941 (n + 1))

end

end A049953.P16916054731605751274

/-! ## A049953.P11666696065832556935

`A049941(n+1)+A049957(n+1)-A049945(n+1)`
-/

namespace A049953.P11666696065832556935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049957 (n + 1) - A049945 (n + 1))

end

end A049953.P11666696065832556935

/-! ## A049953.P17048386570384809059

`A049933(n+1)+A049977(n+1)-A049957(n+1)`
-/

namespace A049953.P17048386570384809059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049957 (n + 1))

end

end A049953.P17048386570384809059

/-! ## A049953.P17181352695685318389

`A049937(n+1)+A049973(n+1)-A049957(n+1)`
-/

namespace A049953.P17181352695685318389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049973 (n + 1) - A049957 (n + 1))

end

end A049953.P17181352695685318389

/-! ## A049953.P15429614292198474486

`A049949(n+1)+A049977(n+1)-A049973(n+1)`
-/

namespace A049953.P15429614292198474486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049949 (n + 1) + (A049977 (n + 1) - A049973 (n + 1))

end

end A049953.P15429614292198474486

/-! ## A049953.P1432068904165267535

`(A049957(n+1)+A049949(n+1))/2`
-/

namespace A049953.P1432068904165267535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049957 (n + 1) + A049949 (n + 1) : ℚ) / 2

end

end A049953.P1432068904165267535

/-! ## A049953.P4248452275344008416

`(A049969(n+1)+A049937(n+1))/2`
-/

namespace A049953.P4248452275344008416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049969 (n + 1) + A049937 (n + 1) : ℚ) / 2

end

end A049953.P4248452275344008416

/-! ## A049953.P7103009886238841803

`(A049973(n+1)+A049933(n+1))/2`
-/

namespace A049953.P7103009886238841803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049973 (n + 1) + A049933 (n + 1) : ℚ) / 2

end

end A049953.P7103009886238841803

/-!
# A049954: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049954, there is no canonical definition to state claims against.
-/

/-! ## A049954.P15849201804529230567

`A049934(n+1)+A049958(n+1)-A049938(n+1)`
-/

namespace A049954.P15849201804529230567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049958 (n + 1) - A049938 (n + 1))

end

end A049954.P15849201804529230567

/-! ## A049954.P13676235650356411021

`A049958(n+1)+A049958(n+1)-A049962(n+1)`
-/

namespace A049954.P13676235650356411021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049962 (n + 1))

end

end A049954.P13676235650356411021

/-! ## A049954.P13980992078234751063

`(A049958(n+1)+A049950(n+1))/2`
-/

namespace A049954.P13980992078234751063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049958 (n + 1) + A049950 (n + 1) : ℚ) / 2

end

end A049954.P13980992078234751063

/-! ## A049954.P14298598534319383158

`(A049966(n+1)+A049942(n+1))/2`
-/

namespace A049954.P14298598534319383158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049966 (n + 1) + A049942 (n + 1) : ℚ) / 2

end

end A049954.P14298598534319383158

/-! ## A049954.P11636315608952607815

`(A049970(n+1)+A049938(n+1))/2`
-/

namespace A049954.P11636315608952607815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049970 (n + 1) + A049938 (n + 1) : ℚ) / 2

end

end A049954.P11636315608952607815

/-! ## A049954.P11442682884162216411

`(A049974(n+1)+A049934(n+1))/2`
-/

namespace A049954.P11442682884162216411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049974 (n + 1) + A049934 (n + 1) : ℚ) / 2

end

end A049954.P11442682884162216411

/-! ## A049954.P13407745198527642559

`2*A049958(n+1)-A049962(n+1)`
-/

namespace A049954.P13407745198527642559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049962 (n + 1)

end

end A049954.P13407745198527642559

/-!
# A049955: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 2.

The programs for A049955, there is no canonical definition to state claims against.
-/

/-! ## A049955.P8205357735830805102

`A049939(n+1)+A049951(n+1)-A049935(n+1)`
-/

namespace A049955.P8205357735830805102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049951 (n + 1) - A049935 (n + 1))

end

end A049955.P8205357735830805102

/-! ## A049955.P13698246128383408525

`(A049959(n+1)+A049951(n+1))/2`
-/

namespace A049955.P13698246128383408525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049959 (n + 1) + A049951 (n + 1) : ℚ) / 2

end

end A049955.P13698246128383408525

/-! ## A049955.P6372466393690264485

`(A049967(n+1)+A049943(n+1))/2`
-/

namespace A049955.P6372466393690264485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049967 (n + 1) + A049943 (n + 1) : ℚ) / 2

end

end A049955.P6372466393690264485

/-! ## A049955.P624780023584444755

`(A049971(n+1)+A049939(n+1))/2`
-/

namespace A049955.P624780023584444755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049971 (n + 1) + A049939 (n + 1) : ℚ) / 2

end

end A049955.P624780023584444755

/-! ## A049955.P7381446197240681121

`(A049975(n+1)+A049935(n+1))/2`
-/

namespace A049955.P7381446197240681121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049975 (n + 1) + A049935 (n + 1) : ℚ) / 2

end

end A049955.P7381446197240681121

/-! ## A049955.P2543025864900813936

`A049935(n+1)+A049959(n+1)-A049939(n+1)`
-/

namespace A049955.P2543025864900813936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049959 (n + 1) - A049939 (n + 1))

end

end A049955.P2543025864900813936

/-! ## A049955.P10590393863511723129

`A049939(n+1)+A049979(n+1)-A049963(n+1)`
-/

namespace A049955.P10590393863511723129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049979 (n + 1) - A049963 (n + 1))

end

end A049955.P10590393863511723129

/-!
# A049956: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049956, there is no canonical definition to state claims against.
-/

/-! ## A049956.P15649892711527432606

`A049936(n+1)+A049952(n+1)-A049932(n+1)`
-/

namespace A049956.P15649892711527432606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049952 (n + 1) - A049932 (n + 1))

end

end A049956.P15649892711527432606

/-! ## A049956.P7315846159623128273

`A049940(n+1)+A049952(n+1)-A049936(n+1)`
-/

namespace A049956.P7315846159623128273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049952 (n + 1) - A049936 (n + 1))

end

end A049956.P7315846159623128273

/-! ## A049956.P8049948500236729436

`A049944(n+1)+A049952(n+1)-A049940(n+1)`
-/

namespace A049956.P8049948500236729436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049952 (n + 1) - A049940 (n + 1))

end

end A049956.P8049948500236729436

/-! ## A049956.P14449557335121421973

`A049952(n+1)+A049952(n+1)-A049948(n+1)`
-/

namespace A049956.P14449557335121421973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049948 (n + 1))

end

end A049956.P14449557335121421973

/-! ## A049956.P5494541407183809670

`2*A049952(n+1)-A049948(n+1)`
-/

namespace A049956.P5494541407183809670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049948 (n + 1)

end

end A049956.P5494541407183809670

/-! ## A049956.P5501366357375145773

`(A049960(n+1)+A049952(n+1))/2`
-/

namespace A049956.P5501366357375145773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049960 (n + 1) + A049952 (n + 1) : ℚ) / 2

end

end A049956.P5501366357375145773

/-! ## A049956.P10434872559599060895

`(A049968(n+1)+A049944(n+1))/2`
-/

namespace A049956.P10434872559599060895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049968 (n + 1) + A049944 (n + 1) : ℚ) / 2

end

end A049956.P10434872559599060895

/-! ## A049956.P10504974157429677236

`(A049972(n+1)+A049940(n+1))/2`
-/

namespace A049956.P10504974157429677236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049972 (n + 1) + A049940 (n + 1) : ℚ) / 2

end

end A049956.P10504974157429677236

/-! ## A049956.P13100549571199979452

`(A049976(n+1)+A049936(n+1))/2`
-/

namespace A049956.P13100549571199979452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049976 (n + 1) + A049936 (n + 1) : ℚ) / 2

end

end A049956.P13100549571199979452

/-!
# A049957: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049957, there is no canonical definition to state claims against.
-/

/-! ## A049957.P8225539561861319205

`A049937(n+1)+A049953(n+1)-A049933(n+1)`
-/

namespace A049957.P8225539561861319205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049953 (n + 1) - A049933 (n + 1))

end

end A049957.P8225539561861319205

/-! ## A049957.P10382463152656217144

`A049941(n+1)+A049953(n+1)-A049937(n+1)`
-/

namespace A049957.P10382463152656217144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049953 (n + 1) - A049937 (n + 1))

end

end A049957.P10382463152656217144

/-! ## A049957.P16002673783300624004

`A049945(n+1)+A049949(n+1)-A049937(n+1)`
-/

namespace A049957.P16002673783300624004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049949 (n + 1) - A049937 (n + 1))

end

end A049957.P16002673783300624004

/-! ## A049957.P12284589312030894811

`A049945(n+1)+A049953(n+1)-A049941(n+1)`
-/

namespace A049957.P12284589312030894811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049953 (n + 1) - A049941 (n + 1))

end

end A049957.P12284589312030894811

/-! ## A049957.P18403723231364958647

`A049933(n+1)+A049973(n+1)-A049949(n+1)`
-/

namespace A049957.P18403723231364958647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049973 (n + 1) - A049949 (n + 1))

end

end A049957.P18403723231364958647

/-! ## A049957.P10206894677166296794

`A049933(n+1)+A049977(n+1)-A049953(n+1)`
-/

namespace A049957.P10206894677166296794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049953 (n + 1))

end

end A049957.P10206894677166296794

/-! ## A049957.P9868511782628838006

`A049953(n+1)+A049953(n+1)-A049949(n+1)`
-/

namespace A049957.P9868511782628838006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049953 (n + 1) - A049949 (n + 1))

end

end A049957.P9868511782628838006

/-! ## A049957.P2323185845832752094

`2*A049953(n+1)-A049949(n+1)`
-/

namespace A049957.P2323185845832752094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049953 (n + 1) - A049949 (n + 1)

end

end A049957.P2323185845832752094

/-! ## A049957.P13385725003379230254

`(A049961(n+1)+A049953(n+1))/2`
-/

namespace A049957.P13385725003379230254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049961 (n + 1) + A049953 (n + 1) : ℚ) / 2

end

end A049957.P13385725003379230254

/-! ## A049957.P336964659987899782

`(A049977(n+1)+A049937(n+1))/2`
-/

namespace A049957.P336964659987899782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049977 (n + 1) + A049937 (n + 1) : ℚ) / 2

end

end A049957.P336964659987899782

/-!
# A049958: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049958, there is no canonical definition to state claims against.
-/

/-! ## A049958.P15822936594929288349

`A049938(n+1)+A049954(n+1)-A049934(n+1)`
-/

namespace A049958.P15822936594929288349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049954 (n + 1) - A049934 (n + 1))

end

end A049958.P15822936594929288349

/-! ## A049958.P1010026970855272499

`A049942(n+1)+A049954(n+1)-A049938(n+1)`
-/

namespace A049958.P1010026970855272499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049942 (n + 1) + (A049954 (n + 1) - A049938 (n + 1))

end

end A049958.P1010026970855272499

/-! ## A049958.P6448874089553333528

`A049954(n+1)+A049954(n+1)-A049950(n+1)`
-/

namespace A049958.P6448874089553333528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049950 (n + 1))

end

end A049958.P6448874089553333528

/-! ## A049958.P11724116134855422013

`2*A049954(n+1)-A049950(n+1)`
-/

namespace A049958.P11724116134855422013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049950 (n + 1)

end

end A049958.P11724116134855422013

/-! ## A049958.P7406683252366169000

`(A049962(n+1)+A049954(n+1))/2`
-/

namespace A049958.P7406683252366169000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049962 (n + 1) + A049954 (n + 1) : ℚ) / 2

end

end A049958.P7406683252366169000

/-! ## A049958.P14529331352623906947

`(A049970(n+1)+A049946(n+1))/2`
-/

namespace A049958.P14529331352623906947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049970 (n + 1) + A049946 (n + 1) : ℚ) / 2

end

end A049958.P14529331352623906947

/-! ## A049958.P1140252469791660995

`(A049974(n+1)+A049942(n+1))/2`
-/

namespace A049958.P1140252469791660995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049974 (n + 1) + A049942 (n + 1) : ℚ) / 2

end

end A049958.P1140252469791660995

/-! ## A049958.P12945599981335836793

`(A049978(n+1)+A049938(n+1))/2`
-/

namespace A049958.P12945599981335836793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049978 (n + 1) + A049938 (n + 1) : ℚ) / 2

end

end A049958.P12945599981335836793

/-!
# A049959: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 3.

The programs for A049959, there is no canonical definition to state claims against.
-/

/-! ## A049959.P7128133782862837765

`2*A049955(n+1)-A049951(n+1)`
-/

namespace A049959.P7128133782862837765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049951 (n + 1)

end

end A049959.P7128133782862837765

/-! ## A049959.P10881088317865496743

`A020639(A004278(n+1))*A049935(n+1)`
-/

namespace A049959.P10881088317865496743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004278 (n + 1)).toNat * A049935 (n + 1)

end

end A049959.P10881088317865496743

/-! ## A049959.P8973335064527656231

`A020639(A055721(n+1))*A049935(n+1)`
-/

namespace A049959.P8973335064527656231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055721 (n + 1)).toNat * A049935 (n + 1)

end

end A049959.P8973335064527656231

/-! ## A049959.P2148557648272698552

`A049939(n+1)+A049955(n+1)-A049935(n+1)`
-/

namespace A049959.P2148557648272698552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049955 (n + 1) - A049935 (n + 1))

end

end A049959.P2148557648272698552

/-! ## A049959.P17208071046015566488

`A049911(n+1)/A049887(n+1)*A049935(n+1)`
-/

namespace A049959.P17208071046015566488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049911 (n + 1) : ℚ) / (A049887 (n + 1) : ℚ) * (A049935 (n + 1) : ℚ)

end

end A049959.P17208071046015566488

/-! ## A049959.P1169648993596101711

`(A049979(n+1)+A049939(n+1))/2`
-/

namespace A049959.P1169648993596101711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049979 (n + 1) + A049939 (n + 1) : ℚ) / 2

end

end A049959.P1169648993596101711

/-! ## A049959.P1105801114777421562

`A020639(A002093(n+1))*A049935(n+1)`
-/

namespace A049959.P1105801114777421562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002093 (n + 1)).toNat * A049935 (n + 1)

end

end A049959.P1105801114777421562

/-! ## A049959.P16174018660464911303

`A020639(A175381(n+1))*A049935(n+1)`
-/

namespace A049959.P16174018660464911303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175381 (n + 1)).toNat * A049935 (n + 1)

end

end A049959.P16174018660464911303

/-! ## A049959.P1862846494786706746

`A020639(A200678(n+1))*A049935(n+1)`
-/

namespace A049959.P1862846494786706746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A200678 (n + 1)).toNat * A049935 (n + 1)

end

end A049959.P1862846494786706746

/-!
# A049960: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1 and a(2) = 2.

The programs for A049960, there is no canonical definition to state claims against.
-/

/-! ## A049960.P11171722053531385001

`A049940(n+1)+A049952(n+1)-A049932(n+1)`
-/

namespace A049960.P11171722053531385001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049952 (n + 1) - A049932 (n + 1))

end

end A049960.P11171722053531385001

/-! ## A049960.P14807057998021065620

`A049944(n+1)+A049948(n+1)-A049932(n+1)`
-/

namespace A049960.P14807057998021065620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049948 (n + 1) - A049932 (n + 1))

end

end A049960.P14807057998021065620

/-! ## A049960.P1119513936500575623

`A049944(n+1)+A049952(n+1)-A049936(n+1)`
-/

namespace A049960.P1119513936500575623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049952 (n + 1) - A049936 (n + 1))

end

end A049960.P1119513936500575623

/-! ## A049960.P2596004255815360031

`A049944(n+1)+A049964(n+1)-A049948(n+1)`
-/

namespace A049960.P2596004255815360031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049944 (n + 1) + (A049964 (n + 1) - A049948 (n + 1))

end

end A049960.P2596004255815360031

/-! ## A049960.P14299653203289971692

`A049956(n+1)+A049956(n+1)-A049952(n+1)`
-/

namespace A049960.P14299653203289971692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049956 (n + 1) + (A049956 (n + 1) - A049952 (n + 1))

end

end A049960.P14299653203289971692

/-! ## A049960.P1154499368095283120

`2*A049956(n+1)-A049952(n+1)`
-/

namespace A049960.P1154499368095283120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049956 (n + 1) - A049952 (n + 1)

end

end A049960.P1154499368095283120

/-!
# A049961: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 3, where m = 2^(p+1) + 2 - n and p is the smallest number such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = 2.

The programs for A049961, there is no canonical definition to state claims against.
-/

/-! ## A049961.P12321075465807666732

`A049937(n+1)+A049957(n+1)-A049933(n+1)`
-/

namespace A049961.P12321075465807666732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049957 (n + 1) - A049933 (n + 1))

end

end A049961.P12321075465807666732

/-! ## A049961.P11116009065694863551

`A049941(n+1)+A049953(n+1)-A049933(n+1)`
-/

namespace A049961.P11116009065694863551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049953 (n + 1) - A049933 (n + 1))

end

end A049961.P11116009065694863551

/-! ## A049961.P5095625925980885210

`A049941(n+1)+A049957(n+1)-A049937(n+1)`
-/

namespace A049961.P5095625925980885210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049941 (n + 1) + (A049957 (n + 1) - A049937 (n + 1))

end

end A049961.P5095625925980885210

/-! ## A049961.P2786395619104483019

`A049945(n+1)+A049949(n+1)-A049933(n+1)`
-/

namespace A049961.P2786395619104483019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049949 (n + 1) - A049933 (n + 1))

end

end A049961.P2786395619104483019

/-! ## A049961.P16464338229457635266

`A049945(n+1)+A049957(n+1)-A049941(n+1)`
-/

namespace A049961.P16464338229457635266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049957 (n + 1) - A049941 (n + 1))

end

end A049961.P16464338229457635266

/-! ## A049961.P1381738748225414019

`A049933(n+1)+A049977(n+1)-A049949(n+1)`
-/

namespace A049961.P1381738748225414019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049949 (n + 1))

end

end A049961.P1381738748225414019

/-! ## A049961.P18375291103399446623

`A049937(n+1)+A049973(n+1)-A049949(n+1)`
-/

namespace A049961.P18375291103399446623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049973 (n + 1) - A049949 (n + 1))

end

end A049961.P18375291103399446623

/-! ## A049961.P1360862557729152985

`A049945(n+1)+A049973(n+1)-A049957(n+1)`
-/

namespace A049961.P1360862557729152985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049945 (n + 1) + (A049973 (n + 1) - A049957 (n + 1))

end

end A049961.P1360862557729152985

/-! ## A049961.P11996770554654296677

`A049957(n+1)+A049957(n+1)-A049953(n+1)`
-/

namespace A049961.P11996770554654296677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049953 (n + 1))

end

end A049961.P11996770554654296677

/-! ## A049961.P4162401586429983108

`2*A049957(n+1)-A049953(n+1)`
-/

namespace A049961.P4162401586429983108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049953 (n + 1)

end

end A049961.P4162401586429983108

/-! ## A049961.P14869536833890934822

`(A049977(n+1)+A049945(n+1))/2`
-/

namespace A049961.P14869536833890934822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049977 (n + 1) + A049945 (n + 1) : ℚ) / 2

end

end A049961.P14869536833890934822

/-!
# A049962: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 2, and a(3) = 4.

The programs for A049962, there is no canonical definition to state claims against.
-/

/-! ## A049962.P926519615929892031

`A049938(n+1)+A049958(n+1)-A049934(n+1)`
-/

namespace A049962.P926519615929892031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049958 (n + 1) - A049934 (n + 1))

end

end A049962.P926519615929892031

/-! ## A049962.P1414711205784558266

`A049942(n+1)+A049954(n+1)-A049934(n+1)`
-/

namespace A049962.P1414711205784558266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049942 (n + 1) + (A049954 (n + 1) - A049934 (n + 1))

end

end A049962.P1414711205784558266

/-! ## A049962.P1870323086319439994

`A049946(n+1)+A049950(n+1)-A049934(n+1)`
-/

namespace A049962.P1870323086319439994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049946 (n + 1) + (A049950 (n + 1) - A049934 (n + 1))

end

end A049962.P1870323086319439994

/-! ## A049962.P17709687280220069028

`A049958(n+1)+A049958(n+1)-A049954(n+1)`
-/

namespace A049962.P17709687280220069028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049954 (n + 1))

end

end A049962.P17709687280220069028

/-! ## A049962.P4283854877553349595

`2*A049958(n+1)-A049954(n+1)`
-/

namespace A049962.P4283854877553349595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049954 (n + 1)

end

end A049962.P4283854877553349595

/-! ## A049962.P13812086068971883126

`(A049978(n+1)+A049946(n+1))/2`
-/

namespace A049962.P13812086068971883126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049978 (n + 1) + A049946 (n + 1) : ℚ) / 2

end

end A049962.P13812086068971883126

/-!
# A049963: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1, a(2) = 2 and a(3) = 4.

The programs for A049963, there is no canonical definition to state claims against.
-/

/-! ## A049963.P16284867110335314166

`A049939(n+1)+A049959(n+1)-A049935(n+1)`
-/

namespace A049963.P16284867110335314166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049959 (n + 1) - A049935 (n + 1))

end

end A049963.P16284867110335314166

/-! ## A049963.P12056234715606184993

`A049943(n+1)+A049955(n+1)-A049935(n+1)`
-/

namespace A049963.P12056234715606184993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049943 (n + 1) + (A049955 (n + 1) - A049935 (n + 1))

end

end A049963.P12056234715606184993

/-! ## A049963.P13956382707030530984

`A049947(n+1)+A049951(n+1)-A049935(n+1)`
-/

namespace A049963.P13956382707030530984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049947 (n + 1) + (A049951 (n + 1) - A049935 (n + 1))

end

end A049963.P13956382707030530984

/-! ## A049963.P2955904134359007303

`A049959(n+1)+A049959(n+1)-A049955(n+1)`
-/

namespace A049963.P2955904134359007303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049959 (n + 1) + (A049959 (n + 1) - A049955 (n + 1))

end

end A049963.P2955904134359007303

/-! ## A049963.P15756438263504373398

`2*A049959(n+1)-A049955(n+1)`
-/

namespace A049963.P15756438263504373398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049959 (n + 1) - A049955 (n + 1)

end

end A049963.P15756438263504373398

/-! ## A049963.P6765505232016769079

`(A049979(n+1)+A049947(n+1))/2`
-/

namespace A049963.P6765505232016769079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049979 (n + 1) + A049947 (n + 1) : ℚ) / 2

end

end A049963.P6765505232016769079

/-!
# A049964: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049964, there is no canonical definition to state claims against.
-/

/-! ## A049964.P15008557016115374317

`A049932(n+1)+A049968(n+1)-A049936(n+1)`
-/

namespace A049964.P15008557016115374317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049968 (n + 1) - A049936 (n + 1))

end

end A049964.P15008557016115374317

/-! ## A049964.P104109158702442005

`A049948(n+1)+A049948(n+1)-A049932(n+1)`
-/

namespace A049964.P104109158702442005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049948 (n + 1) - A049932 (n + 1))

end

end A049964.P104109158702442005

/-! ## A049964.P13618429748454945664

`A049948(n+1)+A049952(n+1)-A049936(n+1)`
-/

namespace A049964.P13618429748454945664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049952 (n + 1) - A049936 (n + 1))

end

end A049964.P13618429748454945664

/-! ## A049964.P4445093590247916545

`A049948(n+1)+A049960(n+1)-A049944(n+1)`
-/

namespace A049964.P4445093590247916545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049960 (n + 1) - A049944 (n + 1))

end

end A049964.P4445093590247916545

/-! ## A049964.P16367377248325141922

`A049952(n+1)+A049952(n+1)-A049940(n+1)`
-/

namespace A049964.P16367377248325141922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049940 (n + 1))

end

end A049964.P16367377248325141922

/-! ## A049964.P7692220603614502652

`A049968(n+1)+A049968(n+1)-A049972(n+1)`
-/

namespace A049964.P7692220603614502652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049968 (n + 1) + (A049968 (n + 1) - A049972 (n + 1))

end

end A049964.P7692220603614502652

/-! ## A049964.P13927194822710370306

`2*A049948(n+1)-A049932(n+1)`
-/

namespace A049964.P13927194822710370306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049948 (n + 1) - A049932 (n + 1)

end

end A049964.P13927194822710370306

/-! ## A049964.P12454464377040216826

`2*A049952(n+1)-A049940(n+1)`
-/

namespace A049964.P12454464377040216826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049940 (n + 1)

end

end A049964.P12454464377040216826

/-! ## A049964.P4298603181386167569

`2*A049968(n+1)-A049972(n+1)`
-/

namespace A049964.P4298603181386167569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049968 (n + 1) - A049972 (n + 1)

end

end A049964.P4298603181386167569

/-!
# A049965: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049965, there is no canonical definition to state claims against.
-/

/-! ## A049965.P195027255139625282

`2*A049949(n+1)-A049933(n+1)`
-/

namespace A049965.P195027255139625282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049949 (n + 1) - A049933 (n + 1)

end

end A049965.P195027255139625282

/-! ## A049965.P14276775005617095052

`A049933(n+1)+A049969(n+1)-A049937(n+1)`
-/

namespace A049965.P14276775005617095052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049969 (n + 1) - A049937 (n + 1))

end

end A049965.P14276775005617095052

/-! ## A049965.P4468184048162763521

`A049949(n+1)+A049953(n+1)-A049937(n+1)`
-/

namespace A049965.P4468184048162763521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049949 (n + 1) + (A049953 (n + 1) - A049937 (n + 1))

end

end A049965.P4468184048162763521

/-! ## A049965.P1736550324699177988

`A049933(n+1)+A049977(n+1)-A049945(n+1)`
-/

namespace A049965.P1736550324699177988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049945 (n + 1))

end

end A049965.P1736550324699177988

/-! ## A049965.P10339750264693598933

`A049937(n+1)+A049973(n+1)-A049945(n+1)`
-/

namespace A049965.P10339750264693598933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049973 (n + 1) - A049945 (n + 1))

end

end A049965.P10339750264693598933

/-! ## A049965.P13780564778845052652

`A049953(n+1)+A049953(n+1)-A049941(n+1)`
-/

namespace A049965.P13780564778845052652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049953 (n + 1) - A049941 (n + 1))

end

end A049965.P13780564778845052652

/-! ## A049965.P4118024543543574567

`A049953(n+1)+A049957(n+1)-A049945(n+1)`
-/

namespace A049965.P4118024543543574567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049957 (n + 1) - A049945 (n + 1))

end

end A049965.P4118024543543574567

/-! ## A049965.P3965489696814693156

`A049969(n+1)+A049969(n+1)-A049973(n+1)`
-/

namespace A049965.P3965489696814693156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049969 (n + 1) + (A049969 (n + 1) - A049973 (n + 1))

end

end A049965.P3965489696814693156

/-! ## A049965.P11110813487874807403

`2*A049953(n+1)-A049941(n+1)`
-/

namespace A049965.P11110813487874807403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049953 (n + 1) - A049941 (n + 1)

end

end A049965.P11110813487874807403

/-! ## A049965.P4226796296696142009

`2*A049969(n+1)-A049973(n+1)`
-/

namespace A049965.P4226796296696142009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049969 (n + 1) - A049973 (n + 1)

end

end A049965.P4226796296696142009

/-!
# A049966: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049966, there is no canonical definition to state claims against.
-/

/-! ## A049966.P2524544277858109868

`A049934(n+1)+A049970(n+1)-A049938(n+1)`
-/

namespace A049966.P2524544277858109868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049970 (n + 1) - A049938 (n + 1))

end

end A049966.P2524544277858109868

/-! ## A049966.P4544009899999960421

`A049950(n+1)+A049950(n+1)-A049934(n+1)`
-/

namespace A049966.P4544009899999960421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049950 (n + 1) + (A049950 (n + 1) - A049934 (n + 1))

end

end A049966.P4544009899999960421

/-! ## A049966.P11748707001134460280

`A049950(n+1)+A049954(n+1)-A049938(n+1)`
-/

namespace A049966.P11748707001134460280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049950 (n + 1) + (A049954 (n + 1) - A049938 (n + 1))

end

end A049966.P11748707001134460280

/-! ## A049966.P11155263701826600780

`A049954(n+1)+A049954(n+1)-A049942(n+1)`
-/

namespace A049966.P11155263701826600780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049942 (n + 1))

end

end A049966.P11155263701826600780

/-! ## A049966.P6326325669085381049

`A049970(n+1)+A049970(n+1)-A049974(n+1)`
-/

namespace A049966.P6326325669085381049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049970 (n + 1) + (A049970 (n + 1) - A049974 (n + 1))

end

end A049966.P6326325669085381049

/-! ## A049966.P13254281957313854529

`2*A049950(n+1)-A049934(n+1)`
-/

namespace A049966.P13254281957313854529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049950 (n + 1) - A049934 (n + 1)

end

end A049966.P13254281957313854529

/-! ## A049966.P14188970120839323560

`2*A049954(n+1)-A049942(n+1)`
-/

namespace A049966.P14188970120839323560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049942 (n + 1)

end

end A049966.P14188970120839323560

/-! ## A049966.P12689566657343949422

`2*A049970(n+1)-A049974(n+1)`
-/

namespace A049966.P12689566657343949422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049970 (n + 1) - A049974 (n + 1)

end

end A049966.P12689566657343949422

/-!
# A049967: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 1.

The programs for A049967, there is no canonical definition to state claims against.
-/

/-! ## A049967.P8903448598475746588

`A049951(n+1)+A049951(n+1)-A049935(n+1)`
-/

namespace A049967.P8903448598475746588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049951 (n + 1) + (A049951 (n + 1) - A049935 (n + 1))

end

end A049967.P8903448598475746588

/-! ## A049967.P5079146089252140250

`A049951(n+1)+A049955(n+1)-A049939(n+1)`
-/

namespace A049967.P5079146089252140250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049951 (n + 1) + (A049955 (n + 1) - A049939 (n + 1))

end

end A049967.P5079146089252140250

/-! ## A049967.P4571108505740526153

`A049955(n+1)+A049955(n+1)-A049943(n+1)`
-/

namespace A049967.P4571108505740526153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049955 (n + 1) + (A049955 (n + 1) - A049943 (n + 1))

end

end A049967.P4571108505740526153

/-! ## A049967.P3894101353702071934

`2*A049951(n+1)-A049935(n+1)`
-/

namespace A049967.P3894101353702071934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049951 (n + 1) - A049935 (n + 1)

end

end A049967.P3894101353702071934

/-! ## A049967.P987314766201306963

`2*A049955(n+1)-A049943(n+1)`
-/

namespace A049967.P987314766201306963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049943 (n + 1)

end

end A049967.P987314766201306963

/-! ## A049967.P4699997255813556185

`A049935(n+1)+A049971(n+1)-A049939(n+1)`
-/

namespace A049967.P4699997255813556185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049971 (n + 1) - A049939 (n + 1))

end

end A049967.P4699997255813556185

/-! ## A049967.P17009993711089504398

`A049939(n+1)+A049971(n+1)-A049943(n+1)`
-/

namespace A049967.P17009993711089504398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049971 (n + 1) - A049943 (n + 1))

end

end A049967.P17009993711089504398

/-! ## A049967.P18427210578527580637

`A049971(n+1)+A049971(n+1)-A049975(n+1)`
-/

namespace A049967.P18427210578527580637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049971 (n + 1) + (A049971 (n + 1) - A049975 (n + 1))

end

end A049967.P18427210578527580637

/-! ## A049967.P9555130143557278987

`2*A049971(n+1)-A049975(n+1)`
-/

namespace A049967.P9555130143557278987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049971 (n + 1) - A049975 (n + 1)

end

end A049967.P9555130143557278987

/-!
# A049968: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049968, there is no canonical definition to state claims against.
-/

/-! ## A049968.P7018268926361192650

`A049932(n+1)+A049972(n+1)-A049936(n+1)`
-/

namespace A049968.P7018268926361192650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049932 (n + 1) + (A049972 (n + 1) - A049936 (n + 1))

end

end A049968.P7018268926361192650

/-! ## A049968.P4920070861544166147

`A049936(n+1)+A049964(n+1)-A049932(n+1)`
-/

namespace A049968.P4920070861544166147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049964 (n + 1) - A049932 (n + 1))

end

end A049968.P4920070861544166147

/-! ## A049968.P9090421517034956829

`A049948(n+1)+A049952(n+1)-A049932(n+1)`
-/

namespace A049968.P9090421517034956829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049952 (n + 1) - A049932 (n + 1))

end

end A049968.P9090421517034956829

/-! ## A049968.P16518014622944225049

`A049952(n+1)+A049952(n+1)-A049936(n+1)`
-/

namespace A049968.P16518014622944225049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049936 (n + 1))

end

end A049968.P16518014622944225049

/-! ## A049968.P498978766174653876

`A049956(n+1)+A049956(n+1)-A049944(n+1)`
-/

namespace A049968.P498978766174653876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049956 (n + 1) + (A049956 (n + 1) - A049944 (n + 1))

end

end A049968.P498978766174653876

/-! ## A049968.P2372915328552582872

`2*A049952(n+1)-A049936(n+1)`
-/

namespace A049968.P2372915328552582872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049936 (n + 1)

end

end A049968.P2372915328552582872

/-! ## A049968.P4286369401173730244

`2*A049956(n+1)-A049944(n+1)`
-/

namespace A049968.P4286369401173730244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049956 (n + 1) - A049944 (n + 1)

end

end A049968.P4286369401173730244

/-! ## A049968.P10791241839896776708

`(A049972(n+1)+A049964(n+1))/2`
-/

namespace A049968.P10791241839896776708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049972 (n + 1) + A049964 (n + 1) : ℚ) / 2

end

end A049968.P10791241839896776708

/-! ## A049968.P7962826431353922230

`2*A049972(n+1)-A049976(n+1)`
-/

namespace A049968.P7962826431353922230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049972 (n + 1) - A049976 (n + 1)

end

end A049968.P7962826431353922230

/-!
# A049969: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049969, there is no canonical definition to state claims against.
-/

/-! ## A049969.P5634614471258308206

`A049933(n+1)+A049973(n+1)-A049937(n+1)`
-/

namespace A049969.P5634614471258308206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049973 (n + 1) - A049937 (n + 1))

end

end A049969.P5634614471258308206

/-! ## A049969.P2152316334224524413

`A049937(n+1)+A049965(n+1)-A049933(n+1)`
-/

namespace A049969.P2152316334224524413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049965 (n + 1) - A049933 (n + 1))

end

end A049969.P2152316334224524413

/-! ## A049969.P17795753965464303555

`A049949(n+1)+A049957(n+1)-A049937(n+1)`
-/

namespace A049969.P17795753965464303555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049949 (n + 1) + (A049957 (n + 1) - A049937 (n + 1))

end

end A049969.P17795753965464303555

/-! ## A049969.P17126923942338161019

`A049953(n+1)+A049953(n+1)-A049937(n+1)`
-/

namespace A049969.P17126923942338161019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049953 (n + 1) - A049937 (n + 1))

end

end A049969.P17126923942338161019

/-! ## A049969.P14855790772172839598

`A049937(n+1)+A049977(n+1)-A049945(n+1)`
-/

namespace A049969.P14855790772172839598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049977 (n + 1) - A049945 (n + 1))

end

end A049969.P14855790772172839598

/-! ## A049969.P17743569328819549065

`A049953(n+1)+A049957(n+1)-A049941(n+1)`
-/

namespace A049969.P17743569328819549065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049957 (n + 1) - A049941 (n + 1))

end

end A049969.P17743569328819549065

/-! ## A049969.P1080507007173658209

`A049957(n+1)+A049957(n+1)-A049945(n+1)`
-/

namespace A049969.P1080507007173658209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049945 (n + 1))

end

end A049969.P1080507007173658209

/-! ## A049969.P10412667751511396614

`A049949(n+1)+A049977(n+1)-A049957(n+1)`
-/

namespace A049969.P10412667751511396614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049949 (n + 1) + (A049977 (n + 1) - A049957 (n + 1))

end

end A049969.P10412667751511396614

/-! ## A049969.P12399546745770377425

`A049973(n+1)+A049973(n+1)-A049977(n+1)`
-/

namespace A049969.P12399546745770377425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049973 (n + 1) + (A049973 (n + 1) - A049977 (n + 1))

end

end A049969.P12399546745770377425

/-! ## A049969.P5524234975728580288

`2*A049953(n+1)-A049937(n+1)`
-/

namespace A049969.P5524234975728580288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049953 (n + 1) - A049937 (n + 1)

end

end A049969.P5524234975728580288

/-! ## A049969.P10585369779235859622

`2*A049957(n+1)-A049945(n+1)`
-/

namespace A049969.P10585369779235859622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049945 (n + 1)

end

end A049969.P10585369779235859622

/-! ## A049969.P2790861193202607047

`(A049973(n+1)+A049965(n+1))/2`
-/

namespace A049969.P2790861193202607047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049973 (n + 1) + A049965 (n + 1) : ℚ) / 2

end

end A049969.P2790861193202607047

/-! ## A049969.P10467039264283892349

`2*A049973(n+1)-A049977(n+1)`
-/

namespace A049969.P10467039264283892349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049973 (n + 1) - A049977 (n + 1)

end

end A049969.P10467039264283892349

/-!
# A049970: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049970, there is no canonical definition to state claims against.
-/

/-! ## A049970.P16699579622686115481

`A049934(n+1)+A049974(n+1)-A049938(n+1)`
-/

namespace A049970.P16699579622686115481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049934 (n + 1) + (A049974 (n + 1) - A049938 (n + 1))

end

end A049970.P16699579622686115481

/-! ## A049970.P18200187748258079827

`A049938(n+1)+A049966(n+1)-A049934(n+1)`
-/

namespace A049970.P18200187748258079827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049966 (n + 1) - A049934 (n + 1))

end

end A049970.P18200187748258079827

/-! ## A049970.P15344072871440468227

`A049954(n+1)+A049954(n+1)-A049938(n+1)`
-/

namespace A049970.P15344072871440468227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049938 (n + 1))

end

end A049970.P15344072871440468227

/-! ## A049970.P14718143262463994244

`A049958(n+1)+A049958(n+1)-A049946(n+1)`
-/

namespace A049970.P14718143262463994244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049946 (n + 1))

end

end A049970.P14718143262463994244

/-! ## A049970.P2191848020652871627

`2*A049954(n+1)-A049938(n+1)`
-/

namespace A049970.P2191848020652871627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049938 (n + 1)

end

end A049970.P2191848020652871627

/-! ## A049970.P16197837787860398670

`2*A049958(n+1)-A049946(n+1)`
-/

namespace A049970.P16197837787860398670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049946 (n + 1)

end

end A049970.P16197837787860398670

/-! ## A049970.P3808513985866707808

`(A049974(n+1)+A049966(n+1))/2`
-/

namespace A049970.P3808513985866707808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049974 (n + 1) + A049966 (n + 1) : ℚ) / 2

end

end A049970.P3808513985866707808

/-! ## A049970.P14020613857043872698

`2*A049974(n+1)-A049978(n+1)`
-/

namespace A049970.P14020613857043872698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049974 (n + 1) - A049978 (n + 1)

end

end A049970.P14020613857043872698

/-!
# A049971: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 2.

The programs for A049971, there is no canonical definition to state claims against.
-/

/-! ## A049971.P16470989407186324097

`2*A049955(n+1)-A049939(n+1)`
-/

namespace A049971.P16470989407186324097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049939 (n + 1)

end

end A049971.P16470989407186324097

/-! ## A049971.P13394619979582125778

`A049935(n+1)+A049975(n+1)-A049939(n+1)`
-/

namespace A049971.P13394619979582125778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049935 (n + 1) + (A049975 (n + 1) - A049939 (n + 1))

end

end A049971.P13394619979582125778

/-! ## A049971.P17026031416677526942

`A049939(n+1)+A049967(n+1)-A049935(n+1)`
-/

namespace A049971.P17026031416677526942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049967 (n + 1) - A049935 (n + 1))

end

end A049971.P17026031416677526942

/-! ## A049971.P14144860534409192363

`A049951(n+1)+A049955(n+1)-A049935(n+1)`
-/

namespace A049971.P14144860534409192363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049951 (n + 1) + (A049955 (n + 1) - A049935 (n + 1))

end

end A049971.P14144860534409192363

/-! ## A049971.P6844992587030577462

`A049951(n+1)+A049959(n+1)-A049939(n+1)`
-/

namespace A049971.P6844992587030577462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049951 (n + 1) + (A049959 (n + 1) - A049939 (n + 1))

end

end A049971.P6844992587030577462

/-! ## A049971.P11100566287871479227

`A049959(n+1)+A049959(n+1)-A049947(n+1)`
-/

namespace A049971.P11100566287871479227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049959 (n + 1) + (A049959 (n + 1) - A049947 (n + 1))

end

end A049971.P11100566287871479227

/-! ## A049971.P1327411426129076861

`A049923(n+1)/A049903(n+1)*A049951(n+1)`
-/

namespace A049971.P1327411426129076861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049923 (n + 1) : ℚ) / (A049903 (n + 1) : ℚ) * (A049951 (n + 1) : ℚ)

end

end A049971.P1327411426129076861

/-! ## A049971.P2745995198288934759

`2*A049959(n+1)-A049947(n+1)`
-/

namespace A049971.P2745995198288934759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049959 (n + 1) - A049947 (n + 1)

end

end A049971.P2745995198288934759

/-!
# A049972: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049972, there is no canonical definition to state claims against.
-/

/-! ## A049972.P11870438366211688372

`A049936(n+1)+A049968(n+1)-A049932(n+1)`
-/

namespace A049972.P11870438366211688372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049968 (n + 1) - A049932 (n + 1))

end

end A049972.P11870438366211688372

/-! ## A049972.P11271637892956029829

`A049952(n+1)+A049952(n+1)-A049932(n+1)`
-/

namespace A049972.P11271637892956029829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049952 (n + 1) - A049932 (n + 1))

end

end A049972.P11271637892956029829

/-! ## A049972.P14706208970533913095

`A049952(n+1)+A049960(n+1)-A049940(n+1)`
-/

namespace A049972.P14706208970533913095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049960 (n + 1) - A049940 (n + 1))

end

end A049972.P14706208970533913095

/-! ## A049972.P14075437469830267513

`A049956(n+1)+A049956(n+1)-A049940(n+1)`
-/

namespace A049972.P14075437469830267513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049956 (n + 1) + (A049956 (n + 1) - A049940 (n + 1))

end

end A049972.P14075437469830267513

/-! ## A049972.P2889572047126433865

`A049968(n+1)+A049968(n+1)-A049964(n+1)`
-/

namespace A049972.P2889572047126433865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049968 (n + 1) + (A049968 (n + 1) - A049964 (n + 1))

end

end A049972.P2889572047126433865

/-! ## A049972.P14901622636577504630

`2*A049952(n+1)-A049932(n+1)`
-/

namespace A049972.P14901622636577504630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049952 (n + 1) - A049932 (n + 1)

end

end A049972.P14901622636577504630

/-! ## A049972.P4159302986930671348

`2*A049956(n+1)-A049940(n+1)`
-/

namespace A049972.P4159302986930671348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049956 (n + 1) - A049940 (n + 1)

end

end A049972.P4159302986930671348

/-! ## A049972.P1892015929125342578

`2*A049968(n+1)-A049964(n+1)`
-/

namespace A049972.P1892015929125342578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049968 (n + 1) - A049964 (n + 1)

end

end A049972.P1892015929125342578

/-! ## A049972.P16386724910684554380

`(A049976(n+1)+A049968(n+1))/2`
-/

namespace A049972.P16386724910684554380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049976 (n + 1) + A049968 (n + 1) : ℚ) / 2

end

end A049972.P16386724910684554380

/-!
# A049973: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049973, there is no canonical definition to state claims against.
-/

/-! ## A049973.P5433209315839310733

`A049933(n+1)+A049977(n+1)-A049937(n+1)`
-/

namespace A049973.P5433209315839310733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049933 (n + 1) + (A049977 (n + 1) - A049937 (n + 1))

end

end A049973.P5433209315839310733

/-! ## A049973.P4268542869826015766

`A049937(n+1)+A049969(n+1)-A049933(n+1)`
-/

namespace A049973.P4268542869826015766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049969 (n + 1) - A049933 (n + 1))

end

end A049973.P4268542869826015766

/-! ## A049973.P1706093272255473931

`A049949(n+1)+A049957(n+1)-A049933(n+1)`
-/

namespace A049973.P1706093272255473931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049949 (n + 1) + (A049957 (n + 1) - A049933 (n + 1))

end

end A049973.P1706093272255473931

/-! ## A049973.P632029374622260785

`A049953(n+1)+A049953(n+1)-A049933(n+1)`
-/

namespace A049973.P632029374622260785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049953 (n + 1) - A049933 (n + 1))

end

end A049973.P632029374622260785

/-! ## A049973.P12672166774632202383

`A049953(n+1)+A049957(n+1)-A049937(n+1)`
-/

namespace A049973.P12672166774632202383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049957 (n + 1) - A049937 (n + 1))

end

end A049973.P12672166774632202383

/-! ## A049973.P5750832767788712135

`A049957(n+1)+A049957(n+1)-A049941(n+1)`
-/

namespace A049973.P5750832767788712135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049941 (n + 1))

end

end A049973.P5750832767788712135

/-! ## A049973.P18153523958577966473

`A049953(n+1)+A049977(n+1)-A049957(n+1)`
-/

namespace A049973.P18153523958577966473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049977 (n + 1) - A049957 (n + 1))

end

end A049973.P18153523958577966473

/-! ## A049973.P1669810838291128054

`A049969(n+1)+A049969(n+1)-A049965(n+1)`
-/

namespace A049973.P1669810838291128054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049969 (n + 1) + (A049969 (n + 1) - A049965 (n + 1))

end

end A049973.P1669810838291128054

/-! ## A049973.P2371535487399288473

`2*A049953(n+1)-A049933(n+1)`
-/

namespace A049973.P2371535487399288473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049953 (n + 1) - A049933 (n + 1)

end

end A049973.P2371535487399288473

/-! ## A049973.P17420866958740197249

`2*A049957(n+1)-A049941(n+1)`
-/

namespace A049973.P17420866958740197249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049941 (n + 1)

end

end A049973.P17420866958740197249

/-! ## A049973.P17514489561121575613

`2*A049969(n+1)-A049965(n+1)`
-/

namespace A049973.P17514489561121575613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049969 (n + 1) - A049965 (n + 1)

end

end A049973.P17514489561121575613

/-! ## A049973.P4225589557940434930

`(A049977(n+1)+A049969(n+1))/2`
-/

namespace A049973.P4225589557940434930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049977 (n + 1) + A049969 (n + 1) : ℚ) / 2

end

end A049973.P4225589557940434930

/-!
# A049974: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049974, there is no canonical definition to state claims against.
-/

/-! ## A049974.P11897165135230536388

`A049938(n+1)+A049970(n+1)-A049934(n+1)`
-/

namespace A049974.P11897165135230536388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049970 (n + 1) - A049934 (n + 1))

end

end A049974.P11897165135230536388

/-! ## A049974.P357728955389640343

`A049954(n+1)+A049954(n+1)-A049934(n+1)`
-/

namespace A049974.P357728955389640343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049954 (n + 1) + (A049954 (n + 1) - A049934 (n + 1))

end

end A049974.P357728955389640343

/-! ## A049974.P12897703636775316607

`A049958(n+1)+A049958(n+1)-A049942(n+1)`
-/

namespace A049974.P12897703636775316607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) + (A049958 (n + 1) - A049942 (n + 1))

end

end A049974.P12897703636775316607

/-! ## A049974.P15847438098231402814

`A049970(n+1)+A049970(n+1)-A049966(n+1)`
-/

namespace A049974.P15847438098231402814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049970 (n + 1) + (A049970 (n + 1) - A049966 (n + 1))

end

end A049974.P15847438098231402814

/-! ## A049974.P12600813725675364008

`2*A049954(n+1)-A049934(n+1)`
-/

namespace A049974.P12600813725675364008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049954 (n + 1) - A049934 (n + 1)

end

end A049974.P12600813725675364008

/-! ## A049974.P413886950525347879

`2*A049958(n+1)-A049942(n+1)`
-/

namespace A049974.P413886950525347879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049942 (n + 1)

end

end A049974.P413886950525347879

/-! ## A049974.P12043264650385064124

`2*A049970(n+1)-A049966(n+1)`
-/

namespace A049974.P12043264650385064124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049970 (n + 1) - A049966 (n + 1)

end

end A049974.P12043264650385064124

/-! ## A049974.P699705625255174689

`(A049978(n+1)+A049970(n+1))/2`
-/

namespace A049974.P699705625255174689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049978 (n + 1) + A049970 (n + 1) : ℚ) / 2

end

end A049974.P699705625255174689

/-!
# A049975: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1 and a(2) = a(3) = 3.

The programs for A049975, there is no canonical definition to state claims against.
-/

/-! ## A049975.P16889642178064560573

`2*A049955(n+1)-A049935(n+1)`
-/

namespace A049975.P16889642178064560573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049955 (n + 1) - A049935 (n + 1)

end

end A049975.P16889642178064560573

/-! ## A049975.P2429344504171933515

`A049939(n+1)+A049971(n+1)-A049935(n+1)`
-/

namespace A049975.P2429344504171933515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049971 (n + 1) - A049935 (n + 1))

end

end A049975.P2429344504171933515

/-! ## A049975.P3582678460137761957

`A049943(n+1)+A049971(n+1)-A049939(n+1)`
-/

namespace A049975.P3582678460137761957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049943 (n + 1) + (A049971 (n + 1) - A049939 (n + 1))

end

end A049975.P3582678460137761957

/-! ## A049975.P16416666746343238395

`A049951(n+1)+A049959(n+1)-A049935(n+1)`
-/

namespace A049975.P16416666746343238395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049951 (n + 1) + (A049959 (n + 1) - A049935 (n + 1))

end

end A049975.P16416666746343238395

/-! ## A049975.P14467412457296748780

`A049959(n+1)+A049959(n+1)-A049943(n+1)`
-/

namespace A049975.P14467412457296748780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049959 (n + 1) + (A049959 (n + 1) - A049943 (n + 1))

end

end A049975.P14467412457296748780

/-! ## A049975.P1276852584582185270

`A049971(n+1)+A049971(n+1)-A049967(n+1)`
-/

namespace A049975.P1276852584582185270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049971 (n + 1) + (A049971 (n + 1) - A049967 (n + 1))

end

end A049975.P1276852584582185270

/-! ## A049975.P2097418823816702707

`2*A049959(n+1)-A049943(n+1)`
-/

namespace A049975.P2097418823816702707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049959 (n + 1) - A049943 (n + 1)

end

end A049975.P2097418823816702707

/-! ## A049975.P10242809048906451190

`2*A049971(n+1)-A049967(n+1)`
-/

namespace A049975.P10242809048906451190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049971 (n + 1) - A049967 (n + 1)

end

end A049975.P10242809048906451190

/-! ## A049975.P16800692158423831856

`(A049979(n+1)+A049971(n+1))/2`
-/

namespace A049975.P16800692158423831856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049979 (n + 1) + A049971 (n + 1) : ℚ) / 2

end

end A049975.P16800692158423831856

/-!
# A049976: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049976, there is no canonical definition to state claims against.
-/

/-! ## A049976.P16912867620110060581

`2*A049956(n+1)-A049936(n+1)`
-/

namespace A049976.P16912867620110060581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049956 (n + 1) - A049936 (n + 1)

end

end A049976.P16912867620110060581

/-! ## A049976.P7581908116371987301

`2*A049960(n+1)-A049944(n+1)`
-/

namespace A049976.P7581908116371987301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049960 (n + 1) - A049944 (n + 1)

end

end A049976.P7581908116371987301

/-! ## A049976.P14120211714621946395

`2*A049972(n+1)-A049968(n+1)`
-/

namespace A049976.P14120211714621946395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049972 (n + 1) - A049968 (n + 1)

end

end A049976.P14120211714621946395

/-! ## A049976.P5166104948089762503

`A049936(n+1)+A049972(n+1)-A049932(n+1)`
-/

namespace A049976.P5166104948089762503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049936 (n + 1) + (A049972 (n + 1) - A049932 (n + 1))

end

end A049976.P5166104948089762503

/-! ## A049976.P7014561851790458134

`A049940(n+1)+A049968(n+1)-A049932(n+1)`
-/

namespace A049976.P7014561851790458134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049940 (n + 1) + (A049968 (n + 1) - A049932 (n + 1))

end

end A049976.P7014561851790458134

/-! ## A049976.P13951223711191126499

`A049948(n+1)+A049960(n+1)-A049932(n+1)`
-/

namespace A049976.P13951223711191126499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049948 (n + 1) + (A049960 (n + 1) - A049932 (n + 1))

end

end A049976.P13951223711191126499

/-! ## A049976.P6832555900544009423

`A049952(n+1)+A049960(n+1)-A049936(n+1)`
-/

namespace A049976.P6832555900544009423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049952 (n + 1) + (A049960 (n + 1) - A049936 (n + 1))

end

end A049976.P6832555900544009423

/-!
# A049977: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n -1 <= 2^(p+1), with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049977, there is no canonical definition to state claims against.
-/

/-! ## A049977.P5247268891552767147

`A049937(n+1)+A049973(n+1)-A049933(n+1)`
-/

namespace A049977.P5247268891552767147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1) + (A049973 (n + 1) - A049933 (n + 1))

end

end A049977.P5247268891552767147

/-! ## A049977.P12954232508575700172

`A049953(n+1)+A049957(n+1)-A049933(n+1)`
-/

namespace A049977.P12954232508575700172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049953 (n + 1) + (A049957 (n + 1) - A049933 (n + 1))

end

end A049977.P12954232508575700172

/-! ## A049977.P7396528652397939605

`A049957(n+1)+A049957(n+1)-A049937(n+1)`
-/

namespace A049977.P7396528652397939605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049957 (n + 1) + (A049957 (n + 1) - A049937 (n + 1))

end

end A049977.P7396528652397939605

/-! ## A049977.P9322320788588036354

`A049961(n+1)+A049961(n+1)-A049945(n+1)`
-/

namespace A049977.P9322320788588036354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049961 (n + 1) + (A049961 (n + 1) - A049945 (n + 1))

end

end A049977.P9322320788588036354

/-! ## A049977.P1809187109674799881

`A049973(n+1)+A049973(n+1)-A049969(n+1)`
-/

namespace A049977.P1809187109674799881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049973 (n + 1) + (A049973 (n + 1) - A049969 (n + 1))

end

end A049977.P1809187109674799881

/-! ## A049977.P16606875288732251307

`2*A049957(n+1)-A049937(n+1)`
-/

namespace A049977.P16606875288732251307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049957 (n + 1) - A049937 (n + 1)

end

end A049977.P16606875288732251307

/-! ## A049977.P1132155359588767991

`2*A049961(n+1)-A049945(n+1)`
-/

namespace A049977.P1132155359588767991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049961 (n + 1) - A049945 (n + 1)

end

end A049977.P1132155359588767991

/-! ## A049977.P12758707848594969370

`2*A049973(n+1)-A049969(n+1)`
-/

namespace A049977.P12758707848594969370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049973 (n + 1) - A049969 (n + 1)

end

end A049977.P12758707848594969370

/-!
# A049978: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049978, there is no canonical definition to state claims against.
-/

/-! ## A049978.P476802301997498555

`2*A049958(n+1)-A049938(n+1)`
-/

namespace A049978.P476802301997498555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049958 (n + 1) - A049938 (n + 1)

end

end A049978.P476802301997498555

/-! ## A049978.P9018128467712528171

`2*A049962(n+1)-A049946(n+1)`
-/

namespace A049978.P9018128467712528171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049962 (n + 1) - A049946 (n + 1)

end

end A049978.P9018128467712528171

/-! ## A049978.P8581909913546954417

`2*A049974(n+1)-A049970(n+1)`
-/

namespace A049978.P8581909913546954417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049974 (n + 1) - A049970 (n + 1)

end

end A049978.P8581909913546954417

/-! ## A049978.P6838835747617692140

`A049938(n+1)+A049974(n+1)-A049934(n+1)`
-/

namespace A049978.P6838835747617692140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049938 (n + 1) + (A049974 (n + 1) - A049934 (n + 1))

end

end A049978.P6838835747617692140

/-! ## A049978.P191120548498510865

`A049942(n+1)+A049970(n+1)-A049934(n+1)`
-/

namespace A049978.P191120548498510865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049942 (n + 1) + (A049970 (n + 1) - A049934 (n + 1))

end

end A049978.P191120548498510865

/-! ## A049978.P10682385111780043093

`A049950(n+1)+A049962(n+1)-A049934(n+1)`
-/

namespace A049978.P10682385111780043093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049950 (n + 1) + (A049962 (n + 1) - A049934 (n + 1))

end

end A049978.P10682385111780043093

/-!
# A049979: a(n) = a(1) + a(2) + ... + a(n-1) + a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = 1, a(2) = 3, and a(3) = 4.

The programs for A049979, there is no canonical definition to state claims against.
-/

/-! ## A049979.P7708595808939097155

`A049939(n+1)+A049975(n+1)-A049935(n+1)`
-/

namespace A049979.P7708595808939097155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049939 (n + 1) + (A049975 (n + 1) - A049935 (n + 1))

end

end A049979.P7708595808939097155

/-! ## A049979.P13486703785112445609

`A049943(n+1)+A049971(n+1)-A049935(n+1)`
-/

namespace A049979.P13486703785112445609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049943 (n + 1) + (A049971 (n + 1) - A049935 (n + 1))

end

end A049979.P13486703785112445609

/-! ## A049979.P13172205867562588790

`A049959(n+1)+A049959(n+1)-A049939(n+1)`
-/

namespace A049979.P13172205867562588790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049959 (n + 1) + (A049959 (n + 1) - A049939 (n + 1))

end

end A049979.P13172205867562588790

/-! ## A049979.P12838774040633029014

`A049963(n+1)+A049963(n+1)-A049947(n+1)`
-/

namespace A049979.P12838774040633029014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049963 (n + 1) + (A049963 (n + 1) - A049947 (n + 1))

end

end A049979.P12838774040633029014

/-! ## A049979.P12244273014295373533

`A049975(n+1)+A049975(n+1)-A049971(n+1)`
-/

namespace A049979.P12244273014295373533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049975 (n + 1) + (A049975 (n + 1) - A049971 (n + 1))

end

end A049979.P12244273014295373533

/-! ## A049979.P3390007660830530495

`2*A049959(n+1)-A049939(n+1)`
-/

namespace A049979.P3390007660830530495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049959 (n + 1) - A049939 (n + 1)

end

end A049979.P3390007660830530495

/-! ## A049979.P2936355114843427482

`2*A049963(n+1)-A049947(n+1)`
-/

namespace A049979.P2936355114843427482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049963 (n + 1) - A049947 (n + 1)

end

end A049979.P2936355114843427482

/-! ## A049979.P10676028267606926361

`2*A049975(n+1)-A049971(n+1)`
-/

namespace A049979.P10676028267606926361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049975 (n + 1) - A049971 (n + 1)

end

end A049979.P10676028267606926361

/-!
# A049980: a(n) is the number of arithmetic progressions of positive integers, strictly increasing with sum n.

The programs for A049980, there is no canonical definition to state claims against.
-/

/-! ## A049980.P17649074692026673652

`A049982(n+1)+1`
-/

namespace A049980.P17649074692026673652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + 1

end

end A049980.P17649074692026673652

/-! ## A049980.P10304641632945231007

`A014405(n+1)+floor(n/2)+1`
-/

namespace A049980.P10304641632945231007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + (⌊(n : ℚ) / 2⌋ + 1)

end

end A049980.P10304641632945231007

/-! ## A049980.P16766261082235644250

`A014405(n+1)+A004526(n)+1`
-/

namespace A049980.P16766261082235644250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + A004526 n + 1

end

end A049980.P16766261082235644250

/-! ## A049980.P16268520998166595735

`A049988(n+1)-A032741(n+1)`
-/

namespace A049980.P16268520998166595735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A032741 (n + 1)

end

end A049980.P16268520998166595735

/-! ## A049980.P583237548583088652

`A003165(n+1)+A049992(n+1)+1`
-/

namespace A049980.P583237548583088652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (n + 1) + (A049992 (n + 1) + 1)

end

end A049980.P583237548583088652

/-! ## A049980.P4267667273549749586

`A049988(n+1)+1-A000005(n+1)`
-/

namespace A049980.P4267667273549749586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (1 - A000005 (n + 1))

end

end A049980.P4267667273549749586

/-! ## A049980.P5202876262520879151

`A127938(n+1)+1-A007862(n+1)`
-/

namespace A049980.P5202876262520879151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127938 (n + 1) + (1 - A007862 (n + 1))

end

end A049980.P5202876262520879151

/-! ## A049980.P17195266262800527606

`A049988(n+1)+A054519(n)-A006218(n+1)`
-/

namespace A049980.P17195266262800527606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A054519 n - A006218 (n + 1))

end

end A049980.P17195266262800527606

/-! ## A049980.P15552385214797007685

`A378216(n+1)+A049990(n+1)`
-/

namespace A049980.P15552385214797007685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A049990 (n + 1)

end

end A049980.P15552385214797007685

/-! ## A049980.P10685815125632672225

`A175342(n+1)-A049990(n+1)`
-/

namespace A049980.P10685815125632672225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175342 (n + 1) - A049990 (n + 1)

end

end A049980.P10685815125632672225

/-!
# A049981: a(n) is the number of arithmetic progressions of positive integers, strictly increasing with sum <= n.

The programs for A049981, there is no canonical definition to state claims against.
-/

/-! ## A049981.P1620706808228234659

`∑[A049980(n+1)]`
-/

namespace A049981.P1620706808228234659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P1620706808228234659

/-! ## A049981.P3948032587456141684

`∑[A049982(n+1)+1]`
-/

namespace A049981.P3948032587456141684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P3948032587456141684

/-! ## A049981.P5890733267479688962

`∑[A014405(n+1)+A008619(n)]`
-/

namespace A049981.P5890733267479688962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P5890733267479688962

/-! ## A049981.P2438454986336960059

`A014406(n+1)+∑[A008619(n)]`
-/

namespace A049981.P2438454986336960059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P2438454986336960059

/-! ## A049981.P6513957070395782426

`A087811(n+1)+A014406(n+1)`
-/

namespace A049981.P6513957070395782426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A014406 (n + 1)

end

end A049981.P6513957070395782426

/-! ## A049981.P4374842664659745720

`A014406(n+1)+A002620(n+2)`
-/

namespace A049981.P4374842664659745720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (n + 1) + A002620 (n + 2)

end

end A049981.P4374842664659745720

/-! ## A049981.P2325219914202922835

`A049989(n+1)-A002541(n+1)`
-/

namespace A049981.P2325219914202922835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 1) - A002541 (n + 1)

end

end A049981.P2325219914202922835

/-! ## A049981.P18306728203270512187

`A002620(n)+∑[A014405(n+1)+1]`
-/

namespace A049981.P18306728203270512187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P18306728203270512187

/-! ## A049981.P10113966376421171244

`A049989(n+1)+∑[1-A000005(n+1)]`
-/

namespace A049981.P10113966376421171244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049981.P10113966376421171244

/-! ## A049981.P3379671071922324188

`A049983(n+1)+1+n`
-/

namespace A049981.P3379671071922324188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049983 (n + 1) + 1 + (n : ℤ)

end

end A049981.P3379671071922324188

/-! ## A049981.P2296539783746025742

`A014406(n+1)+A049991(n+2)-A049993(n+2)`
-/

namespace A049981.P2296539783746025742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (n + 1) + (A049991 (n + 2) - A049993 (n + 2))

end

end A049981.P2296539783746025742

/-!
# A049982: Number of arithmetic progressions of 2 or more positive integers, strictly increasing with sum n.

The programs for A049982, there is no canonical definition to state claims against.
-/

/-! ## A049982.P3199995514504718216

`A049980(n+1)-1`
-/

namespace A049982.P3199995514504718216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - 1

end

end A049982.P3199995514504718216

/-! ## A049982.P7209290982743673801

`A049988(n+1)-A000005(n+1)`
-/

namespace A049982.P7209290982743673801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A000005 (n + 1)

end

end A049982.P7209290982743673801

/-! ## A049982.P1405048958623130091

`floor(A014405(n+1)+n/2)`
-/

namespace A049982.P1405048958623130091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014405 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A049982.P1405048958623130091

/-! ## A049982.P7247850023985942453

`A014405(n+1)+A004526(n)`
-/

namespace A049982.P7247850023985942453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + A004526 n

end

end A049982.P7247850023985942453

/-! ## A049982.P17548014362958650951

`A127938(n+1)-Δ[A069470(n)]`
-/

namespace A049982.P17548014362958650951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127938 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049982.P17548014362958650951

/-! ## A049982.P18037137228288523782

`A049992(n+1)+A003165(n+1)`
-/

namespace A049982.P18037137228288523782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) + A003165 (n + 1)

end

end A049982.P18037137228288523782

/-! ## A049982.P13732557981640575350

`A014405(n+1)+A008619(n)-1`
-/

namespace A049982.P13732557981640575350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + (A008619 n - 1)

end

end A049982.P13732557981640575350

/-! ## A049982.P232741038856786932

`A127938(n+1)-A007862(n+1)`
-/

namespace A049982.P232741038856786932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127938 (n + 1) - A007862 (n + 1)

end

end A049982.P232741038856786932

/-! ## A049982.P17383373216117310513

`A175342(n+1)-A049988(n+1)`
-/

namespace A049982.P17383373216117310513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175342 (n + 1) - A049988 (n + 1)

end

end A049982.P17383373216117310513

/-! ## A049982.P17678277641446192747

`A049988(n+1)-(A032741(n+1)+1)`
-/

namespace A049982.P17678277641446192747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - (A032741 (n + 1) + 1)

end

end A049982.P17678277641446192747

/-! ## A049982.P7357223220630290823

`A049988(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A049982.P7357223220630290823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A049982.P7357223220630290823

/-! ## A049982.P3950323545271423623

`A049988(n+1)+A054519(n)-A054519(n+1)`
-/

namespace A049982.P3950323545271423623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A054519 n - A054519 (n + 1))

end

end A049982.P3950323545271423623

/-! ## A049982.P5225029531348854430

`A023443(A049980(n+1))`
-/

namespace A049982.P5225029531348854430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049980 (n + 1)).toNat

end

end A049982.P5225029531348854430

/-! ## A049982.P16433657264572134388

`A049988(n+1)-A368684(2*(n+1))`
-/

namespace A049982.P16433657264572134388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A368684 (2 * (n + 1))

end

end A049982.P16433657264572134388

/-! ## A049982.P12036090285744077928

`A175342(n+1)-(A049990(n+1)+1)`
-/

namespace A049982.P12036090285744077928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175342 (n + 1) - (A049990 (n + 1) + 1)

end

end A049982.P12036090285744077928

/-! ## A049982.P13524757470469267923

`A049990(n+1)+A378216(n+1)-1`
-/

namespace A049982.P13524757470469267923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) + (A378216 (n + 1) - 1)

end

end A049982.P13524757470469267923

/-! ## A049982.P16214920350399585850

`A049988(n+1)+A349094(n+1)-A011782(n+1)`
-/

namespace A049982.P16214920350399585850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A349094 (n + 1) - A011782 (n + 1))

end

end A049982.P16214920350399585850

/-!
# A049983: a(n) is the number of arithmetic progressions of 2 or more positive integers, strictly increasing with sum <= n.

The programs for A049983, there is no canonical definition to state claims against.
-/

/-! ## A049983.P8824265394299626278

`∑[A049982(n+1)]`
-/

namespace A049983.P8824265394299626278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P8824265394299626278

/-! ## A049983.P7413462499756941797

`∑[A049980(n+1)-1]`
-/

namespace A049983.P7413462499756941797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P7413462499756941797

/-! ## A049983.P12139067155835126786

`A049981(n+1)-(n+1)`
-/

namespace A049983.P12139067155835126786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - (n + 1 : ℤ)

end

end A049983.P12139067155835126786

/-! ## A049983.P16891752856439240717

`A014406(n+1)+floor((n/2)²)`
-/

namespace A049983.P16891752856439240717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (n + 1) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A049983.P16891752856439240717

/-! ## A049983.P17073331726287180125

`∑[A014405(n+1)+floor(n/2)]`
-/

namespace A049983.P17073331726287180125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P17073331726287180125

/-! ## A049983.P9183515902671882282

`A002620(n)+∑[A014405(n+1)]`
-/

namespace A049983.P9183515902671882282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P9183515902671882282

/-! ## A049983.P523335376188521105

`∑[A014405(n+1)+A008619(n)-1]`
-/

namespace A049983.P523335376188521105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + A008619 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P523335376188521105

/-! ## A049983.P12559851959296325873

`A049989(n+1)-∑[A000005(n+1)]`
-/

namespace A049983.P12559851959296325873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P12559851959296325873

/-! ## A049983.P7726290413755004399

`∑[A049988(n+1)-A000005(1-char[2]+n)]`
-/

namespace A049983.P7726290413755004399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A000005 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049983.P7726290413755004399

/-! ## A049983.P172886840817025305

`A049991(n+1)-A002541(n+1)`
-/

namespace A049983.P172886840817025305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049991 (n + 1) - A002541 (n + 1)

end

end A049983.P172886840817025305

/-!
# A049984: Primes of the form k! - (k-1)! + 1.

The programs for A049984, there is no canonical definition to state claims against.
-/

/-! ## A049984.P6450568374096730762

`A001563(A090703(n+1))+1`
-/

namespace A049984.P6450568374096730762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (A090703 (n + 1)).toNat + 1

end

end A049984.P6450568374096730762

/-! ## A049984.P1325293022681779323

`A094258(A049432(n+1))+1`
-/

namespace A049984.P1325293022681779323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (A049432 (n + 1)).toNat + 1

end

end A049984.P1325293022681779323

/-! ## A049984.P2237122041347649385

`A094258(A090703(n+1)+1)+1`
-/

namespace A049984.P2237122041347649385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (A090703 (n + 1) + 1).toNat + 1

end

end A049984.P2237122041347649385

/-! ## A049984.P10682155295056580732

`A001563(A049432(n+1)-1)+1`
-/

namespace A049984.P10682155295056580732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (A049432 (n + 1) - 1).toNat + 1

end

end A049984.P10682155295056580732

/-! ## A049984.P5847283317683835076

`record[A362778(∑[n+1])]`
-/

namespace A049984.P5847283317683835076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362778 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049984.P5847283317683835076

/-!
# A049985: Primes of form k! - (k-1)! - 1.

The programs for A049985, there is no canonical definition to state claims against.
-/

/-! ## A049985.P543191695242656814

`A001563(A090704(n+1))-1`
-/

namespace A049985.P543191695242656814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (A090704 (n + 1)).toNat - 1

end

end A049985.P543191695242656814

/-!
# A049986: a(n) is the number of arithmetic progressions of 4 or more positive integers, strictly increasing with sum n.

The programs for A049986, there is no canonical definition to state claims against.
-/

/-! ## A049986.P10755029053834023242

`A049994(n+1)-A321014(n+1)`
-/

namespace A049986.P10755029053834023242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - A321014 (n + 1)

end

end A049986.P10755029053834023242

/-! ## A049986.P13439803104221077908

`A049994(n+1)+A083039(n+1)-A000005(n+1)`
-/

namespace A049986.P13439803104221077908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) + (A083039 (n + 1) - A000005 (n + 1))

end

end A049986.P13439803104221077908

/-! ## A049986.P8122763214971238705

`A049992(n+1)-(A321014(n+1)+A175676(n+1))`
-/

namespace A049986.P8122763214971238705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - (A321014 (n + 1) + A175676 (n + 1))

end

end A049986.P8122763214971238705

/-! ## A049986.P3513063442487578374

`Δ[A049987(A065033(2*n))]`
-/

namespace A049986.P3513063442487578374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P3513063442487578374

/-! ## A049986.P17378171231342161112

`Δ[A049987(A123108(2*n))]`
-/

namespace A049986.P17378171231342161112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P17378171231342161112

/-! ## A049986.P963682936162143903

`Δ[A049987(A057428(n)+1+n)]`
-/

namespace A049986.P963682936162143903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A057428 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P963682936162143903

/-! ## A049986.P1811349972335587180

`Δ[A049987(A004275(n+1)-n)]`
-/

namespace A049986.P1811349972335587180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P1811349972335587180

/-! ## A049986.P4576747789896423602

`Δ[A049987(A008619(A004273(n)))]`
-/

namespace A049986.P4576747789896423602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P4576747789896423602

/-! ## A049986.P17574461873111918814

`Δ[A049987(A008619(A004275(n)))]`
-/

namespace A049986.P17574461873111918814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P17574461873111918814

/-! ## A049986.P13677657234696411410

`Δ[A049987(A051176(A008486(n)))]`
-/

namespace A049986.P13677657234696411410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A051176 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P13677657234696411410

/-! ## A049986.P10015764841232360670

`A049987(n+1)-A049987(A065033(2*n))`
-/

namespace A049986.P10015764841232360670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (n + 1) - A049987 (A065033 (2 * n)).toNat

end

end A049986.P10015764841232360670

/-! ## A049986.P6160785732857321344

`A049987(n+1)-A049987(A233583(n+1))`
-/

namespace A049986.P6160785732857321344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (n + 1) - A049987 (A233583 (n + 1)).toNat

end

end A049986.P6160785732857321344

/-! ## A049986.P3866581832733978664

`Δ[A049987(A233583(n+1))]`
-/

namespace A049986.P3866581832733978664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P3866581832733978664

/-! ## A049986.P16336289411677200295

`A049994(n+1)-A338649(A064988(n+1))`
-/

namespace A049986.P16336289411677200295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - A338649 (A064988 (n + 1)).toNat

end

end A049986.P16336289411677200295

/-! ## A049986.P8626952501432660296

`Δ[A049987(A000267(A002620(n)))]`
-/

namespace A049986.P8626952501432660296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P8626952501432660296

/-! ## A049986.P13656350161480920328

`Δ[A049987(A003056(A000124(n)))]`
-/

namespace A049986.P13656350161480920328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P13656350161480920328

/-! ## A049986.P11182609413068860367

`A049987(n+1)-A049987(A137735(n²))`
-/

namespace A049986.P11182609413068860367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (n + 1) - A049987 (A137735 (n ^ 2)).toNat

end

end A049986.P11182609413068860367

/-! ## A049986.P14515091526163305024

`Δ[A049987(A137735(n²))]`
-/

namespace A049986.P14515091526163305024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049986.P14515091526163305024

/-!
# A049987: a(n) is the number of arithmetic progressions of 4 or more positive integers, strictly increasing with sum <= n.

The programs for A049987, there is no canonical definition to state claims against.
-/

/-! ## A049987.P18325253966716240742

`∑[A049986(n+1)]`
-/

namespace A049987.P18325253966716240742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P18325253966716240742

/-! ## A049987.P12311805602503118743

`∑[A049994(n+1)-A321014(n+1)]`
-/

namespace A049987.P12311805602503118743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - A321014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P12311805602503118743

/-! ## A049987.P5943953558415522543

`∑[A049994(n+1)-(∏{e}[n+1, #+1]-(A171182(n+1)+1))]`
-/

namespace A049987.P5943953558415522543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - (A171182 (n + 1) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P5943953558415522543

/-! ## A049987.P352123483722659427

`∑[A049992(n+1)-(A321014(n+1)+A175676(n+1))]`
-/

namespace A049987.P352123483722659427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - (A321014 (n + 1) + A175676 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P352123483722659427

/-! ## A049987.P18007199507209296629

`∑[A049994(n+1)-(A000005(n+1)-A083039(n+1))]`
-/

namespace A049987.P18007199507209296629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - (A000005 (n + 1) - A083039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P18007199507209296629

/-! ## A049987.P10125091639722404202

`A049995(n+1)-A366972(n+1)`
-/

namespace A049987.P10125091639722404202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - A366972 (n + 1)

end

end A049987.P10125091639722404202

/-! ## A049987.P11166366432565838940

`A049995(n+1)-∑[A321014(n+1)]`
-/

namespace A049987.P11166366432565838940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P11166366432565838940

/-! ## A049987.P14823759622344795462

`∑[A049994(n+1)-A338649(A064988(n+1))]`
-/

namespace A049987.P14823759622344795462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) - A338649 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049987.P14823759622344795462

/-! ## A049987.P18254387766903094041

`A118759(a(n-1))+A049986(n+1)` with `a(0)=0`
-/

namespace A049987.P18254387766903094041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118759 (a (n - 1)).toNat + A049986 (n + 1)

end

end A049987.P18254387766903094041

/-!
# A049988: Number of nondecreasing arithmetic progressions of positive integers with sum n.

The programs for A049988, there is no canonical definition to state claims against.
-/

/-! ## A049988.P6972615580753683669

`A049990(n+1-n²%(n+1))+1`
-/

namespace A049988.P6972615580753683669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1 - n ^ 2 % (n + 1)) + 1

end

end A049988.P6972615580753683669

/-! ## A049988.P7595267288330414992

`A049990(A028310(n))+1`
-/

namespace A049988.P7595267288330414992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A028310 n).toNat + 1

end

end A049988.P7595267288330414992

/-! ## A049988.P14323273815591809022

`A049990(A065033(2*n))+1`
-/

namespace A049988.P14323273815591809022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A065033 (2 * n)).toNat + 1

end

end A049988.P14323273815591809022

/-! ## A049988.P12130799989632245293

`A049990(1-A057427(n)+n)+1`
-/

namespace A049988.P12130799989632245293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (1 - A057427 n + (n : ℤ)).toNat + 1

end

end A049988.P12130799989632245293

/-! ## A049988.P17691016311394914946

`1-A049990(A028310(n))*A057428(n)`
-/

namespace A049988.P17691016311394914946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049990 (A028310 n).toNat * A057428 n

end

end A049988.P17691016311394914946

/-! ## A049988.P6597427357518412497

`A049990(n)+a(A104144(A001222(n)))` with `a(0)=1`
-/

namespace A049988.P6597427357518412497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049990 n + a (A104144 (A001222 n).toNat).toNat

end

end A049988.P6597427357518412497

/-! ## A049988.P7614375383154700861

`A049992(A233583(n+1))+A008619(n)`
-/

namespace A049988.P7614375383154700861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (A233583 (n + 1)).toNat + A008619 n

end

end A049988.P7614375383154700861

/-! ## A049988.P14067619982691035061

`A049980(A233583(n+1))+A032741(n)`
-/

namespace A049988.P14067619982691035061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (A233583 (n + 1)).toNat + A032741 n

end

end A049988.P14067619982691035061

/-!
# A049989: a(n) is the number of arithmetic progressions of positive integers, nondecreasing with sum <= n.

The programs for A049989, there is no canonical definition to state claims against.
-/

/-! ## A049989.P11248244616347903029

`∑[A049988(n+1)]`
-/

namespace A049989.P11248244616347903029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049989.P11248244616347903029

/-! ## A049989.P14369383109115648858

`Δ[A049988(n)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A049989.P14369383109115648858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A049988 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A049989.P14369383109115648858

/-! ## A049989.P13413934834279393876

`∑[A049982(n+1)+A000005(n+1)]`
-/

namespace A049989.P13413934834279393876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049989.P13413934834279393876

/-! ## A049989.P3340752271151750825

`A049981(n+1)+A002541(n+1)`
-/

namespace A049989.P3340752271151750825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) + A002541 (n + 1)

end

end A049989.P3340752271151750825

/-! ## A049989.P8993317520853950355

`A049983(n+1)+∑[A000005(n+1)]`
-/

namespace A049989.P8993317520853950355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049983 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049989.P8993317520853950355

/-! ## A049989.P5811708104437806397

`A054519(n+1)+A049983(n+2)-A049980(n+2)`
-/

namespace A049989.P5811708104437806397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) + (A049983 (n + 2) - A049980 (n + 2))

end

end A049989.P5811708104437806397

/-! ## A049989.P13569174971982367272

`∑[A049990(n+1)+1]`
-/

namespace A049989.P13569174971982367272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049989.P13569174971982367272

/-! ## A049989.P1786632614807581176

`n+1+A049991(n+1)`
-/

namespace A049989.P1786632614807581176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A049991 (n + 1)

end

end A049989.P1786632614807581176

/-!
# A049990: a(n) is the number of arithmetic progressions of 2 or more positive integers, nondecreasing with sum n.

The programs for A049990, there is no canonical definition to state claims against.
-/

/-! ## A049990.P5702298418783311671

`A049988(n+1)-1`
-/

namespace A049990.P5702298418783311671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - 1

end

end A049990.P5702298418783311671

/-! ## A049990.P11107608903263399192

`Δ[∑[A049988(n)]-n]`
-/

namespace A049990.P11107608903263399192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049990.P11107608903263399192

/-! ## A049990.P18440239503078753181

`A023443(A049988(n+1))`
-/

namespace A049990.P18440239503078753181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049988 (n + 1)).toNat

end

end A049990.P18440239503078753181

/-! ## A049990.P1989512151843343306

`A110654(n)+A049992(n+1)`
-/

namespace A049990.P1989512151843343306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A049992 (n + 1)

end

end A049990.P1989512151843343306

/-! ## A049990.P14952994003322256748

`A049992(n+1)+∑[A000035(n)]`
-/

namespace A049990.P14952994003322256748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049990.P14952994003322256748

/-! ## A049990.P14855441176036359672

`A088922(n+1)+A014405(n+1)`
-/

namespace A049990.P14855441176036359672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + A014405 (n + 1)

end

end A049990.P14855441176036359672

/-! ## A049990.P9501406199430336564

`A175342(n+1)-A049980(n+1)`
-/

namespace A049990.P9501406199430336564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175342 (n + 1) - A049980 (n + 1)

end

end A049990.P9501406199430336564

/-! ## A049990.P4872769661165689517

`A049980(n+1)-A378216(n+1)`
-/

namespace A049990.P4872769661165689517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - A378216 (n + 1)

end

end A049990.P4872769661165689517

/-! ## A049990.P6495356587619888815

`A000005(n+1)+A049982(n+1)-1`
-/

namespace A049990.P6495356587619888815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A049982 (n + 1) - 1)

end

end A049990.P6495356587619888815

/-! ## A049990.P9216736358879378935

`A000005(n+1)+A049980(n+1)-2`
-/

namespace A049990.P9216736358879378935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A049980 (n + 1) - 2)

end

end A049990.P9216736358879378935

/-! ## A049990.P2905606067945308246

`A049992(n+1)+A049982(n+2)-A014405(n+2)`
-/

namespace A049990.P2905606067945308246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) + (A049982 (n + 2) - A014405 (n + 2))

end

end A049990.P2905606067945308246

/-!
# A049991: a(n) is the number of arithmetic progressions of 2 or more positive integers, nondecreasing with sum <= n.

The programs for A049991, there is no canonical definition to state claims against.
-/

/-! ## A049991.P14821372699683552414

`∑[A049990(n+1)]`
-/

namespace A049991.P14821372699683552414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049991.P14821372699683552414

/-! ## A049991.P17463453923195773663

`∑[A049988(n+1)-1]`
-/

namespace A049991.P17463453923195773663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049991.P17463453923195773663

/-! ## A049991.P5485295364804706333

`A049989(n+1)-(n+1)`
-/

namespace A049991.P5485295364804706333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 1) - (n + 1 : ℤ)

end

end A049991.P5485295364804706333

/-! ## A049991.P13939167642428876371

`A049983(n+1)+A002541(n+1)`
-/

namespace A049991.P13939167642428876371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049983 (n + 1) + A002541 (n + 1)

end

end A049991.P13939167642428876371

/-! ## A049991.P5854312423345164763

`∑[A049992(n+1)+∑[A000035(n)]]`
-/

namespace A049991.P5854312423345164763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049991.P5854312423345164763

/-! ## A049991.P9864796209385149952

`A049993(n+1)+∑[∑[A000035(n)]]`
-/

namespace A049991.P9864796209385149952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049991.P9864796209385149952

/-! ## A049991.P7034288339274246326

`∑[A000005(n+1)+A049982(n+1)-1]`
-/

namespace A049991.P7034288339274246326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A049982 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049991.P7034288339274246326

/-!
# A049992: a(n) is the number of arithmetic progressions of 3 or more positive integers, nondecreasing with sum n.

The programs for A049992, there is no canonical definition to state claims against.
-/

/-! ## A049992.P17503931994274171448

`A014405(n+1)+A023645(n+1)`
-/

namespace A049992.P17503931994274171448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + A023645 (n + 1)

end

end A049992.P17503931994274171448

/-! ## A049992.P11414877964400643063

`A049994(n+1)+A175676(n+1)`
-/

namespace A049992.P11414877964400643063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) + A175676 (n + 1)

end

end A049992.P11414877964400643063

/-! ## A049992.P17410591934930304136

`floor(A049988(n+1)-(n/2+1))`
-/

namespace A049992.P17410591934930304136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049988 (n + 1) : ℚ) - ((n : ℚ) / 2 + 1)⌋

end

end A049992.P17410591934930304136

/-! ## A049992.P13865262070293053051

`A049988(n+1)-A080513(n)`
-/

namespace A049992.P13865262070293053051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A080513 n

end

end A049992.P13865262070293053051

/-! ## A049992.P17077134837066716133

`∑[Δ[A049988(n)]-A000035(n)]`
-/

namespace A049992.P17077134837066716133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049992.P17077134837066716133

/-! ## A049992.P11218679124539937831

`A049982(n+1)-A003165(n+1)`
-/

namespace A049992.P11218679124539937831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - A003165 (n + 1)

end

end A049992.P11218679124539937831

/-! ## A049992.P9300754373314686200

`A049994(n+1)+A008620(n)*A079978(n+1)`
-/

namespace A049992.P9300754373314686200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1) + A008620 n * A079978 (n + 1)

end

end A049992.P9300754373314686200

/-! ## A049992.P3341457024516641340

`A049988(n+1)+A014405(n+2)-A049980(n+2)`
-/

namespace A049992.P3341457024516641340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A014405 (n + 2) - A049980 (n + 2))

end

end A049992.P3341457024516641340

/-! ## A049992.P8453757417106924632

`A049988(n+1)-A004526(n+3)`
-/

namespace A049992.P8453757417106924632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) - A004526 (n + 3)

end

end A049992.P8453757417106924632

/-! ## A049992.P3712731506091423578

`A049990(n+1)-∑[n%2]`
-/

namespace A049992.P3712731506091423578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049992.P3712731506091423578

/-! ## A049992.P279389523928547713

`A049990(n+1)-A110654(n)`
-/

namespace A049992.P279389523928547713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A110654 n

end

end A049992.P279389523928547713

/-! ## A049992.P15157954416399000204

`A049990(n+1)-∑[A000035(n)]`
-/

namespace A049992.P15157954416399000204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049992.P15157954416399000204

/-! ## A049992.P12420178216530011576

`A049990(n+1)-Δ[A002620(n)]`
-/

namespace A049992.P12420178216530011576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049992.P12420178216530011576

/-! ## A049992.P17742740375667850866

`A049990(n+1)-A004526(n+1)`
-/

namespace A049992.P17742740375667850866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A004526 (n + 1)

end

end A049992.P17742740375667850866

/-! ## A049992.P12392126344877350615

`A049990(n+1)-A008647(6*n+2)`
-/

namespace A049992.P12392126344877350615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A008647 (6 * n + 2)

end

end A049992.P12392126344877350615

/-! ## A049992.P13602414509923548077

`A049990(n+1)-∑[val(A020639(n+1), 2)]`
-/

namespace A049992.P13602414509923548077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049992.P13602414509923548077

/-! ## A049992.P10339518562899837652

`A065033(2*A049990(n+1))-A065033(n)`
-/

namespace A049992.P10339518562899837652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A049990 (n + 1)).toNat - A065033 n

end

end A049992.P10339518562899837652

/-! ## A049992.P4572966073494468037

`A049990(n+1)+A014405(n+2)-A049982(n+2)`
-/

namespace A049992.P4572966073494468037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) + (A014405 (n + 2) - A049982 (n + 2))

end

end A049992.P4572966073494468037

/-!
# A049993: a(n) is the number of arithmetic progressions of 3 or more positive integers, nondecreasing with sum <= n.

The programs for A049993, there is no canonical definition to state claims against.
-/

/-! ## A049993.P17104966979634102486

`∑[A049992(n+1)]`
-/

namespace A049993.P17104966979634102486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P17104966979634102486

/-! ## A049993.P8232307792652917681

`∑[A049990(n+1)-A110654(n)]`
-/

namespace A049993.P8232307792652917681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P8232307792652917681

/-! ## A049993.P16160416054598456022

`A366968(n+1)+A014406(n+1)`
-/

namespace A049993.P16160416054598456022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (n + 1) + A014406 (n + 1)

end

end A049993.P16160416054598456022

/-! ## A049993.P3364311507878661258

`∑[A049990(n+1)-∑[A000035(n)]]`
-/

namespace A049993.P3364311507878661258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P3364311507878661258

/-! ## A049993.P2205239769026814954

`∑[A023645(n+1)+A014405(n+1)]`
-/

namespace A049993.P2205239769026814954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + A014405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P2205239769026814954

/-! ## A049993.P9678858975324971638

`∑[A049982(n+1)-A003165(n+1)]`
-/

namespace A049993.P9678858975324971638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - A003165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P9678858975324971638

/-! ## A049993.P6031284779054714496

`∑[A049990(n+1)+A004526(n)-n]`
-/

namespace A049993.P6031284779054714496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) + (A004526 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049993.P6031284779054714496

/-! ## A049993.P7141737842685455851

`A049991(n+1)%A076921(n+1)`
-/

namespace A049993.P7141737842685455851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049991 (n + 1)) (A076921 (n + 1))

end

end A049993.P7141737842685455851

/-! ## A049993.P16285656064643505290

`A049991(n+1)+A014406(n+2)-A049983(n+2)`
-/

namespace A049993.P16285656064643505290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049991 (n + 1) + (A014406 (n + 2) - A049983 (n + 2))

end

end A049993.P16285656064643505290

/-!
# A049994: a(n) is the number of arithmetic progressions of 4 or more positive integers, nondecreasing with sum n.

The programs for A049994, there is no canonical definition to state claims against.
-/

/-! ## A049994.P17725849263014555896

`A049986(n+1)+A321014(n+1)`
-/

namespace A049994.P17725849263014555896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (n + 1) + A321014 (n + 1)

end

end A049994.P17725849263014555896

/-! ## A049994.P4842881064673245454

`A049992(n+1)-A175676(n+1)`
-/

namespace A049994.P4842881064673245454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A175676 (n + 1)

end

end A049994.P4842881064673245454

/-! ## A049994.P13339325023607744039

`A049992(n+1)-Δ[A000124(A002264(n))]`
-/

namespace A049994.P13339325023607744039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049994.P13339325023607744039

/-! ## A049994.P8063515648430369951

`A014405(n+1)+A023645(n+1)-A175676(n+1)`
-/

namespace A049994.P8063515648430369951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + (A023645 (n + 1) - A175676 (n + 1))

end

end A049994.P8063515648430369951

/-! ## A049994.P8762503887895405928

`A049982(n+1)-(A175676(n+1)+A003165(n+1))`
-/

namespace A049994.P8762503887895405928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - (A175676 (n + 1) + A003165 (n + 1))

end

end A049994.P8762503887895405928

/-! ## A049994.P4236095709974482089

`A049992(n+1)-A130507(A004773(n))`
-/

namespace A049994.P4236095709974482089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A130507 (A004773 n).toNat

end

end A049994.P4236095709974482089

/-! ## A049994.P3277965680474703095

`A049990(n+1)-(A175676(n+1)+A110654(n))`
-/

namespace A049994.P3277965680474703095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - (A175676 (n + 1) + A110654 n)

end

end A049994.P3277965680474703095

/-! ## A049994.P17297999202200863015

`Δ[A049995(A028310(n))]`
-/

namespace A049994.P17297999202200863015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049994.P17297999202200863015

/-! ## A049994.P1628060451075274006

`Δ[A049995(A065033(2*n))]`
-/

namespace A049994.P1628060451075274006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049994.P1628060451075274006

/-! ## A049994.P16029868479951309168

`A049995(n+1)-A049995(A028310(n))`
-/

namespace A049994.P16029868479951309168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - A049995 (A028310 n).toNat

end

end A049994.P16029868479951309168

/-! ## A049994.P8911000664080349760

`A049995(n+1)-A049995(A065033(2*n))`
-/

namespace A049994.P8911000664080349760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - A049995 (A065033 (2 * n)).toNat

end

end A049994.P8911000664080349760

/-! ## A049994.P13832118001592508588

`Δ[A049995(A007318(A000124(n)))]`
-/

namespace A049994.P13832118001592508588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049994.P13832118001592508588

/-! ## A049994.P1600047232271862432

`A049995(n+1)-A049995(A301941(n²))`
-/

namespace A049994.P1600047232271862432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (n + 1) - A049995 (A301941 (n ^ 2)).toNat

end

end A049994.P1600047232271862432

/-! ## A049994.P17600318492469190001

`Δ[A049995(A301941(n²))]`
-/

namespace A049994.P17600318492469190001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049995 (A301941 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049994.P17600318492469190001

/-!
# A049995: Number of arithmetic progressions of 4 or more positive integers, nondecreasing with sum <= n.

The programs for A049995, there is no canonical definition to state claims against.
-/

/-! ## A049995.P11458889833268089792

`∑[A049994(n+1)]`
-/

namespace A049995.P11458889833268089792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P11458889833268089792

/-! ## A049995.P17862404028692828567

`A366972(n+1)+A049987(n+1)`
-/

namespace A049995.P17862404028692828567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366972 (n + 1) + A049987 (n + 1)

end

end A049995.P17862404028692828567

/-! ## A049995.P7879591735130018024

`A049987(n+1)+∑[A321014(n+1)]`
-/

namespace A049995.P7879591735130018024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049987 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P7879591735130018024

/-! ## A049995.P14595877930371571672

`∑[A321014(n+1)+A049986(n+1)]`
-/

namespace A049995.P14595877930371571672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) + A049986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P14595877930371571672

/-! ## A049995.P8583244717713344859

`∑[A049992(n+1)-A175676(n+1)]`
-/

namespace A049995.P8583244717713344859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P8583244717713344859

/-! ## A049995.P2118202060089722226

`A049993(n+1)-∑[A175676(n+1)]`
-/

namespace A049995.P2118202060089722226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P2118202060089722226

/-! ## A049995.P7004474809505218168

`∑[A049990(n+1)-∑[n%2]-A175676(n+1)]`
-/

namespace A049995.P7004474809505218168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P7004474809505218168

/-! ## A049995.P8518334995091876202

`∑[A049992(n+1)-A130507(A004773(n))]`
-/

namespace A049995.P8518334995091876202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A130507 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P8518334995091876202

/-! ## A049995.P6980154052338230975

`∑[A049990(n+1)-(A175676(n+1)+A110654(n))]`
-/

namespace A049995.P6980154052338230975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - (A175676 (n + 1) + A110654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P6980154052338230975

/-! ## A049995.P13717003632949879393

`∑[A014405(n+1)+A023645(n+1)-A175676(n+1)]`
-/

namespace A049995.P13717003632949879393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1) + (A023645 (n + 1) - A175676 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P13717003632949879393

/-! ## A049995.P1346518142447359833

`∑[A049982(n+1)-(A175676(n+1)+A003165(n+1))]`
-/

namespace A049995.P1346518142447359833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - (A175676 (n + 1) + A003165 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P1346518142447359833

/-! ## A049995.P1598232142468461997

`∑[A049990(n+1)-A004526(n+1)-A175676(n+1)]`
-/

namespace A049995.P1598232142468461997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A004526 (n + 1) - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P1598232142468461997

/-! ## A049995.P15904150407798744302

`A049991(n+1)%A076921(n+1)-∑[A175676(n+1)]`
-/

namespace A049995.P15904150407798744302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049991 (n + 1)) (A076921 (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049995.P15904150407798744302

/-!
# A049996: a(n) is the index k such that F(k)=d(n), where d=A049874 (difference sequence of ordered products of Fibonacci numbers).

The programs for A049996, there is no canonical definition to state claims against.
-/

/-! ## A049996.P12995402012528186677

`A001177(A049874(n+1))`
-/

namespace A049996.P12995402012528186677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A049874 (n + 1)).toNat

end

end A049996.P12995402012528186677

/-! ## A049996.P10155953797464865454

`A001177(Δ[A049862(n+1)])`
-/

namespace A049996.P10155953797464865454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (n + 1) - f1 n).toNat

end

end A049996.P10155953797464865454

/-! ## A049996.P3672619355064172580

`A336717(Δ[A049862(n+1)])`
-/

namespace A049996.P3672619355064172580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (f1 (n + 1) - f1 n).toNat

end

end A049996.P3672619355064172580

/-! ## A049996.P4587323349292311025

`A108852(A049874(n+1)-1)`
-/

namespace A049996.P4587323349292311025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A049874 (n + 1) - 1).toNat

end

end A049996.P4587323349292311025

/-! ## A049996.P11053644506923030990

`A130242(A050123(n+2))+1`
-/

namespace A049996.P11053644506923030990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A050123 (n + 2)).toNat + 1

end

end A049996.P11053644506923030990

/-! ## A049996.P7453710792928932066

`A336717(and(-1, A049874(n+1)))`
-/

namespace A049996.P7453710792928932066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (Int.land (-1) (A049874 (n + 1))).toNat

end

end A049996.P7453710792928932066

/-! ## A049996.P14939158132585545180

`A108852(Δ[A049862(n+1)]-1)`
-/

namespace A049996.P14939158132585545180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (f1 (n + 1) - f1 n - 1).toNat

end

end A049996.P14939158132585545180

/-! ## A049996.P7589985154254241134

`A336717(A049874(n+1)%A062709(n))`
-/

namespace A049996.P7589985154254241134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (Int.tmod (A049874 (n + 1)) (A062709 n)).toNat

end

end A049996.P7589985154254241134

/-! ## A049996.P17105972148646055979

`A336717(A049874(n+1))%A128468(n)`
-/

namespace A049996.P17105972148646055979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336717 (A049874 (n + 1)).toNat) (A128468 n)

end

end A049996.P17105972148646055979

/-! ## A049996.P11187800942806063682

`A001177(A049862(n+2)-A049862(n+1))`
-/

namespace A049996.P11187800942806063682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A049862 (n + 2) - A049862 (n + 1)).toNat

end

end A049996.P11187800942806063682

/-! ## A049996.P13341157211653178115

`A336717(A049862(n+2)-A049862(n+1))`
-/

namespace A049996.P13341157211653178115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (A049862 (n + 2) - A049862 (n + 1)).toNat

end

end A049996.P13341157211653178115

/-!
# A049997: Numbers of the form Fibonacci(i)*Fibonacci(j).

The programs for A049997, there is no canonical definition to state claims against.
-/

/-! ## A049997.P12953589889515808947

`∪[A049862(n+1), A190018(n)]`
-/

namespace A049997.P12953589889515808947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049997.P12953589889515808947

/-! ## A049997.P3984462023686542175

`∪[A049862(n+1), A195971(n)]`
-/

namespace A049997.P3984462023686542175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049997.P3984462023686542175

/-! ## A049997.P11716798569529376110

`∑[A324969(A049996(n+1))]-1`
-/

namespace A049997.P11716798569529376110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A049996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049997.P11716798569529376110

/-! ## A049997.P6674339195606269730

`∪[A049862(n+1), A065885(n+1)]`
-/

namespace A049997.P6674339195606269730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049997.P6674339195606269730

/-! ## A049997.P6192581859391882117

`∑[A049998(n+1)]-A049998(n+1)`
-/

namespace A049997.P6192581859391882117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049998 (n + 1)

end

end A049997.P6192581859391882117

/-! ## A049997.P145609130541437723

`∑[A057427(n)*A324969(A049996(n+1))]`
-/

namespace A049997.P145609130541437723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A324969 (A049996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049997.P145609130541437723

/-! ## A049997.P5566287920404010800

`∑[A324969(A049996(n+1))%A112155(n)]`
-/

namespace A049997.P5566287920404010800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (A049996 (n + 1)).toNat) (A112155 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049997.P5566287920404010800

/-! ## A049997.P12507544505936515012

`A324969(A049996(n+1))+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A049997.P12507544505936515012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324969 (A049996 (n + 1)).toNat + a (A004273 n - (n : ℤ)).toNat

end

end A049997.P12507544505936515012

/-! ## A049997.P4679616359547779638

`round(A049862(n+2)*A057427(n)/ϕ)`
-/

namespace A049997.P4679616359547779638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049862 (n + 2) * A057427 n : ℝ) / Real.goldenRatio)

end

end A049997.P4679616359547779638

/-! ## A049997.P629006697057105326

`∪[A190018(n), A271354(n+1)]`
-/

namespace A049997.P629006697057105326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049997.P629006697057105326

/-! ## A049997.P18408774220162518743

`∑[A005206(A049874(n+1))]-1`
-/

namespace A049997.P18408774220162518743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A049874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049997.P18408774220162518743

/-! ## A049997.P17206787508983208679

`∑[A005206(A049874(n+1)*A057427(n))]`
-/

namespace A049997.P17206787508983208679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A049874 (n + 1) * A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049997.P17206787508983208679

/-! ## A049997.P1191549899238790252

`∑[A005206(A049874(n+1))%A005491(n)]`
-/

namespace A049997.P1191549899238790252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A049874 (n + 1)).toNat) (A005491 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049997.P1191549899238790252

/-! ## A049997.P10526752109730669993

`∑[A005206(A049874(n+1)%A054552(n))]`
-/

namespace A049997.P10526752109730669993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A049874 (n + 1)) (A054552 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049997.P10526752109730669993

/-! ## A049997.P15261846766430320455

`A005206(A049862(n+2)*A057427(n))`
-/

namespace A049997.P15261846766430320455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A049862 (n + 2) * A057427 n).toNat

end

end A049997.P15261846766430320455

/-! ## A049997.P384223358382007150

`A005206(∑[A049874(n+1)]*A178334(n))`
-/

namespace A049997.P384223358382007150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((∑ j ∈ Finset.range (n + 1), f1 j) * A178334 n).toNat

end

end A049997.P384223358382007150

/-! ## A049997.P1502449093151953230

`lt[0, char[A098356(n)]]`
-/

namespace A049997.P1502449093151953230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049997.P1502449093151953230

/-! ## A049997.P340864068682325441

`eq[A249783(n), A286326(A286327(n))]`
-/

namespace A049997.P340864068682325441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (A286327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049997.P340864068682325441

/-! ## A049997.P3389593343192380620

`eq[A249783(n), A286326(A286326(n)²)]`
-/

namespace A049997.P3389593343192380620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (A286326 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049997.P3389593343192380620

/-! ## A049997.P6257628868645241210

`eq[A249783(n), A286326(A286326(n)^2)]`
-/

namespace A049997.P6257628868645241210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (A286326 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049997.P6257628868645241210

/-!
# A049998: a(n) = b(n)-b(n-1), where b=A049997 are numbers of the form Fibonacci(i)*Fibonacci(j).

The programs for A049998, there is no canonical definition to state claims against.
-/

/-! ## A049998.P2840998590922552224

`Δ[A049997(n)]`
-/

namespace A049998.P2840998590922552224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049998.P2840998590922552224

/-! ## A049998.P8500203792767111280

`A000045(A049999(n+1))`
-/

namespace A049998.P8500203792767111280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A049999 (n + 1)).toNat

end

end A049998.P8500203792767111280

/-! ## A049998.P17424058452418486099

`A212804(A049999(n+1)+1)`
-/

namespace A049998.P17424058452418486099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A049999 (n + 1) + 1).toNat

end

end A049998.P17424058452418486099

/-! ## A049998.P13063932218251969559

`A053602(2*A049999(n+1))`
-/

namespace A049998.P13063932218251969559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A049999 (n + 1)).toNat

end

end A049998.P13063932218251969559

/-! ## A049998.P6106194632493384482

`A049997(n+1)-A049997(n)`
-/

namespace A049998.P6106194632493384482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 (n + 1) - A049997 n

end

end A049998.P6106194632493384482

/-! ## A049998.P12894884590119466679

`A324969(A049996(n+2))`
-/

namespace A049998.P12894884590119466679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A049996 (n + 2)).toNat

end

end A049998.P12894884590119466679

/-! ## A049998.P8184382763619422447

`A000071(A049999(n+1))-A008683(A002145(n+1))`
-/

namespace A049998.P8184382763619422447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A049999 (n + 1)).toNat - A008683 (A002145 (n + 1)).toNat

end

end A049998.P8184382763619422447

/-! ## A049998.P9787747380873595612

`A014709(A008574(n))+A000071(A049999(n+1))`
-/

namespace A049998.P9787747380873595612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A008574 n).toNat + A000071 (A049999 (n + 1)).toNat

end

end A049998.P9787747380873595612

/-! ## A049998.P7876662513351734019

`A005206(A049874(n+2))`
-/

namespace A049998.P7876662513351734019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A049874 (n + 2)).toNat

end

end A049998.P7876662513351734019

/-! ## A049998.P17272924404292864492

`A076885(A050121(n+3))`
-/

namespace A049998.P17272924404292864492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A050121 (n + 3)).toNat

end

end A049998.P17272924404292864492

/-!
# A049999: a(n) = smallest index k such that Fibonacci(k) = d(n), where d = A049998 (sequence of first differences of ordered products of Fibonacci numbers, i.e., of A049997, with no duplicates).

The programs for A049999, there is no canonical definition to state claims against.
-/

/-! ## A049999.P5551766933894837164

`A001177(Δ[A049997(n)])`
-/

namespace A049999.P5551766933894837164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (n + 1) - f1 n).toNat

end

end A049999.P5551766933894837164

/-! ## A049999.P6239330706229245704

`A020344(Δ[A049997(n)])`
-/

namespace A049999.P6239330706229245704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020344 (f1 (n + 1) - f1 n).toNat

end

end A049999.P6239330706229245704

/-! ## A049999.P17376576693640643285

`A023183(Δ[A049997(n)])`
-/

namespace A049999.P17376576693640643285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023183 (f1 (n + 1) - f1 n).toNat

end

end A049999.P17376576693640643285

/-! ## A049999.P3110254115505428156

`A130234(Δ[A049997(n)])`
-/

namespace A049999.P3110254115505428156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (f1 (n + 1) - f1 n).toNat

end

end A049999.P3110254115505428156

/-! ## A049999.P5473173327226285887

`A336717(Δ[A049997(n)])`
-/

namespace A049999.P5473173327226285887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (f1 (n + 1) - f1 n).toNat

end

end A049999.P5473173327226285887

/-! ## A049999.P15317382696116918831

`A001177(A049998(n+1))`
-/

namespace A049999.P15317382696116918831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A049998 (n + 1)).toNat

end

end A049999.P15317382696116918831

/-! ## A049999.P16286002478482384137

`A108852(Δ[A049997(n)]-1)`
-/

namespace A049999.P16286002478482384137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (f1 (n + 1) - f1 n - 1).toNat

end

end A049999.P16286002478482384137

/-! ## A049999.P2208382460693263248

`A108852(A049998(n+1)-1)`
-/

namespace A049999.P2208382460693263248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A049998 (n + 1) - 1).toNat

end

end A049999.P2208382460693263248

/-! ## A049999.P1723299823261581218

`A001177(A049997(n+1)-A049997(n))`
-/

namespace A049999.P1723299823261581218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A049997 (n + 1) - A049997 n).toNat

end

end A049999.P1723299823261581218

/-! ## A049999.P4235627668045819182

`A336717(A049997(n+1)-A049997(n))`
-/

namespace A049999.P4235627668045819182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (A049997 (n + 1) - A049997 n).toNat

end

end A049999.P4235627668045819182

/-! ## A049999.P4964656186313354844

`A336717(root(A049998(n+1), A158388(n)))`
-/

namespace A049999.P4964656186313354844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (SequenceMachineLib.roundAway ((A049998 (n + 1) : ℝ) ^ (1 / (A158388 n : ℝ)))).toNat

end

end A049999.P4964656186313354844

/-! ## A049999.P7972293172892899383

`A336717(A049998(n+1)%A017489(n))`
-/

namespace A049999.P7972293172892899383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336717 (Int.tmod (A049998 (n + 1)) (A017489 n)).toNat

end

end A049999.P7972293172892899383

/-! ## A049999.P4019234717875055809

`A072649(A004273(Δ[A049997(n)]))`
-/

namespace A049999.P4019234717875055809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A004273 (f1 (n + 1) - f1 n).toNat).toNat

end

end A049999.P4019234717875055809

