import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A116303: n times n+5 gives the concatenation of two numbers m and m+2.

The programs for A116303, there is no canonical definition to state claims against.
-/

/-! ## A116303.P9420601112811640889

`A116330(n+1)-1`
-/

namespace A116303.P9420601112811640889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (n + 1) - 1

end

end A116303.P9420601112811640889

/-! ## A116303.P5414295800866540599

`A116343(n+1)-2%lcm(7, a(n-1))` with `a(0)=3`
-/

namespace A116303.P5414295800866540599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A116343 (n + 1) - ((2 % Int.lcm 7 (a (n - 1)) : ℕ) : ℤ)

end

end A116303.P5414295800866540599

/-! ## A116303.P5825184100099394160

`record[A116330(A126759(n))-1]`
-/

namespace A116303.P5825184100099394160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116303.P5825184100099394160

/-! ## A116303.P12256556484698705091

`A129667(A020484(n))+A116330(n+1)`
-/

namespace A116303.P12256556484698705091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A020484 n).toNat + A116330 (n + 1)

end

end A116303.P12256556484698705091

/-! ## A116303.P16689250422316385433

`record[A116330(A137735(n))-1]`
-/

namespace A116303.P16689250422316385433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (A137735 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116303.P16689250422316385433

/-! ## A116303.P13700134944047477221

`A116343(n+1)-(A267172(A151878(n))+1)`
-/

namespace A116303.P13700134944047477221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 1) - (A267172 (A151878 n).toNat + 1)

end

end A116303.P13700134944047477221

/-! ## A116303.P15561110259427287730

`A116343(n+1)-(A267172(A151934(n))+1)`
-/

namespace A116303.P15561110259427287730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 1) - (A267172 (A151934 n).toNat + 1)

end

end A116303.P15561110259427287730

/-!
# A116305: Numbers k such that k*(k+8) gives the concatenation of two numbers m and m+2.

The programs for A116305, there is no canonical definition to state claims against.
-/

/-! ## A116305.P637555022878956925

`A116352(n+1)-1`
-/

namespace A116305.P637555022878956925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116352 (n + 1) - 1

end

end A116305.P637555022878956925

/-! ## A116305.P13056798964089067835

`A134824(n+2)+A116352(n+1)`
-/

namespace A116305.P13056798964089067835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116352 (n + 1)

end

end A116305.P13056798964089067835

/-! ## A116305.P1181622287162397779

`A260196(n+2)+A116352(n+1)`
-/

namespace A116305.P1181622287162397779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116352 (n + 1)

end

end A116305.P1181622287162397779

/-! ## A116305.P5138147509637801888

`A118830(Δ[n²])+A116352(n+1)`
-/

namespace A116305.P5138147509637801888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A116352 (n + 1)

end

end A116305.P5138147509637801888

/-! ## A116305.P6577821859176586940

`abs(A116352(n+1)+A008683(A007918(n)))`
-/

namespace A116305.P6577821859176586940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116352 (n + 1) + A008683 (A007918 n).toNat|

end

end A116305.P6577821859176586940

/-!
# A116308: Numbers k such that k*(k+2) is the concatenation of two numbers m and m+3.

The programs for A116308, there is no canonical definition to state claims against.
-/

/-! ## A116308.P17712658561914171770

`A115438(n+3)-1`
-/

namespace A116308.P17712658561914171770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115438 (n + 3) - 1

end

end A116308.P17712658561914171770

/-! ## A116308.P7485228458625822285

`abs(A115438(n+3)+A057428(n+1))`
-/

namespace A116308.P7485228458625822285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115438 (n + 3) + A057428 (n + 1)|

end

end A116308.P7485228458625822285

/-! ## A116308.P11927779912871156960

`A115438(n+3)+A001478(n+1)+n`
-/

namespace A116308.P11927779912871156960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115438 (n + 3) + A001478 (n + 1) + (n : ℤ)

end

end A116308.P11927779912871156960

/-! ## A116308.P8437417641801328013

`A354257(A016825(n))+A115438(n+3)`
-/

namespace A116308.P8437417641801328013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354257 (A016825 n).toNat + A115438 (n + 3)

end

end A116308.P8437417641801328013

/-! ## A116308.P10747598728573223083

`A144472(A077740(n+1))+A115438(n+3)`
-/

namespace A116308.P10747598728573223083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (A077740 (n + 1)).toNat + A115438 (n + 3)

end

end A116308.P10747598728573223083

/-!
# A116309: Numbers k such that k*(k+3) gives the concatenation of two numbers m and m+3.

The programs for A116309, there is no canonical definition to state claims against.
-/

/-! ## A116309.P11624448437184240661

`A116281(n+1)+1`
-/

namespace A116309.P11624448437184240661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116281 (n + 1) + 1

end

end A116309.P11624448437184240661

/-! ## A116309.P4560069504176165706

`A116243(n+1)+2`
-/

namespace A116309.P4560069504176165706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116243 (n + 1) + 2

end

end A116309.P4560069504176165706

/-! ## A116309.P5873533659254592371

`A116322(n+1)-1`
-/

namespace A116309.P5873533659254592371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116322 (n + 1) - 1

end

end A116309.P5873533659254592371

/-! ## A116309.P11259783842314170670

`record[A116322(A134478(n))-1]`
-/

namespace A116309.P11259783842314170670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116322 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116309.P11259783842314170670

/-! ## A116309.P1313587274995823171

`A260196(n+2)+A116322(n+1)`
-/

namespace A116309.P1313587274995823171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116322 (n + 1)

end

end A116309.P1313587274995823171

/-!
# A116315: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m+4.

The programs for A116315, there is no canonical definition to state claims against.
-/

/-! ## A116315.P14146475798378537882

`A116297(n+1)+1`
-/

namespace A116315.P14146475798378537882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116297 (n + 1) + 1

end

end A116315.P14146475798378537882

/-! ## A116315.P15622427852466221172

`A115439(n+1)-1`
-/

namespace A116315.P15622427852466221172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (n + 1) - 1

end

end A116315.P15622427852466221172

/-! ## A116315.P8148172579204174302

`record[A115439(A133310(n))-1]`
-/

namespace A116315.P8148172579204174302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116315.P8148172579204174302

/-! ## A116315.P7296340029711105156

`record[A115439(A126759(n))-1]`
-/

namespace A116315.P7296340029711105156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116315.P7296340029711105156

/-! ## A116315.P128570037539049942

`record[A115439(A134478(n))-1]`
-/

namespace A116315.P128570037539049942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115439 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116315.P128570037539049942

/-!
# A116316: Numbers k such that k*(k+3) gives the concatenation of two numbers m and m+4.

The programs for A116316, there is no canonical definition to state claims against.
-/

/-! ## A116316.P6166239483007547745

`A116329(n+1)-1`
-/

namespace A116316.P6166239483007547745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116329 (n + 1) - 1

end

end A116316.P6166239483007547745

/-! ## A116316.P16383841576452037742

`A159853(gcd(n, n+1))+A116329(n+1)`
-/

namespace A116316.P16383841576452037742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (Nat.gcd n (n + 1)) + A116329 (n + 1)

end

end A116316.P16383841576452037742

/-! ## A116316.P14868534782619181437

`A134824(n+2)+A116329(n+1)`
-/

namespace A116316.P14868534782619181437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A116329 (n + 1)

end

end A116316.P14868534782619181437

/-! ## A116316.P9201019935446912330

`A260196(n+2)+A116329(n+1)`
-/

namespace A116316.P9201019935446912330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116329 (n + 1)

end

end A116316.P9201019935446912330

/-! ## A116316.P10252957670514162602

`record[A116329(A134478(n))-1]`
-/

namespace A116316.P10252957670514162602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116329 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116316.P10252957670514162602

/-!
# A116317: Numbers k such that k*(k+4) gives the concatenation of two numbers m and m+4.

The programs for A116317, there is no canonical definition to state claims against.
-/

/-! ## A116317.P9277464559957512465

`A116282(n+1)+1`
-/

namespace A116317.P9277464559957512465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116282 (n + 1) + 1

end

end A116317.P9277464559957512465

/-! ## A116317.P8187912641343696342

`A116239(n+1)+2`
-/

namespace A116317.P8187912641343696342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116239 (n + 1) + 2

end

end A116317.P8187912641343696342

/-! ## A116317.P17316486761310995651

`A116335(n+1)-1`
-/

namespace A116317.P17316486761310995651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (n + 1) - 1

end

end A116317.P17316486761310995651

/-! ## A116317.P9242357059735947335

`A115440(n+1)-2`
-/

namespace A116317.P9242357059735947335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115440 (n + 1) - 2

end

end A116317.P9242357059735947335

/-! ## A116317.P6974679304661728790

`record[A116335(A126759(n))-1]`
-/

namespace A116317.P6974679304661728790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116317.P6974679304661728790

/-!
# A116318: n times n+6 gives the concatenation of two numbers m and m+4.

The programs for A116318, there is no canonical definition to state claims against.
-/

/-! ## A116318.P5933845996657860852

`A116350(n+1)-1`
-/

namespace A116318.P5933845996657860852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116350 (n + 1) - 1

end

end A116318.P5933845996657860852

/-!
# A116322: Numbers k such that k*(k+1) gives the concatenation of two numbers m and m+5.

The programs for A116322, there is no canonical definition to state claims against.
-/

/-! ## A116322.P3117478621073794922

`A116309(n+1)+1`
-/

namespace A116322.P3117478621073794922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116309 (n + 1) + 1

end

end A116322.P3117478621073794922

/-! ## A116322.P3073289441143062223

`A116281(n+1)+2`
-/

namespace A116322.P3073289441143062223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116281 (n + 1) + 2

end

end A116322.P3073289441143062223

/-! ## A116322.P14851001063804048174

`A116243(n+1)+3`
-/

namespace A116322.P14851001063804048174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116243 (n + 1) + 3

end

end A116322.P14851001063804048174

/-!
# A116323: n times n+4 gives the concatenation of two numbers m and m+5.

The programs for A116323, there is no canonical definition to state claims against.
-/

/-! ## A116323.P7878168038050601725

`A116344(n+1)-1`
-/

namespace A116323.P7878168038050601725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116344 (n + 1) - 1

end

end A116323.P7878168038050601725

/-! ## A116323.P8602930751828949500

`A115441(n+1)-2`
-/

namespace A116323.P8602930751828949500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (n + 1) - 2

end

end A116323.P8602930751828949500

/-! ## A116323.P9054100478370388991

`record[A116344(A126759(n))-1]`
-/

namespace A116323.P9054100478370388991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116344 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116323.P9054100478370388991

/-! ## A116323.P12812967935428994341

`record[A115441(A126759(2*n))-2]`
-/

namespace A116323.P12812967935428994341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (A126759 (2 * n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116323.P12812967935428994341

/-! ## A116323.P15960183011092391446

`record[A115441(A134478(n))-2]`
-/

namespace A116323.P15960183011092391446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (A134478 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116323.P15960183011092391446

/-!
# A116324: Numbers k such that k * (k+5) gives the concatenation of two numbers m and m+5.

The programs for A116324, there is no canonical definition to state claims against.
-/

/-! ## A116324.P9210661449307858904

`A116283(n+2)+1`
-/

namespace A116324.P9210661449307858904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116283 (n + 2) + 1

end

end A116324.P9210661449307858904

/-! ## A116324.P13744406463232688923

`A116349(n+1)-1`
-/

namespace A116324.P13744406463232688923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116349 (n + 1) - 1

end

end A116324.P13744406463232688923

/-! ## A116324.P17540474298847706466

`A260196(n+2)+A116349(n+1)`
-/

namespace A116324.P17540474298847706466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A116349 (n + 1)

end

end A116324.P17540474298847706466

/-! ## A116324.P9159776636882597933

`A001489(n+1)+A116349(n+1)+n`
-/

namespace A116324.P9159776636882597933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A116349 (n + 1) + (n : ℤ))

end

end A116324.P9159776636882597933

/-! ## A116324.P13098687613432341743

`abs(A116349(n+1)+A008683(A007918(n)))`
-/

namespace A116324.P13098687613432341743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116349 (n + 1) + A008683 (A007918 n).toNat|

end

end A116324.P13098687613432341743

/-! ## A116324.P8442163531038050518

`abs(A116349(n+1)+A008683(A184856(n+1)))`
-/

namespace A116324.P8442163531038050518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116349 (n + 1) + A008683 (A184856 (n + 1)).toNat|

end

end A116324.P8442163531038050518

/-!
# A116326: Numbers k such that k*(k+7) gives the concatenation of two numbers m and m+5.

The programs for A116326, there is no canonical definition to state claims against.
-/

/-! ## A116326.P271995669877665093

`A116271(n+2)+1`
-/

namespace A116326.P271995669877665093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116271 (n + 2) + 1

end

end A116326.P271995669877665093

/-!
# A116329: Numbers k such that k*(k+1) gives the concatenation of two numbers m and m+6.

The programs for A116329, there is no canonical definition to state claims against.
-/

/-! ## A116329.P8379654333196608962

`A116316(n+1)+1`
-/

namespace A116329.P8379654333196608962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116316 (n + 1) + 1

end

end A116329.P8379654333196608962

/-! ## A116329.P3017692535420066662

`A004830(A116316(n+1))`
-/

namespace A116329.P3017692535420066662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A116316 (n + 1)).toNat

end

end A116329.P3017692535420066662

/-!
# A116330: Numbers k such that k*(k+3) gives the concatenation of two numbers m and m+6.

The programs for A116330, there is no canonical definition to state claims against.
-/

/-! ## A116330.P5961691950251094608

`A116303(n+1)+1`
-/

namespace A116330.P5961691950251094608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116303 (n + 1) + 1

end

end A116330.P5961691950251094608

/-! ## A116330.P7278253397192284258

`A116343(n+1)-2%lcm(7, a(n-1))+1` with `a(0)=4`
-/

namespace A116330.P7278253397192284258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A116343 (n + 1) - ((2 % Int.lcm 7 (a (n - 1)) : ℕ) : ℤ) + 1

end

end A116330.P7278253397192284258

/-! ## A116330.P998140770691422295

`A116343(n+1)-A267172(A151878(n))`
-/

namespace A116330.P998140770691422295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 1) - A267172 (A151878 n).toNat

end

end A116330.P998140770691422295

/-! ## A116330.P13751867801921579521

`A116343(n+1)-A267172(A151934(n))`
-/

namespace A116330.P13751867801921579521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 1) - A267172 (A151934 n).toNat

end

end A116330.P13751867801921579521

/-! ## A116330.P11304884184790239102

`A116343(n+1)-A001700(A001700(n)*A349399(n+1))`
-/

namespace A116330.P11304884184790239102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116343 (n + 1) - A001700 (A001700 n * A349399 (n + 1)).toNat

end

end A116330.P11304884184790239102

/-!
# A116335: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m+7.

The programs for A116335, there is no canonical definition to state claims against.
-/

/-! ## A116335.P10195053996785750335

`A116317(n+1)+1`
-/

namespace A116335.P10195053996785750335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (n + 1) + 1

end

end A116335.P10195053996785750335

/-! ## A116335.P1900823123912409032

`A115440(n+1)-1`
-/

namespace A116335.P1900823123912409032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115440 (n + 1) - 1

end

end A116335.P1900823123912409032

/-! ## A116335.P14574862823967069556

`A116282(n+1)+2`
-/

namespace A116335.P14574862823967069556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116282 (n + 1) + 2

end

end A116335.P14574862823967069556

/-! ## A116335.P16341369989261539976

`A116239(n+1)+3`
-/

namespace A116335.P16341369989261539976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116239 (n + 1) + 3

end

end A116335.P16341369989261539976

/-! ## A116335.P5587604596641163909

`record[A115440(A126759(n))-1]`
-/

namespace A116335.P5587604596641163909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115440 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116335.P5587604596641163909

/-!
# A116336: n times n+3 gives the concatenation of two numbers m and m+7.

The programs for A116336, there is no canonical definition to state claims against.
-/

/-! ## A116336.P4462755314209272020

`A158388(n)+A116310(n+2)`
-/

namespace A116336.P4462755314209272020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A116310 (n + 2)

end

end A116336.P4462755314209272020

/-! ## A116336.P6454540865769288872

`A116310(n+2)-A260196(2*n)`
-/

namespace A116336.P6454540865769288872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 2) - A260196 (2 * n)

end

end A116336.P6454540865769288872

/-! ## A116336.P10309825114348054168

`A260196(n+1)+A116310(n+2)+2`
-/

namespace A116336.P10309825114348054168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 1) + (A116310 (n + 2) + 2)

end

end A116336.P10309825114348054168

/-! ## A116336.P5253726492841273292

`A116310(n+2)+A033999(A046109(n))`
-/

namespace A116336.P5253726492841273292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 2) + A033999 (A046109 n).toNat

end

end A116336.P5253726492841273292

/-! ## A116336.P10988169909892336085

`A116310(n+2)+A033999(A000123(n))`
-/

namespace A116336.P10988169909892336085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 2) + A033999 (A000123 n).toNat

end

end A116336.P10988169909892336085

/-!
# A116338: n times n+5 gives the concatenation of two numbers m and m+7.

The programs for A116338, there is no canonical definition to state claims against.
-/

/-! ## A116338.P10526863062954061305

`A116298(n+2)+1`
-/

namespace A116338.P10526863062954061305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116298 (n + 2) + 1

end

end A116338.P10526863062954061305

/-! ## A116338.P14336391748617824190

`A116245(n+2)+2`
-/

namespace A116338.P14336391748617824190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116245 (n + 2) + 2

end

end A116338.P14336391748617824190

/-!
# A116343: Numbers k such that k*(k+1) gives the concatenation of two numbers m and m+8.

The programs for A116343, there is no canonical definition to state claims against.
-/

/-! ## A116343.P1806338317419883709

`A116303(n+1)+A020639(A140353(n+1))`
-/

namespace A116343.P1806338317419883709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116303 (n + 1) + A020639 (A140353 (n + 1)).toNat

end

end A116343.P1806338317419883709

/-! ## A116343.P13493122393778795185

`A116330(n+1)+A020639(A140353(n+1))-1`
-/

namespace A116343.P13493122393778795185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (n + 1) + (A020639 (A140353 (n + 1)).toNat - 1)

end

end A116343.P13493122393778795185

/-! ## A116343.P17878416660325777505

`A267172(A151878(n))+A116330(n+1)`
-/

namespace A116343.P17878416660325777505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 (A151878 n).toNat + A116330 (n + 1)

end

end A116343.P17878416660325777505

/-! ## A116343.P2352306918605965865

`A267172(A151934(n))+A116330(n+1)`
-/

namespace A116343.P2352306918605965865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267172 (A151934 n).toNat + A116330 (n + 1)

end

end A116343.P2352306918605965865

/-! ## A116343.P13678376105887120423

`A116330(n+1)+A001700(A001700(n)*A349399(n+1))`
-/

namespace A116343.P13678376105887120423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116330 (n + 1) + A001700 (A001700 n * A349399 (n + 1)).toNat

end

end A116343.P13678376105887120423

/-!
# A116344: Numbers k such that k*(k+2) gives the concatenation of two numbers m and m+8.

The programs for A116344, there is no canonical definition to state claims against.
-/

/-! ## A116344.P9891739015444010568

`A116323(n+1)+1`
-/

namespace A116344.P9891739015444010568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116323 (n + 1) + 1

end

end A116344.P9891739015444010568

/-! ## A116344.P7675001445012437687

`A115441(n+1)-1`
-/

namespace A116344.P7675001445012437687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (n + 1) - 1

end

end A116344.P7675001445012437687

/-! ## A116344.P12659129935438908584

`A134824(n+2)+A115441(n+1)`
-/

namespace A116344.P12659129935438908584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A115441 (n + 1)

end

end A116344.P12659129935438908584

/-! ## A116344.P582842838731967937

`record[A115441(A126759(n))-1]`
-/

namespace A116344.P582842838731967937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116344.P582842838731967937

/-! ## A116344.P5327702152394081064

`record[A115441(A134478(n))-1]`
-/

namespace A116344.P5327702152394081064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115441 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116344.P5327702152394081064

/-!
# A116348: Numbers k such that k*(k+1) gives the concatenation of two numbers m and m+9.

The programs for A116348, there is no canonical definition to state claims against.
-/

/-! ## A116348.P5465323977193872870

`A116310(n+2)-2*A260196(n+1)`
-/

namespace A116348.P5465323977193872870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 2) - 2 * A260196 (n + 1)

end

end A116348.P5465323977193872870

/-! ## A116348.P7180172987533433757

`A116336(n+1)+A019431(A004277(n))`
-/

namespace A116348.P7180172987533433757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116336 (n + 1) + A019431 (A004277 n).toNat

end

end A116348.P7180172987533433757

/-! ## A116348.P8984638977787065055

`A116336(n+1)+A019431(A112591(n+1))`
-/

namespace A116348.P8984638977787065055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116336 (n + 1) + A019431 (A112591 (n + 1)).toNat

end

end A116348.P8984638977787065055

/-! ## A116348.P1737757697215440483

`A116310(n+2)+A178815(n+1)!`
-/

namespace A116348.P1737757697215440483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116310 (n + 2) + (Nat.factorial (A178815 (n + 1)).toNat : ℤ)

end

end A116348.P1737757697215440483

/-! ## A116348.P8372253699271932401

`A116336(n+1)+A003215(A151878(n))`
-/

namespace A116348.P8372253699271932401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116336 (n + 1) + A003215 (A151878 n).toNat

end

end A116348.P8372253699271932401

/-!
# A116349: Numbers k such that k*(k+3) gives the concatenation of two numbers m and m+9.

The programs for A116349, there is no canonical definition to state claims against.
-/

/-! ## A116349.P6857159023320276773

`A116324(n+1)+1`
-/

namespace A116349.P6857159023320276773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116324 (n + 1) + 1

end

end A116349.P6857159023320276773

/-! ## A116349.P3270933776712553906

`A116283(n+2)+2`
-/

namespace A116349.P3270933776712553906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116283 (n + 2) + 2

end

end A116349.P3270933776712553906

/-!
# A116350: Numbers k such that k*(k+4) gives the concatenation of two numbers m and m+9.

The programs for A116350, there is no canonical definition to state claims against.
-/

/-! ## A116350.P4519626079034380422

`A116318(n+1)+1`
-/

namespace A116350.P4519626079034380422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116318 (n + 1) + 1

end

end A116350.P4519626079034380422

/-!
# A116352: Numbers k such that k*(k+6) gives the concatenation of two numbers m and m+9.

The programs for A116352, there is no canonical definition to state claims against.
-/

/-! ## A116352.P5620880011092641573

`A116305(n+1)+1`
-/

namespace A116352.P5620880011092641573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116305 (n + 1) + 1

end

end A116352.P5620880011092641573

/-!
# A116357: Number of partitions of n into products of two successive primes (A006094).

The programs for A116357, there is no canonical definition to state claims against.
-/

/-! ## A116357.P10330689076813486874

`A120569(gcd(n+1, A234936(n+2)))`
-/

namespace A116357.P10330689076813486874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120569 (Int.gcd (n + 1 : ℤ) (A234936 (n + 2)))

end

end A116357.P10330689076813486874

/-! ## A116357.P9956051078384368612

`A000045(A116376(n+1))%A328450(n)`
-/

namespace A116357.P9956051078384368612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A116376 (n + 1)).toNat) (A328450 n)

end

end A116357.P9956051078384368612

/-! ## A116357.P13123638083445638567

`A000045(and(A116376(n+1), A274995(n)))`
-/

namespace A116357.P13123638083445638567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A116376 (n + 1)) (A274995 n)).toNat

end

end A116357.P13123638083445638567

/-! ## A116357.P7872719326213014790

`A000045(A116376(n+1)%A157703(n+2))`
-/

namespace A116357.P7872719326213014790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A116376 (n + 1)) (A157703 (n + 2))).toNat

end

end A116357.P7872719326213014790

/-! ## A116357.P3614508276766782286

`A239737(A116376(n+1))%A061918(n+3)`
-/

namespace A116357.P3614508276766782286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239737 (A116376 (n + 1)).toNat) (A061918 (n + 3))

end

end A116357.P3614508276766782286

/-!
# A116358: Numbers that cannot be written as sum of products of two successive primes.

The programs for A116358, there is no canonical definition to state claims against.
-/

/-! ## A116358.P6118300754110371849

`eq[0, A116357(n+1)]+1`
-/

namespace A116358.P6118300754110371849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116358.P6118300754110371849

/-! ## A116358.P740585601381312898

`lt[floor(n/5)-floor((n-1)/6)-1, A080425(n)]`
-/

namespace A116358.P740585601381312898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116358.P740585601381312898

/-! ## A116358.P13907315185771836262

`comp[A116359(A064989(n+1))-1]+1`
-/

namespace A116358.P13907315185771836262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116359 (A064989 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A116358.P13907315185771836262

/-! ## A116358.P10240337223929100877

`record[gcd(A000027(n+1), A116357(n+1))]`
-/

namespace A116358.P10240337223929100877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A116357 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116358.P10240337223929100877

/-! ## A116358.P6244609239548072940

`lt[A147763(A116357(n+1)+1), 1]+1`
-/

namespace A116358.P6244609239548072940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147763 (A116357 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A116358.P6244609239548072940

/-!
# A116359: Numbers that can be written as sum of products of two successive primes.

The programs for A116359, there is no canonical definition to state claims against.
-/

/-! ## A116359.P12190396407088706003

`comp[A116358(n+1)-1]+1`
-/

namespace A116359.P12190396407088706003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116358 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A116359.P12190396407088706003

/-!
# A116360: Smallest number having exactly n partitions into products of two successive primes (A006094), or -1 if no such number exists.

The programs for A116360, there is no canonical definition to state claims against.
-/

/-! ## A116360.P6661723010316649588

`∩[A325593(n+1), A048311(n)]`
-/

namespace A116360.P6661723010316649588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048311 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116360.P6661723010316649588

/-! ## A116360.P7929819200084426994

`∩[A325593(n+1), A048338(n)]`
-/

namespace A116360.P7929819200084426994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116360.P7929819200084426994

/-! ## A116360.P15007922571894782357

`∩[A325593(n+1), A360799(n)]`
-/

namespace A116360.P15007922571894782357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116360.P15007922571894782357

/-!
# A116361: Smallest k such that n XOR n*2^k = n*(2^k + 1).

The programs for A116361, the canonical program `A116361.P14000542580519849199` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116361 has offset 0).

The definition of A116361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116361.P14000542580519849199

`A089309(A348363(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A116361

/-- `A089309(A348363(n))` -/
def P14000542580519849199.Spec : Prop :=
  ∀ n, P14000542580519849199.a n = A116361 n

theorem P14000542580519849199.correct : P14000542580519849199.Spec := by
  intro n
  simp only [A116361]

end A116361

/-! ## A116361.P6366509829657313411

`A007814(A348363(n)+1)`
-/

namespace A116361.P6366509829657313411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A348363 n + 1).toNat

end

end A116361.P6366509829657313411

namespace A116361

/-- `A007814(A348363(n)+1)` -/
def P6366509829657313411.Spec : Prop :=
  ∀ n, P6366509829657313411.a n = A116361 n

end A116361

/-! ## A116361.P9051029428359435171

`A050603(A348363(n))%A045849(n)`
-/

namespace A116361.P9051029428359435171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050603 (A348363 n).toNat) (A045849 n)

end

end A116361.P9051029428359435171

namespace A116361

/-- `A050603(A348363(n))%A045849(n)` -/
def P9051029428359435171.Spec : Prop :=
  ∀ n, P9051029428359435171.a n = A116361 n

end A116361

/-! ## A116361.P4899208319559194674

`A285097(A348363(n)+2)`
-/

namespace A116361.P4899208319559194674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A348363 n + 2).toNat

end

end A116361.P4899208319559194674

namespace A116361

/-- `A285097(A348363(n)+2)` -/
def P4899208319559194674.Spec : Prop :=
  ∀ n, P4899208319559194674.a n = A116361 n

end A116361

/-! ## A116361.P12411310177970810501

`A050603(2*A348363(n))-1`
-/

namespace A116361.P12411310177970810501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (2 * A348363 n).toNat - 1

end

end A116361.P12411310177970810501

namespace A116361

/-- `A050603(2*A348363(n))-1` -/
def P12411310177970810501.Spec : Prop :=
  ∀ n, P12411310177970810501.a n = A116361 n

end A116361

/-!
# A116362: Smallest m such that A116361(m) = n.

The programs for A116362, the canonical program `A116362.P13463011195399606758` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116362 has offset 0).

The definition of A116362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116362.P13463011195399606758

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=11, a(5)=23`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116362

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P13463011195399606758.Spec : Prop :=
  ∀ n, P13463011195399606758.a n = A116362 n

theorem P13463011195399606758.correct : P13463011195399606758.Spec := by
  intro n
  simp only [A116362]

end A116362

/-! ## A116362.P4636612015954071098

`or(A060546(n)-1, A131577(n))`
-/

namespace A116362.P4636612015954071098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060546 n - 1) (A131577 n)

end

end A116362.P4636612015954071098

namespace A116362

/-- `or(A060546(n)-1, A131577(n))` -/
def P4636612015954071098.Spec : Prop :=
  ∀ n, P4636612015954071098.a n = A116362 n

end A116362

/-! ## A116362.P11797531621386439368

`or(1, A011782(n))+A016116(n+1)-2`
-/

namespace A116362.P11797531621386439368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011782 n) + (A016116 (n + 1) - 2)

end

end A116362.P11797531621386439368

namespace A116362

/-- `or(1, A011782(n))+A016116(n+1)-2` -/
def P11797531621386439368.Spec : Prop :=
  ∀ n, P11797531621386439368.a n = A116362 n

end A116362

/-! ## A116362.P6955645027590400302

`or(A000225(A110654(n)), A056326(n+1))`
-/

namespace A116362.P6955645027590400302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (A110654 n).toNat) (A056326 (n + 1))

end

end A116362.P6955645027590400302

namespace A116362

/-- `or(A000225(A110654(n)), A056326(n+1))` -/
def P6955645027590400302.Spec : Prop :=
  ∀ n, P6955645027590400302.a n = A116362 n

end A116362

/-! ## A116362.P1439958602592456393

`or(A056326(n+1), A056326(A080513(n)))`
-/

namespace A116362.P1439958602592456393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056326 (n + 1)) (A056326 (A080513 n).toNat)

end

end A116362.P1439958602592456393

namespace A116362

/-- `or(A056326(n+1), A056326(A080513(n)))` -/
def P1439958602592456393.Spec : Prop :=
  ∀ n, P1439958602592456393.a n = A116362 n

end A116362

/-! ## A116362.P5523922309043969811

`or(A056326(n+1), A056326(A110654(n)+1))`
-/

namespace A116362.P5523922309043969811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056326 (n + 1)) (A056326 (A110654 n + 1).toNat)

end

end A116362.P5523922309043969811

namespace A116362

/-- `or(A056326(n+1), A056326(A110654(n)+1))` -/
def P5523922309043969811.Spec : Prop :=
  ∀ n, P5523922309043969811.a n = A116362 n

end A116362

/-! ## A116362.P15139786376829321334

`or(A000225(A002265(2*(n+1))), A131577(n))`
-/

namespace A116362.P15139786376829321334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (A002265 (2 * (n + 1))).toNat) (A131577 n)

end

end A116362.P15139786376829321334

namespace A116362

/-- `or(A000225(A002265(2*(n+1))), A131577(n))` -/
def P15139786376829321334.Spec : Prop :=
  ∀ n, P15139786376829321334.a n = A116362 n

end A116362

/-! ## A116362.P16092332496346009959

`or(A000225(A002265(2*(n+1))), A158780(2*n))`
-/

namespace A116362.P16092332496346009959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (A002265 (2 * (n + 1))).toNat) (A158780 (2 * n))

end

end A116362.P16092332496346009959

namespace A116362

/-- `or(A000225(A002265(2*(n+1))), A158780(2*n))` -/
def P16092332496346009959.Spec : Prop :=
  ∀ n, P16092332496346009959.a n = A116362 n

end A116362

/-! ## A116362.P16206246008138872655

`or(A186731(n)+A056326(n+1), A056326(n+1))`
-/

namespace A116362.P16206246008138872655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186731 n + A056326 (n + 1)) (A056326 (n + 1))

end

end A116362.P16206246008138872655

namespace A116362

/-- `or(A186731(n)+A056326(n+1), A056326(n+1))` -/
def P16206246008138872655.Spec : Prop :=
  ∀ n, P16206246008138872655.a n = A116362 n

end A116362

/-! ## A116362.P3331048921122451856

`xor(A122746(n), A290114(n))`
-/

namespace A116362.P3331048921122451856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122746 n) (A290114 n)

end

end A116362.P3331048921122451856

namespace A116362

/-- `xor(A122746(n), A290114(n))` -/
def P3331048921122451856.Spec : Prop :=
  ∀ n, P3331048921122451856.a n = A116362 n

end A116362

/-!
# A116363: a(n) = dot product of row n in Catalan triangle A033184 with row n in Pascal's triangle.

The programs for A116363, the canonical program `A116363.P9413902486912199227` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116363 has offset 0).

The definition of A116363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116363.P13552976152193423854

`A047781(n)+A001003(n)`
-/

namespace A116363.P13552976152193423854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 n + A001003 n

end

end A116363.P13552976152193423854

namespace A116363

/-- `A047781(n)+A001003(n)` -/
def P13552976152193423854.Spec : Prop :=
  ∀ n, P13552976152193423854.a n = A116363 n

end A116363

/-! ## A116363.P7962016195696050866

`A047781(n)+abs(A080243(n))`
-/

namespace A116363.P7962016195696050866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 n + |A080243 n|

end

end A116363.P7962016195696050866

namespace A116363

/-- `A047781(n)+abs(A080243(n))` -/
def P7962016195696050866.Spec : Prop :=
  ∀ n, P7962016195696050866.a n = A116363 n

end A116363

/-! ## A116363.P7449249747313276503

`∑[A238112(n)+A050146(n)]`
-/

namespace A116363.P7449249747313276503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + A050146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116363.P7449249747313276503

namespace A116363

/-- `∑[A238112(n)+A050146(n)]` -/
def P7449249747313276503.Spec : Prop :=
  ∀ n, P7449249747313276503.a n = A116363 n

end A116363

/-! ## A116363.P9413902486912199227

`A001850(n)-A050151(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116363

/-- `A001850(n)-A050151(n)` -/
def P9413902486912199227.Spec : Prop :=
  ∀ n, P9413902486912199227.a n = A116363 n

theorem P9413902486912199227.correct : P9413902486912199227.Spec := by
  intro n
  simp only [A116363]

end A116363

/-! ## A116363.P9748643486287559703

`∑[A110170(n)]-A050151(n)`
-/

namespace A116363.P9748643486287559703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050151 n

end

end A116363.P9748643486287559703

namespace A116363

/-- `∑[A110170(n)]-A050151(n)` -/
def P9748643486287559703.Spec : Prop :=
  ∀ n, P9748643486287559703.a n = A116363 n

end A116363

/-! ## A116363.P10770487554237497100

`A001003(n)+A002003(n)/2`
-/

namespace A116363.P10770487554237497100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) + (A002003 n : ℚ) / 2

end

end A116363.P10770487554237497100

namespace A116363

/-- `A001003(n)+A002003(n)/2` -/
def P10770487554237497100.Spec : Prop :=
  ∀ n, P10770487554237497100.a n = (A116363 n : ℚ)

end A116363

/-! ## A116363.P2340280788605572544

`A026003(2*n)-A050151(n)`
-/

namespace A116363.P2340280788605572544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n) - A050151 n

end

end A116363.P2340280788605572544

namespace A116363

/-- `A026003(2*n)-A050151(n)` -/
def P2340280788605572544.Spec : Prop :=
  ∀ n, P2340280788605572544.a n = A116363 n

end A116363

/-! ## A116363.P9373262549594011108

`(A123164(n)+A006318(n))/2`
-/

namespace A116363.P9373262549594011108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123164 n + A006318 n : ℚ) / 2

end

end A116363.P9373262549594011108

namespace A116363

/-- `(A123164(n)+A006318(n))/2` -/
def P9373262549594011108.Spec : Prop :=
  ∀ n, P9373262549594011108.a n = (A116363 n : ℚ)

end A116363

/-! ## A116363.P12479865567016970389

`A001850(n)-n*A001003(n)`
-/

namespace A116363.P12479865567016970389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - (n : ℤ) * A001003 n

end

end A116363.P12479865567016970389

namespace A116363

/-- `A001850(n)-n*A001003(n)` -/
def P12479865567016970389.Spec : Prop :=
  ∀ n, P12479865567016970389.a n = A116363 n

end A116363

/-! ## A116363.P3782943505215461035

`A047781(n+1)-2*A050151(n)`
-/

namespace A116363.P3782943505215461035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (n + 1) - 2 * A050151 n

end

end A116363.P3782943505215461035

namespace A116363

/-- `A047781(n+1)-2*A050151(n)` -/
def P3782943505215461035.Spec : Prop :=
  ∀ n, P3782943505215461035.a n = A116363 n

end A116363

/-! ## A116363.P3469371887060814529

`2*A226994(n)-1-n*A001003(n)`
-/

namespace A116363.P3469371887060814529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226994 n - 1 - (n : ℤ) * A001003 n

end

end A116363.P3469371887060814529

namespace A116363

/-- `2*A226994(n)-1-n*A001003(n)` -/
def P3469371887060814529.Spec : Prop :=
  ∀ n, P3469371887060814529.a n = A116363 n

end A116363

/-! ## A116363.P1721764790398177724

`A006318(n)+A050151(n)-A002002(n)`
-/

namespace A116363.P1721764790398177724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + (A050151 n - A002002 n)

end

end A116363.P1721764790398177724

namespace A116363

/-- `A006318(n)+A050151(n)-A002002(n)` -/
def P1721764790398177724.Spec : Prop :=
  ∀ n, P1721764790398177724.a n = A116363 n

end A116363

/-! ## A116363.P4693203986553612710

`A001850(n)+A001850(n)-A047781(n+1)`
-/

namespace A116363.P4693203986553612710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (A001850 n - A047781 (n + 1))

end

end A116363.P4693203986553612710

namespace A116363

/-- `A001850(n)+A001850(n)-A047781(n+1)` -/
def P4693203986553612710.Spec : Prop :=
  ∀ n, P4693203986553612710.a n = A116363 n

end A116363

/-! ## A116363.P2990242465719783287

`A050146(n+1)-(A050151(n)+A002002(n))`
-/

namespace A116363.P2990242465719783287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - (A050151 n + A002002 n)

end

end A116363.P2990242465719783287

namespace A116363

/-- `A050146(n+1)-(A050151(n)+A002002(n))` -/
def P2990242465719783287.Spec : Prop :=
  ∀ n, P2990242465719783287.a n = A116363 n

end A116363

/-! ## A116363.P12665223578824043861

`A026003(2*n)+A026003(2*n)-A247623(2*n+1)`
-/

namespace A116363.P12665223578824043861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n) + (A026003 (2 * n) - A247623 (2 * n + 1))

end

end A116363.P12665223578824043861

namespace A116363

/-- `A026003(2*n)+A026003(2*n)-A247623(2*n+1)` -/
def P12665223578824043861.Spec : Prop :=
  ∀ n, P12665223578824043861.a n = A116363 n

end A116363

/-! ## A116363.P1394361336065343802

`2*A026003(2*n)-A247623(2*n+1)`
-/

namespace A116363.P1394361336065343802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026003 (2 * n) - A247623 (2 * n + 1)

end

end A116363.P1394361336065343802

namespace A116363

/-- `2*A026003(2*n)-A247623(2*n+1)` -/
def P1394361336065343802.Spec : Prop :=
  ∀ n, P1394361336065343802.a n = A116363 n

end A116363

/-! ## A116363.P6341755895733210133

`A002003(n+1)-(A050151(n)+A002002(n+1))`
-/

namespace A116363.P6341755895733210133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 1) - (A050151 n + A002002 (n + 1))

end

end A116363.P6341755895733210133

namespace A116363

/-- `A002003(n+1)-(A050151(n)+A002002(n+1))` -/
def P6341755895733210133.Spec : Prop :=
  ∀ n, P6341755895733210133.a n = A116363 n

end A116363

/-!
# A116364: Row squared sums of Catalan triangle A033184.

The programs for A116364, there is no canonical definition to state claims against.
-/

/-! ## A116364.P11947268964523272776

`A110857(∑[4*(n+1)])`
-/

namespace A116364.P11947268964523272776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116364.P11947268964523272776

/-!
# A116365: Sum of the sizes of the tails below the Durfee squares of all partitions of n.

The programs for A116365, there is no canonical definition to state claims against.
-/

/-! ## A116365.P15710264777277676085

`((n+1)*A000041(n+1)-A116503(n+1))/2`
-/

namespace A116365.P15710264777277676085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000041 (n + 1) - A116503 (n + 1) : ℚ) / 2

end

end A116365.P15710264777277676085

/-! ## A116365.P16114218972970126842

`A067661(3*(n+1))-A295935(A182522(n))`
-/

namespace A116365.P16114218972970126842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (3 * (n + 1)) - A295935 (A182522 n).toNat

end

end A116365.P16114218972970126842

/-! ## A116365.P5087830416508056017

`A000196(∑[2^n*A153196(n+1)])`
-/

namespace A116365.P5087830416508056017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A153196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116365.P5087830416508056017

/-! ## A116365.P3727491033176131451

`A360247(A000070(n))-A068980(n)`
-/

namespace A116365.P3727491033176131451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A000070 n).toNat - A068980 n

end

end A116365.P3727491033176131451

/-! ## A116365.P12889430296839589785

`A328335(A347547(n))-A257639(n+1)`
-/

namespace A116365.P12889430296839589785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A347547 (n + 10)).toNat - A257639 (n + 1)

end

end A116365.P12889430296839589785

/-!
# A116366: Triangle read by rows: even numbers as sums of two odd primes.

The programs for A116366, the canonical program `A116366.P15831376791925609639` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116366 has offset 1).

The definition of A116366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116366.P15831376791925609639

`A065091(A002024(n+1))+A065091(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116366

/-- `A065091(A002024(n+1))+A065091(A002260(n+1))` -/
def P15831376791925609639.Spec : Prop :=
  ∀ n, P15831376791925609639.a n = A116366 (n + 1)

theorem P15831376791925609639.correct : P15831376791925609639.Spec := by
  intro n
  simp only [A116366, Nat.add_sub_cancel]

end A116366

/-! ## A116366.P2267210323420205101

`A065091(A002262(n)+1)+A065091(A003056(n)+1)`
-/

namespace A116366.P2267210323420205101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002262 n + 1).toNat + A065091 (A003056 n + 1).toNat

end

end A116366.P2267210323420205101

namespace A116366

/-- `A065091(A002262(n)+1)+A065091(A003056(n)+1)` -/
def P2267210323420205101.Spec : Prop :=
  ∀ n, P2267210323420205101.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P15278229388871989305

`A165712(A005145(n+1))+A165712(A037126(n+1))`
-/

namespace A116366.P15278229388871989305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (A005145 (n + 1)).toNat + A165712 (A037126 (n + 1)).toNat

end

end A116366.P15278229388871989305

namespace A116366

/-- `A165712(A005145(n+1))+A165712(A037126(n+1))` -/
def P15278229388871989305.Spec : Prop :=
  ∀ n, P15278229388871989305.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P7777555956759890887

`A000040(A002024(n+1)+1)+A000040(A002260(n+1)+1)`
-/

namespace A116366.P7777555956759890887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1) + 1).toNat + A000040 (A002260 (n + 1) + 1).toNat

end

end A116366.P7777555956759890887

namespace A116366

/-- `A000040(A002024(n+1)+1)+A000040(A002260(n+1)+1)` -/
def P7777555956759890887.Spec : Prop :=
  ∀ n, P7777555956759890887.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P6802076897178188051

`A065342(A080036(n+1))`
-/

namespace A116366.P6802076897178188051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (A080036 (n + 1)).toNat

end

end A116366.P6802076897178188051

namespace A116366

/-- `A065342(A080036(n+1))` -/
def P6802076897178188051.Spec : Prop :=
  ∀ n, P6802076897178188051.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P2834081276813920928

`A065342(∑[A035214(n)]+1)`
-/

namespace A116366.P2834081276813920928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116366.P2834081276813920928

namespace A116366

/-- `A065342(∑[A035214(n)]+1)` -/
def P2834081276813920928.Spec : Prop :=
  ∀ n, P2834081276813920928.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P3918281816418161655

`A065342(A014132(n+1)+1)`
-/

namespace A116366.P3918281816418161655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (A014132 (n + 1) + 1).toNat

end

end A116366.P3918281816418161655

namespace A116366

/-- `A065342(A014132(n+1)+1)` -/
def P3918281816418161655.Spec : Prop :=
  ∀ n, P3918281816418161655.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P13947752242047684923

`filter[A065342(n+2), A059841(#)]`
-/

namespace A116366.P13947752242047684923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A116366.P13947752242047684923

namespace A116366

/-- `filter[A065342(n+2), A059841(#)]` -/
def P13947752242047684923.Spec : Prop :=
  ∀ n, P13947752242047684923.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P15058143282734826990

`filter[A065342(n+2), A135528(#)]`
-/

namespace A116366.P15058143282734826990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A116366.P15058143282734826990

namespace A116366

/-- `filter[A065342(n+2), A135528(#)]` -/
def P15058143282734826990.Spec : Prop :=
  ∀ n, P15058143282734826990.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P2692299460224428128

`filter[A065342(n+2), A266591(#)]`
-/

namespace A116366.P2692299460224428128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A116366.P2692299460224428128

namespace A116366

/-- `filter[A065342(n+2), A266591(#)]` -/
def P2692299460224428128.Spec : Prop :=
  ∀ n, P2692299460224428128.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P3301718816872152334

`filter[A065342(n+2), A267043(#)]`
-/

namespace A116366.P3301718816872152334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A116366.P3301718816872152334

namespace A116366

/-- `filter[A065342(n+2), A267043(#)]` -/
def P3301718816872152334.Spec : Prop :=
  ∀ n, P3301718816872152334.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P17596747451182573222

`A065342(lt[3, A210042(n+1)]+1)`
-/

namespace A116366.P17596747451182573222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A116366.P17596747451182573222

namespace A116366

/-- `A065342(lt[3, A210042(n+1)]+1)` -/
def P17596747451182573222.Spec : Prop :=
  ∀ n, P17596747451182573222.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P11982172678223801181

`A065342(A002024(n+1)+n+2)`
-/

namespace A116366.P11982172678223801181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

end

end A116366.P11982172678223801181

namespace A116366

/-- `A065342(A002024(n+1)+n+2)` -/
def P11982172678223801181.Spec : Prop :=
  ∀ n, P11982172678223801181.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P14182143084551270140

`2*A065305(n+2)`
-/

namespace A116366.P14182143084551270140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065305 (n + 2)

end

end A116366.P14182143084551270140

namespace A116366

/-- `2*A065305(n+2)` -/
def P14182143084551270140.Spec : Prop :=
  ∀ n, P14182143084551270140.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P12475543912611419458

`A004277(A065305(n+2))`
-/

namespace A116366.P12475543912611419458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A065305 (n + 2)).toNat

end

end A116366.P12475543912611419458

namespace A116366

/-- `A004277(A065305(n+2))` -/
def P12475543912611419458.Spec : Prop :=
  ∀ n, P12475543912611419458.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P9544504192556162431

`A000265(A065305(n+2)+A065305(n+2)+1)-1`
-/

namespace A116366.P9544504192556162431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065305 (n + 2) + A065305 (n + 2) + 1).toNat - 1

end

end A116366.P9544504192556162431

namespace A116366

/-- `A000265(A065305(n+2)+A065305(n+2)+1)-1` -/
def P9544504192556162431.Spec : Prop :=
  ∀ n, P9544504192556162431.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P8605034502740932293

`A349905(A087112(n+1))`
-/

namespace A116366.P8605034502740932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349905 (A087112 (n + 1)).toNat

end

end A116366.P8605034502740932293

namespace A116366

/-- `A349905(A087112(n+1))` -/
def P8605034502740932293.Spec : Prop :=
  ∀ n, P8605034502740932293.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P16320471134043849350

`A003415(A373844(n+1)/2)`
-/

namespace A116366.P16320471134043849350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A373844 (n + 1) : ℚ) / 2)).toNat

end

end A116366.P16320471134043849350

namespace A116366

/-- `A003415(A373844(n+1)/2)` -/
def P16320471134043849350.Spec : Prop :=
  ∀ n, P16320471134043849350.a n = A116366 (n + 1)

end A116366

/-! ## A116366.P8639675642434204728

`A068512(A373844(n+1))`
-/

namespace A116366.P8639675642434204728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A373844 (n + 1)).toNat

end

end A116366.P8639675642434204728

namespace A116366

/-- `A068512(A373844(n+1))` -/
def P8639675642434204728.Spec : Prop :=
  ∀ n, P8639675642434204728.a n = A116366 (n + 1)

end A116366

/-!
# A116367: Sums of rows of the triangle in A116366.

The programs for A116367, the canonical program `A116367.P6155131737747558776` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116367 has offset 1).

The definition of A116367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116367.P6155131737747558776

`(n+2)*A000040(n+2)+A007504(n+1)-2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A116367

/-- `(n+2)*A000040(n+2)+A007504(n+1)-2` -/
def P6155131737747558776.Spec : Prop :=
  ∀ n, P6155131737747558776.a n = A116367 (n + 1)

theorem P6155131737747558776.correct : P6155131737747558776.Spec := by
  intro n
  simp only [A116367, Nat.add_sub_cancel]

end A116367

/-! ## A116367.P4664815889018882793

`∑[p?[2*n+1]]+(n+1)*p?[2*n+1]`
-/

namespace A116367.P4664815889018882793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A116367.P4664815889018882793

namespace A116367

/-- `∑[p?[2*n+1]]+(n+1)*p?[2*n+1]` -/
def P4664815889018882793.Spec : Prop :=
  ∀ n, (P4664815889018882793.a n : ℤ) = A116367 (n + 1)

end A116367

/-! ## A116367.P8114801105919270964

`Δ[(n+1)*A007504(n+1)]-2`
-/

namespace A116367.P8114801105919270964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A116367.P8114801105919270964

namespace A116367

/-- `Δ[(n+1)*A007504(n+1)]-2` -/
def P8114801105919270964.Spec : Prop :=
  ∀ n, P8114801105919270964.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P17889649914797505320

`∑[A033287(n)+A000040(n+1)]`
-/

namespace A116367.P17889649914797505320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116367.P17889649914797505320

namespace A116367

/-- `∑[A033287(n)+A000040(n+1)]` -/
def P17889649914797505320.Spec : Prop :=
  ∀ n, P17889649914797505320.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P4897242907393270955

`A185382(n+1)+2*A071148(n+1)`
-/

namespace A116367.P4897242907393270955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185382 (n + 1) + 2 * A071148 (n + 1)

end

end A116367.P4897242907393270955

namespace A116367

/-- `A185382(n+1)+2*A071148(n+1)` -/
def P4897242907393270955.Spec : Prop :=
  ∀ n, P4897242907393270955.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P18263880406410833489

`Δ[A167214(n+1)]-2`
-/

namespace A116367.P18263880406410833489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A116367.P18263880406410833489

namespace A116367

/-- `Δ[A167214(n+1)]-2` -/
def P18263880406410833489.Spec : Prop :=
  ∀ n, P18263880406410833489.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P6807026276168427832

`Δ[(∑[A040976(n+1)]+2*n)*(n+1)]`
-/

namespace A116367.P6807026276168427832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116367.P6807026276168427832

namespace A116367

/-- `Δ[(∑[A040976(n+1)]+2*n)*(n+1)]` -/
def P6807026276168427832.Spec : Prop :=
  ∀ n, P6807026276168427832.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P15103779859625628581

`A007504(n+1)+A033286(n+2)-2`
-/

namespace A116367.P15103779859625628581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A033286 (n + 2) - 2)

end

end A116367.P15103779859625628581

namespace A116367

/-- `A007504(n+1)+A033286(n+2)-2` -/
def P15103779859625628581.Spec : Prop :=
  ∀ n, P15103779859625628581.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P17975039012494430411

`∑[A000040(n+2)]+(n+1)*A000040(n+2)`
-/

namespace A116367.P17975039012494430411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * A000040 (n + 2)

end

end A116367.P17975039012494430411

namespace A116367

/-- `∑[A000040(n+2)]+(n+1)*A000040(n+2)` -/
def P17975039012494430411.Spec : Prop :=
  ∀ n, P17975039012494430411.a n = A116367 (n + 1)

end A116367

/-! ## A116367.P3196410910849492315

`Δ[A083725(n+1)]-3`
-/

namespace A116367.P3196410910849492315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A116367.P3196410910849492315

namespace A116367

/-- `Δ[A083725(n+1)]-3` -/
def P3196410910849492315.Spec : Prop :=
  ∀ n, P3196410910849492315.a n = A116367 (n + 1)

end A116367

/-!
# A116368: Central terms of the triangle in A116366.

The programs for A116368, the canonical program `A116368.P4128061207012300454` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116368 has offset 1).

The definition of A116368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116368.P4128061207012300454

`A000040(2*(n+1))+A000040(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116368

/-- `A000040(2*(n+1))+A000040(n+2)` -/
def P4128061207012300454.Spec : Prop :=
  ∀ n, P4128061207012300454.a n = A116368 (n + 1)

theorem P4128061207012300454.correct : P4128061207012300454.Spec := by
  intro n
  simp only [A116368, Nat.add_sub_cancel]

end A116368

/-! ## A116368.P9195287801677867719

`A072473(n+1)+A001043(n+1)`
-/

namespace A116368.P9195287801677867719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A001043 (n + 1)

end

end A116368.P9195287801677867719

namespace A116368

/-- `A072473(n+1)+A001043(n+1)` -/
def P9195287801677867719.Spec : Prop :=
  ∀ n, P9195287801677867719.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P9075499077838189285

`A092390(n+1)+A001223(n+1)`
-/

namespace A116368.P9075499077838189285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + A001223 (n + 1)

end

end A116368.P9075499077838189285

namespace A116368

/-- `A092390(n+1)+A001223(n+1)` -/
def P9075499077838189285.Spec : Prop :=
  ∀ n, P9075499077838189285.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P17679523169823871371

`A065091(n+1)+A031215(n+1)`
-/

namespace A116368.P17679523169823871371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A031215 (n + 1)

end

end A116368.P17679523169823871371

namespace A116368

/-- `A065091(n+1)+A031215(n+1)` -/
def P17679523169823871371.Spec : Prop :=
  ∀ n, P17679523169823871371.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P11405114498067440274

`A001043(n+1)+A031215(n+1)-Δ[A007504(n)]`
-/

namespace A116368.P11405114498067440274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A031215 (n + 1) - (f1 (n + 1) - f1 n))

end

end A116368.P11405114498067440274

namespace A116368

/-- `A001043(n+1)+A031215(n+1)-Δ[A007504(n)]` -/
def P11405114498067440274.Spec : Prop :=
  ∀ n, P11405114498067440274.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P3494462598333759643

`A001043(n+1)+A066066(n+1)+A000040(n+1)`
-/

namespace A116368.P3494462598333759643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A066066 (n + 1) + A000040 (n + 1))

end

end A116368.P3494462598333759643

namespace A116368

/-- `A001043(n+1)+A066066(n+1)+A000040(n+1)` -/
def P3494462598333759643.Spec : Prop :=
  ∀ n, P3494462598333759643.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P5562928409931880692

`A001043(n+1)+A074766(n+1)+A014688(n+1)`
-/

namespace A116368.P5562928409931880692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A074766 (n + 1) + A014688 (n + 1))

end

end A116368.P5562928409931880692

namespace A116368

/-- `A001043(n+1)+A074766(n+1)+A014688(n+1)` -/
def P5562928409931880692.Spec : Prop :=
  ∀ n, P5562928409931880692.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P8832540960093674075

`A031215(n+1)+A100484(n+1)-A062234(n+1)`
-/

namespace A116368.P8832540960093674075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A100484 (n + 1) - A062234 (n + 1))

end

end A116368.P8832540960093674075

namespace A116368

/-- `A031215(n+1)+A100484(n+1)-A062234(n+1)` -/
def P8832540960093674075.Spec : Prop :=
  ∀ n, P8832540960093674075.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P934876293320539452

`A001043(n+1)+A272042(n+1)-A031215(n+1)`
-/

namespace A116368.P934876293320539452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A272042 (n + 1) - A031215 (n + 1))

end

end A116368.P934876293320539452

namespace A116368

/-- `A001043(n+1)+A272042(n+1)-A031215(n+1)` -/
def P934876293320539452.Spec : Prop :=
  ∀ n, P934876293320539452.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P10309883255427580555

`A031215(n+1)+A000040(n+2)`
-/

namespace A116368.P10309883255427580555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A000040 (n + 2)

end

end A116368.P10309883255427580555

namespace A116368

/-- `A031215(n+1)+A000040(n+2)` -/
def P10309883255427580555.Spec : Prop :=
  ∀ n, P10309883255427580555.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P15803777812315763520

`A055670(2*(n+1))+A006093(n+2)`
-/

namespace A116368.P15803777812315763520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1)) + A006093 (n + 2)

end

end A116368.P15803777812315763520

namespace A116368

/-- `A055670(2*(n+1))+A006093(n+2)` -/
def P15803777812315763520.Spec : Prop :=
  ∀ n, P15803777812315763520.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P11487187143945438611

`A055670(2*(n+1))+A039915(n+2)`
-/

namespace A116368.P11487187143945438611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1)) + A039915 (n + 2)

end

end A116368.P11487187143945438611

namespace A116368

/-- `A055670(2*(n+1))+A039915(n+2)` -/
def P11487187143945438611.Spec : Prop :=
  ∀ n, P11487187143945438611.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P1846279416351775257

`A109722(n+1)+A000040(n+2)-A109723(n)`
-/

namespace A116368.P1846279416351775257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) + (A000040 (n + 2) - A109723 n)

end

end A116368.P1846279416351775257

namespace A116368

/-- `A109722(n+1)+A000040(n+2)-A109723(n)` -/
def P1846279416351775257.Spec : Prop :=
  ∀ n, P1846279416351775257.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P3956800832840897081

`A000040(n+1)+A072473(n+1)+A000040(n+2)`
-/

namespace A116368.P3956800832840897081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A072473 (n + 1) + A000040 (n + 2))

end

end A116368.P3956800832840897081

namespace A116368

/-- `A000040(n+1)+A072473(n+1)+A000040(n+2)` -/
def P3956800832840897081.Spec : Prop :=
  ∀ n, P3956800832840897081.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P17508345359786726427

`A066066(n+1)+A100484(n+1)+A000040(n+2)`
-/

namespace A116368.P17508345359786726427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + (A100484 (n + 1) + A000040 (n + 2))

end

end A116368.P17508345359786726427

namespace A116368

/-- `A066066(n+1)+A100484(n+1)+A000040(n+2)` -/
def P17508345359786726427.Spec : Prop :=
  ∀ n, P17508345359786726427.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P13618113464968331975

`A062234(n+1)+A100484(n+2)+A066066(n+1)`
-/

namespace A116368.P13618113464968331975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + (A100484 (n + 2) + A066066 (n + 1))

end

end A116368.P13618113464968331975

namespace A116368

/-- `A062234(n+1)+A100484(n+2)+A066066(n+1)` -/
def P13618113464968331975.Spec : Prop :=
  ∀ n, P13618113464968331975.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P4980288283270943123

`A092390(n+1)+A000040(n+2)-A000040(n+1)`
-/

namespace A116368.P4980288283270943123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + (A000040 (n + 2) - A000040 (n + 1))

end

end A116368.P4980288283270943123

namespace A116368

/-- `A092390(n+1)+A000040(n+2)-A000040(n+1)` -/
def P4980288283270943123.Spec : Prop :=
  ∀ n, P4980288283270943123.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P3835113761144543232

`A100479(n+1)+A000040(n+2)-A031368(n+1)`
-/

namespace A116368.P3835113761144543232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + (A000040 (n + 2) - A031368 (n + 1))

end

end A116368.P3835113761144543232

namespace A116368

/-- `A100479(n+1)+A000040(n+2)-A031368(n+1)` -/
def P3835113761144543232.Spec : Prop :=
  ∀ n, P3835113761144543232.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P11490854837815349671

`A104272(n+1)+A000040(n+2)-A233739(n+1)`
-/

namespace A116368.P11490854837815349671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) + (A000040 (n + 2) - A233739 (n + 1))

end

end A116368.P11490854837815349671

namespace A116368

/-- `A104272(n+1)+A000040(n+2)-A233739(n+1)` -/
def P11490854837815349671.Spec : Prop :=
  ∀ n, P11490854837815349671.a n = A116368 (n + 1)

end A116368

/-! ## A116368.P9911085258312135610

`A092390(n+1)+A175222(n+2)-A175222(n+1)`
-/

namespace A116368.P9911085258312135610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + (A175222 (n + 2) - A175222 (n + 1))

end

end A116368.P9911085258312135610

namespace A116368

/-- `A092390(n+1)+A175222(n+2)-A175222(n+1)` -/
def P9911085258312135610.Spec : Prop :=
  ∀ n, P9911085258312135610.a n = A116368 (n + 1)

end A116368

/-!
# A116369: Day of the week corresponding to Jan 01 of a given year (n=0 for the year 2000).

The programs for A116369, there is no canonical definition to state claims against.
-/

/-! ## A116369.P6585203214636014496

`A178054(12*n+1)+1`
-/

namespace A116369.P6585203214636014496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (12 * n + 1) + 1

end

end A116369.P6585203214636014496

/-! ## A116369.P3695585534816873120

`A090651(n+3)%7+1`
-/

namespace A116369.P3695585534816873120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090651 (n + 3 + 1901)) 7 + 1

end

end A116369.P3695585534816873120

/-!
# A116370: Number of distinct prime factors of P(L(n)) where L(n) is the Lucas number and P(n) is the unrestricted partition number.

The programs for A116370, there is no canonical definition to state claims against.
-/

/-! ## A116370.P3784936122972402205

`A087175(∑[round(ϕ*a(n-1))])` with `a(0)=3, a(1)=1, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A116370.P3784936122972402205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 4, 7] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116370.P3784936122972402205

/-! ## A116370.P3587558281041440139

`A087175(record[round(ϕ*a(n-1))])` with `a(0)=3, a(1)=1, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A116370.P3587558281041440139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 4, 7] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116370.P3587558281041440139

/-! ## A116370.P14799126179841434758

`A087175(∑[a(n-1)+a(n-2)])` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A116370.P14799126179841434758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116370.P14799126179841434758

/-! ## A116370.P7077344192974874739

`A087175(record[a(n-1)+a(n-2)])` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A116370.P7077344192974874739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A116370.P7077344192974874739

/-! ## A116370.P17134208652563438955

`A087175(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=3, a(1)=2`
-/

namespace A116370.P17134208652563438955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A116370.P17134208652563438955

/-!
# A116371: Number of partitions of n into parts with digital root = 1.

The programs for A116371, there is no canonical definition to state claims against.
-/

/-! ## A116371.P18403127209167272741

`∑[floor(A007953(n)^(A288351(2*n+5)+1)/9)]+1`
-/

namespace A116371.P18403127209167272741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007953 n : ℚ) ^ (A288351 (2 * n + 5) + 1 : ℤ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116371.P18403127209167272741

/-! ## A116371.P983456828257537533

`∑[A117944(A141214(A332012(n)))]`
-/

namespace A116371.P983456828257537533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 (A141214 (A332012 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116371.P983456828257537533

/-! ## A116371.P15843128080499572580

`A109703(A195181(n)%A332071(2*n+1))`
-/

namespace A116371.P15843128080499572580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109703 (Int.tmod (A195181 n) (A332071 (2 * n + 1))).toNat

end

end A116371.P15843128080499572580

/-!
# A116372: Number of partitions of n into parts with digital root = 2.

The programs for A116372, there is no canonical definition to state claims against.
-/

/-! ## A116372.P14661567960707954747

`A000045(A025826(n+1))%A196037(Δ[n²])`
-/

namespace A116372.P14661567960707954747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A025826 (n + 1)).toNat) (A196037 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A116372.P14661567960707954747

/-! ## A116372.P9482023960554312425

`A000045(A025826(n+1))*A001227(A016116(n))`
-/

namespace A116372.P9482023960554312425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025826 (n + 1)).toNat * A001227 (A016116 n).toNat

end

end A116372.P9482023960554312425

/-! ## A116372.P13850511424318060150

`A000045(A025826(n+1))%A000217(A166911(n))`
-/

namespace A116372.P13850511424318060150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A025826 (n + 1)).toNat) (A000217 (A166911 n).toNat)

end

end A116372.P13850511424318060150

/-! ## A116372.P12815680634636086572

`A000045(A025826(n+1))*A001222(A130112(2*n+1))`
-/

namespace A116372.P12815680634636086572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025826 (n + 1)).toNat * A001222 (A130112 (2 * n + 1)).toNat

end

end A116372.P12815680634636086572

/-! ## A116372.P3299390284888925148

`A151692(∑{d}[A305458(2*n+1), #])`
-/

namespace A116372.P3299390284888925148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305458 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A116372.P3299390284888925148

/-!
# A116373: Number of partitions of n into parts with digital root = 3.

The programs for A116373, there is no canonical definition to state claims against.
-/

/-! ## A116373.P10901947880886669137

`C(n, 2)%3*A035382(∑[(-1)^(n%3)])`
-/

namespace A116373.P10901947880886669137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 % 3 : ℕ) : ℤ) * A035382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116373.P10901947880886669137

/-! ## A116373.P12005282543967850294

`char[3*n-1]*A035382(A008620(n))`
-/

namespace A116373.P12005282543967850294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035382 (A008620 n).toNat

end

end A116373.P12005282543967850294

/-! ## A116373.P18381756349466498932

`A022003(n)*A035382(A008611(n))`
-/

namespace A116373.P18381756349466498932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n * A035382 (A008611 n).toNat

end

end A116373.P18381756349466498932

/-! ## A116373.P17744916481231876022

`Δ[A002264(n)]*A035382(A008611(n))`
-/

namespace A116373.P17744916481231876022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035382 (A008611 n).toNat

end

end A116373.P17744916481231876022

/-! ## A116373.P2087973461971175876

`and(1, A131380(n))*A035382(A008611(n))`
-/

namespace A116373.P2087973461971175876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A131380 n) * A035382 (A008611 n).toNat

end

end A116373.P2087973461971175876

/-! ## A116373.P9731728095673507178

`Δ[A002264(n)]*A035382(A002264(n+1))`
-/

namespace A116373.P9731728095673507178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035382 (A002264 (n + 1)).toNat

end

end A116373.P9731728095673507178

/-! ## A116373.P11244006805444985984

`char[A016789(n)]*A035382(A002264(n+1))`
-/

namespace A116373.P11244006805444985984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035382 (A002264 (n + 1)).toNat

end

end A116373.P11244006805444985984

/-! ## A116373.P12260170028086386770

`(A008620(n+1)-A008620(n))*A035382(A002264(n+1))`
-/

namespace A116373.P12260170028086386770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 (n + 1) - A008620 n) * A035382 (A002264 (n + 1)).toNat

end

end A116373.P12260170028086386770

/-!
# A116374: Number of partitions of n into parts with digital root = 4.

The programs for A116374, there is no canonical definition to state claims against.
-/

/-! ## A116374.P8217028963191604179

`A000030(A116378(2*(n+1))^7)`
-/

namespace A116374.P8217028963191604179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A116378 (2 * (n + 1)) ^ 7).toNat

end

end A116374.P8217028963191604179

/-! ## A116374.P7816433225778532513

`A095827(A116378(2*(n+1))^4+1)`
-/

namespace A116374.P7816433225778532513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A116378 (2 * (n + 1)) ^ 4 + 1).toNat

end

end A116374.P7816433225778532513

/-! ## A116374.P3678833737727220167

`A000045(A116378(2*(n+1))%A091621(n+1))`
-/

namespace A116374.P3678833737727220167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A116378 (2 * (n + 1))) (A091621 (n + 1))).toNat

end

end A116374.P3678833737727220167

/-! ## A116374.P7598403410005634486

`A022163(n)%A191090(n+1)`
-/

namespace A116374.P7598403410005634486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022163 n) (A191090 (n + 1))

end

end A116374.P7598403410005634486

/-! ## A116374.P583660001228135296

`A188005(A188046(2*n+5))%2`
-/

namespace A116374.P583660001228135296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188005 (A188046 (2 * n + 5)).toNat) 2

end

end A116374.P583660001228135296

/-!
# A116375: Number of partitions of n into parts with digital root = 5.

The programs for A116375, there is no canonical definition to state claims against.
-/

/-! ## A116375.P5629991713905324370

`A037803(A277537(n+3)+A159623(2*(n+2)))`
-/

namespace A116375.P5629991713905324370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A277537 (n + 3) + A159623 (2 * (n + 2))).toNat

end

end A116375.P5629991713905324370

/-! ## A116375.P11989099333724992638

`A037824(A061219(n+1)+n)`
-/

namespace A116375.P11989099333724992638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A061219 (n + 1) + (n : ℤ)).toNat

end

end A116375.P11989099333724992638

/-! ## A116375.P10360036758164419443

`A037832(A061219(n+1)+n)`
-/

namespace A116375.P10360036758164419443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A061219 (n + 1) + (n : ℤ)).toNat

end

end A116375.P10360036758164419443

/-! ## A116375.P13744086031750799170

`A079998(C(A052382(n+1), n))`
-/

namespace A116375.P13744086031750799170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (Nat.choose (A052382 (n + 1)).toNat n)

end

end A116375.P13744086031750799170

/-! ## A116375.P6481432022034751346

`A373410(n+1)%A000120(A317056(3*(n+1)))`
-/

namespace A116375.P6481432022034751346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373410 (n + 1)) (A000120 (A317056 (3 * (n + 1))).toNat)

end

end A116375.P6481432022034751346

/-!
# A116376: Number of partitions of n into parts with digital root = 6.

The programs for A116376, there is no canonical definition to state claims against.
-/

/-! ## A116376.P10630326784312415926

`A035386(gcd(n+1, A166711(n)))`
-/

namespace A116376.P10630326784312415926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (Int.gcd (n + 1 : ℤ) (A166711 n))

end

end A116376.P10630326784312415926

/-! ## A116376.P15092567610514245910

`char[3*n-1]*A035386(A008620(n))`
-/

namespace A116376.P15092567610514245910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035386 (A008620 n).toNat

end

end A116376.P15092567610514245910

/-! ## A116376.P5019291619617699964

`A035386(gcd(A003417(n), A008611(n)))`
-/

namespace A116376.P5019291619617699964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (Int.gcd (A003417 n) (A008611 n))

end

end A116376.P5019291619617699964

/-! ## A116376.P7425869389886010536

`A035386(gcd(A008620(n), A168052(n)))`
-/

namespace A116376.P7425869389886010536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (Int.gcd (A008620 n) (A168052 n))

end

end A116376.P7425869389886010536

/-! ## A116376.P13766944004483955607

`Δ[A002264(n)]*A035386(A008611(n))`
-/

namespace A116376.P13766944004483955607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035386 (A008611 n).toNat

end

end A116376.P13766944004483955607

/-! ## A116376.P17411865448694474605

`A035386(A008611(n))*A173857(n+1)`
-/

namespace A116376.P17411865448694474605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (A008611 n).toNat * A173857 (n + 1)

end

end A116376.P17411865448694474605

/-! ## A116376.P11050988848102306907

`A035386(gcd(ceil((n+1)/3), A067180(n+1)))`
-/

namespace A116376.P11050988848102306907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (Int.gcd ⌈(n + 1 : ℚ) / 3⌉ (A067180 (n + 1)))

end

end A116376.P11050988848102306907

/-!
# A116377: Number of partitions of n into parts with digital root = 7.

The programs for A116377, there is no canonical definition to state claims against.
-/

/-! ## A116377.P16922430140187790002

`(A009188(n+1)%A238781(2*(n+1)))%2`
-/

namespace A116377.P16922430140187790002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A009188 (n + 1)) (A238781 (2 * (n + 1)))) 2

end

end A116377.P16922430140187790002

/-! ## A116377.P10310761029896566792

`A011731(A008574(n)^A152848(n))`
-/

namespace A116377.P10310761029896566792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011731 (SequenceMachineLib.roundAway ((A008574 n : ℚ) ^ (A152848 n : ℤ))).toNat

end

end A116377.P10310761029896566792

/-! ## A116377.P12984842430243090820

`and(A023532(A107458(n)), A068527(n))`
-/

namespace A116377.P12984842430243090820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023532 (A107458 n).toNat) (A068527 n)

end

end A116377.P12984842430243090820

/-! ## A116377.P16024237596184018686

`A082784(lcm(n+1, A338204(n+1)))`
-/

namespace A116377.P16024237596184018686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (Int.lcm (n + 1 : ℤ) (A338204 (n + 1)))

end

end A116377.P16024237596184018686

/-! ## A116377.P7558084994688239859

`∑[∑[A008642(A019565(2*(n+1)))]]%2`
-/

namespace A116377.P7558084994688239859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A019565 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A116377.P7558084994688239859

/-!
# A116378: Number of partitions of n into parts with digital root = 8.

The programs for A116378, there is no canonical definition to state claims against.
-/

/-! ## A116378.P17923615897955330095

`A037823(n+1)+A010054(A189987(n+1))`
-/

namespace A116378.P17923615897955330095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (n + 1) + A010054 (A189987 (n + 1)).toNat

end

end A116378.P17923615897955330095

/-! ## A116378.P5017700096368505034

`A037805(A057263(n+1))*A037823(n+1)`
-/

namespace A116378.P5017700096368505034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A057263 (n + 1)).toNat * A037823 (n + 1)

end

end A116378.P5017700096368505034

/-! ## A116378.P9122220085052734559

`A037805(A057263(n+1)^A037823(n+1))`
-/

namespace A116378.P9122220085052734559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (SequenceMachineLib.roundAway ((A057263 (n + 1) : ℚ) ^ (A037823 (n + 1) : ℤ))).toNat

end

end A116378.P9122220085052734559

/-! ## A116378.P16786908601026942076

`A037831(A374997(n+1)+A261350(3*n+1))+A037823(n+1)`
-/

namespace A116378.P16786908601026942076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A374997 (n + 1) + A261350 (3 * n + 1)).toNat + A037823 (n + 1)

end

end A116378.P16786908601026942076

/-!
# A116379: Number of ternary rooted identity (distinct subtrees) trees with n nodes.

The programs for A116379, there is no canonical definition to state claims against.
-/

/-! ## A116379.P14147477064927545483

`A032305(n+1)+A000120(A165877(n))`
-/

namespace A116379.P14147477064927545483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032305 (n + 1) + A000120 (A165877 n).toNat

end

end A116379.P14147477064927545483

/-! ## A116379.P8530944181608371497

`A038087(n+1)+A036632(A250265(n))`
-/

namespace A116379.P8530944181608371497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038087 (n + 1) + A036632 (A250265 n).toNat

end

end A116379.P8530944181608371497

/-! ## A116379.P15141802482894345089

`A032235(n+1)-A036638(A036633(n))`
-/

namespace A116379.P15141802482894345089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032235 (n + 1) - A036638 (A036633 n).toNat

end

end A116379.P15141802482894345089

/-! ## A116379.P8470117188694872305

`A163101(A186546(n))`
-/

namespace A116379.P8470117188694872305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A186546 n).toNat

end

end A116379.P8470117188694872305

/-! ## A116379.P1811759945648276516

`A004111(A062399(n+1))`
-/

namespace A116379.P1811759945648276516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A062399 (n + 1)).toNat

end

end A116379.P1811759945648276516

/-!
# A116380: Number of quaternary rooted identity (distinct subtrees) trees with n nodes.

The programs for A116380, there is no canonical definition to state claims against.
-/

/-! ## A116380.P13644283918706949864

`Δ[A196118(n)]-A067898(A002531(n))`
-/

namespace A116380.P13644283918706949864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067898 (A002531 n).toNat

end

end A116380.P13644283918706949864

/-! ## A116380.P12444293008419395707

`A004111(A187829(n+1))-A025442(n)`
-/

namespace A116380.P12444293008419395707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A187829 (n + 1)).toNat - A025442 n

end

end A116380.P12444293008419395707

/-! ## A116380.P13909225013912441213

`A004111(A161953(n+1))-A185063(n)`
-/

namespace A116380.P13909225013912441213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A161953 (n + 1)).toNat - A185063 n

end

end A116380.P13909225013912441213

/-! ## A116380.P4743870384851892496

`A004111(n+1)-A185284(A238132(n))`
-/

namespace A116380.P4743870384851892496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) - A185284 (A238132 n).toNat

end

end A116380.P4743870384851892496

/-! ## A116380.P16622347213826572560

`A004111(n+1)-A185264(A035618(n+1))`
-/

namespace A116380.P16622347213826572560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) - A185264 (A035618 (n + 1)).toNat

end

end A116380.P16622347213826572560

/-!
# A116381: Number of compositions of n which are prime when concatenated and read as a decimal string.

The programs for A116381, there is no canonical definition to state claims against.
-/

/-! ## A116381.P4726709222355447780

`A073901(n+1)+A073901(A212389(n))`
-/

namespace A116381.P4726709222355447780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073901 (n + 1) + A073901 (A212389 n).toNat

end

end A116381.P4726709222355447780

/-! ## A116381.P11515721608316835909

`A184944(A210442(n))+A073901(n+1)`
-/

namespace A116381.P11515721608316835909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A210442 n).toNat + A073901 (n + 1)

end

end A116381.P11515721608316835909

/-! ## A116381.P3468582065163175756

`A316863(A116383(n))+A073901(n+1)`
-/

namespace A116381.P3468582065163175756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A116383 n).toNat + A073901 (n + 1)

end

end A116381.P3468582065163175756

/-! ## A116381.P12451386863418334989

`xor(A073901(n+1), A349797(A285943(n)))`
-/

namespace A116381.P12451386863418334989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073901 (n + 1)) (A349797 (A285943 n).toNat)

end

end A116381.P12451386863418334989

/-! ## A116381.P11581704056110391183

`A349797(A285943(n)+n)+A073901(n+1)`
-/

namespace A116381.P11581704056110391183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A285943 n + (n : ℤ)).toNat + A073901 (n + 1)

end

end A116381.P11581704056110391183

/-!
# A116382: Riordan array (1/sqrt(1-4*x^2), (1-2*x^2*c(x^2))*(x^2*c(x^2))/(x*(1-x-x^2*c(x^2)))) where c(x) is the g.f. of A000108.

The programs for A116382, there is no canonical definition to state claims against.
-/

/-! ## A116382.P7421535873354551439

`lcm(A060128(A202124(3*n+1)), A116405(n))`
-/

namespace A116382.P7421535873354551439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060128 (A202124 (3 * n + 1)).toNat) (A116405 n)

end

end A116382.P7421535873354551439

/-! ## A116382.P7418056177386799961

`A001222(5^or(A108044(n), A122896(n)))`
-/

namespace A116382.P7418056177386799961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (Int.lor (A108044 n) (A122896 n) : ℤ))).toNat

end

end A116382.P7418056177386799961

/-! ## A116382.P1755405167838227460

`A100073(6*2^or(A108044(n), A122896(n)))`
-/

namespace A116382.P1755405167838227460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (SequenceMachineLib.roundAway (6 * (2 : ℚ) ^ (Int.lor (A108044 n) (A122896 n) : ℤ))).toNat

end

end A116382.P1755405167838227460

/-!
# A116383: Row sums of number triangle A116382.

The programs for A116383, there is no canonical definition to state claims against.
-/

/-! ## A116383.P16756821492241462196

`A289436(A100095(n+1)+A098615(n))`
-/

namespace A116383.P16756821492241462196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A100095 (n + 1) + A098615 n).toNat

end

end A116383.P16756821492241462196

/-! ## A116383.P5348948814589213274

`A026521(n+1)-A326685(A049614(n))`
-/

namespace A116383.P5348948814589213274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026521 (n + 1) - A326685 (A049614 n).toNat

end

end A116383.P5348948814589213274

/-!
# A116384: Diagonal sums of the Riordan array A116382.

The programs for A116384, the canonical program `A116384.P5047349765898739039` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116384 has offset 0).

The definition of A116384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116384.P5047349765898739039

`A027306(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116384

/-- `A027306(n)-a(n-1)` -/
def P5047349765898739039.Spec : Prop :=
  ∀ n, P5047349765898739039.a n = A116384 n

theorem P5047349765898739039.correct : P5047349765898739039.Spec := by
  intro n
  simp only [A116384]

end A116384

/-! ## A116384.P2741840369547336497

`A226881(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A116384.P2741840369547336497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226881 n + (1 - a (n - 1))

end

end A116384.P2741840369547336497

namespace A116384

/-- `A226881(n)+1-a(n-1)` -/
def P2741840369547336497.Spec : Prop :=
  ∀ n, P2741840369547336497.a n = A116384 n

end A116384

/-! ## A116384.P8797461785538391579

`A185252(n+1)/(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A116384.P8797461785538391579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A185252 (n + 1) : ℚ) / (n + 1 : ℚ) - a (n - 1)

end

end A116384.P8797461785538391579

namespace A116384

/-- `A185252(n+1)/(n+1)-a(n-1)` -/
def P8797461785538391579.Spec : Prop :=
  ∀ n, P8797461785538391579.a n = (A116384 n : ℚ)

end A116384

/-! ## A116384.P18024437399187970915

`A153334(n+1)-A206603(n)-a(n-1)` with `a(0)=1`
-/

namespace A116384.P18024437399187970915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153334 (n + 1) - A206603 n - a (n - 1)

end

end A116384.P18024437399187970915

namespace A116384

/-- `A153334(n+1)-A206603(n)-a(n-1)` -/
def P18024437399187970915.Spec : Prop :=
  ∀ n, P18024437399187970915.a n = A116384 n

end A116384

/-! ## A116384.P12089211300509807349

`A055248(2*A002620(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A116384.P12089211300509807349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055248 (2 * A002620 (n + 1)).toNat - a (n - 1)

end

end A116384.P12089211300509807349

namespace A116384

/-- `A055248(2*A002620(n+1))-a(n-1)` -/
def P12089211300509807349.Spec : Prop :=
  ∀ n, P12089211300509807349.a n = A116384 n

end A116384

/-!
# A116385: Expansion of e.g.f. Bessel_I(2,2x) + 2*Bessel_I(3,2x) + Bessel_I(4,2x).

The programs for A116385, the canonical program `A116385.P5361191380306114926` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116385 has offset 0).

The definition of A116385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116385.P5361191380306114926

`A001405(n+3)-3*A001405(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116385

/-- `A001405(n+3)-3*A001405(n+1)` -/
def P5361191380306114926.Spec : Prop :=
  ∀ n, P5361191380306114926.a n = A116385 n

theorem P5361191380306114926.correct : P5361191380306114926.Spec := by
  intro n
  simp only [A116385]

end A116385

/-! ## A116385.P4972529450729962124

`A037955(n)+A037951(n)`
-/

namespace A116385.P4972529450729962124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n + A037951 n

end

end A116385.P4972529450729962124

namespace A116385

/-- `A037955(n)+A037951(n)` -/
def P4972529450729962124.Spec : Prop :=
  ∀ n, P4972529450729962124.a n = A116385 n

end A116385

/-! ## A116385.P7346236499246966719

`A000034(n)*A116400(n)`
-/

namespace A116385.P7346236499246966719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A116400 n

end

end A116385.P7346236499246966719

namespace A116385

/-- `A000034(n)*A116400(n)` -/
def P7346236499246966719.Spec : Prop :=
  ∀ n, P7346236499246966719.a n = A116385 n

end A116385

/-! ## A116385.P9711952136719112235

`A084642(n)*A116400(n)`
-/

namespace A116385.P9711952136719112235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A116400 n

end

end A116385.P9711952136719112235

namespace A116385

/-- `A084642(n)*A116400(n)` -/
def P9711952136719112235.Spec : Prop :=
  ∀ n, P9711952136719112235.a n = A116385 n

end A116385

/-! ## A116385.P13880738923240115370

`A117187(n)-A063549(n+1)`
-/

namespace A116385.P13880738923240115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 n - A063549 (n + 1)

end

end A116385.P13880738923240115370

namespace A116385

/-- `A117187(n)-A063549(n+1)` -/
def P13880738923240115370.Spec : Prop :=
  ∀ n, P13880738923240115370.a n = A116385 n

end A116385

/-! ## A116385.P4142251961824528828

`A210628(n+2)+A037955(n+1)`
-/

namespace A116385.P4142251961824528828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A037955 (n + 1)

end

end A116385.P4142251961824528828

namespace A116385

/-- `A210628(n+2)+A037955(n+1)` -/
def P4142251961824528828.Spec : Prop :=
  ∀ n, P4142251961824528828.a n = A116385 n

end A116385

/-! ## A116385.P16520298665808951746

`A001405(n+1)-A089408(n+3)`
-/

namespace A116385.P16520298665808951746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - A089408 (n + 3)

end

end A116385.P16520298665808951746

namespace A116385

/-- `A001405(n+1)-A089408(n+3)` -/
def P16520298665808951746.Spec : Prop :=
  ∀ n, P16520298665808951746.a n = A116385 n

end A116385

/-! ## A116385.P1798144748035552512

`2*A001405(n)-A059348(n+2)`
-/

namespace A116385.P1798144748035552512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A059348 (n + 2)

end

end A116385.P1798144748035552512

namespace A116385

/-- `2*A001405(n)-A059348(n+2)` -/
def P1798144748035552512.Spec : Prop :=
  ∀ n, P1798144748035552512.a n = A116385 n

end A116385

/-! ## A116385.P14271908420683250337

`A000034(n)*A037955(A109613(n))`
-/

namespace A116385.P14271908420683250337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A037955 (A109613 n).toNat

end

end A116385.P14271908420683250337

namespace A116385

/-- `A000034(n)*A037955(A109613(n))` -/
def P14271908420683250337.Spec : Prop :=
  ∀ n, P14271908420683250337.a n = A116385 n

end A116385

/-! ## A116385.P4838677572691911979

`A000108(A008619(n))/2*A029578(n)`
-/

namespace A116385.P4838677572691911979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A008619 n).toNat : ℚ) / 2 * (A029578 n : ℚ)

end

end A116385.P4838677572691911979

namespace A116385

/-- `A000108(A008619(n))/2*A029578(n)` -/
def P4838677572691911979.Spec : Prop :=
  ∀ n, P4838677572691911979.a n = (A116385 n : ℚ)

end A116385

/-! ## A116385.P4203113115177953121

`A037952(n+1)+A037951(n)-A001405(n)`
-/

namespace A116385.P4203113115177953121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + (A037951 n - A001405 n)

end

end A116385.P4203113115177953121

namespace A116385

/-- `A037952(n+1)+A037951(n)-A001405(n)` -/
def P4203113115177953121.Spec : Prop :=
  ∀ n, P4203113115177953121.a n = A116385 n

end A116385

/-! ## A116385.P1361921902995426903

`A037951(n+1)+A037951(n)-A037956(n)`
-/

namespace A116385.P1361921902995426903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (n + 1) + (A037951 n - A037956 n)

end

end A116385.P1361921902995426903

namespace A116385

/-- `A037951(n+1)+A037951(n)-A037956(n)` -/
def P1361921902995426903.Spec : Prop :=
  ∀ n, P1361921902995426903.a n = A116385 n

end A116385

/-! ## A116385.P6668211452689459116

`A037955(n+1)+A037955(n)-A037952(n)`
-/

namespace A116385.P6668211452689459116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + (A037955 n - A037952 n)

end

end A116385.P6668211452689459116

namespace A116385

/-- `A037955(n+1)+A037955(n)-A037952(n)` -/
def P6668211452689459116.Spec : Prop :=
  ∀ n, P6668211452689459116.a n = A116385 n

end A116385

/-! ## A116385.P1390739589133718512

`A037956(n+1)+A037955(n)-A037953(n)`
-/

namespace A116385.P1390739589133718512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 (n + 1) + (A037955 n - A037953 n)

end

end A116385.P1390739589133718512

namespace A116385

/-- `A037956(n+1)+A037955(n)-A037953(n)` -/
def P1390739589133718512.Spec : Prop :=
  ∀ n, P1390739589133718512.a n = A116385 n

end A116385

/-! ## A116385.P4730482088740577996

`A026023(n)-A001405(n+1)`
-/

namespace A116385.P4730482088740577996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n - A001405 (n + 1)

end

end A116385.P4730482088740577996

namespace A116385

/-- `A026023(n)-A001405(n+1)` -/
def P4730482088740577996.Spec : Prop :=
  ∀ n, P4730482088740577996.a n = A116385 n

end A116385

/-! ## A116385.P11655794843578228252

`A026010(n+1)-A063886(n+2)`
-/

namespace A116385.P11655794843578228252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - A063886 (n + 2)

end

end A116385.P11655794843578228252

namespace A116385

/-- `A026010(n+1)-A063886(n+2)` -/
def P11655794843578228252.Spec : Prop :=
  ∀ n, P11655794843578228252.a n = A116385 n

end A116385

/-! ## A116385.P268620181520571128

`A143360(n+1)-A007007(n+2)`
-/

namespace A116385.P268620181520571128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143360 (n + 1) - A007007 (n + 2)

end

end A116385.P268620181520571128

namespace A116385

/-- `A143360(n+1)-A007007(n+2)` -/
def P268620181520571128.Spec : Prop :=
  ∀ n, P268620181520571128.a n = A116385 n

end A116385

/-! ## A116385.P2037348834280880437

`A143360(n+1)-A037952(n+2)`
-/

namespace A116385.P2037348834280880437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143360 (n + 1) - A037952 (n + 2)

end

end A116385.P2037348834280880437

namespace A116385

/-- `A143360(n+1)-A037952(n+2)` -/
def P2037348834280880437.Spec : Prop :=
  ∀ n, P2037348834280880437.a n = A116385 n

end A116385

/-! ## A116385.P10495316486663478518

`A026010(n+1)%A001405(n+1)`
-/

namespace A116385.P10495316486663478518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026010 (n + 1)) (A001405 (n + 1))

end

end A116385.P10495316486663478518

namespace A116385

/-- `A026010(n+1)%A001405(n+1)` -/
def P10495316486663478518.Spec : Prop :=
  ∀ n, P10495316486663478518.a n = A116385 n

end A116385

/-! ## A116385.P6383557670190910942

`A026023(n)+A026023(n)-A026010(n+1)`
-/

namespace A116385.P6383557670190910942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n + (A026023 n - A026010 (n + 1))

end

end A116385.P6383557670190910942

namespace A116385

/-- `A026023(n)+A026023(n)-A026010(n+1)` -/
def P6383557670190910942.Spec : Prop :=
  ∀ n, P6383557670190910942.a n = A116385 n

end A116385

/-!
# A116386: Number of calendar weeks in the year n (starting at n=0 for the year 2000).

The programs for A116386, there is no canonical definition to state claims against.
-/

/-! ## A116386.P14700104623511152518

`char[28*n]+53`
-/

namespace A116386.P14700104623511152518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 53

end

end A116386.P14700104623511152518

/-!
# A116387: Expansion of 1/(sqrt(1-2*x-3*x^2)*(2-M(x))), where M(x) is the g.f. of the Motzkin numbers A001006.

The programs for A116387, there is no canonical definition to state claims against.
-/

/-! ## A116387.P13102142026481878359

`A302492(A097136(n))-A139487(n+1)`
-/

namespace A116387.P13102142026481878359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A097136 n).toNat - A139487 (n + 1)

end

end A116387.P13102142026481878359

/-! ## A116387.P7497042037111300882

`A226190(A087206(n))`
-/

namespace A116387.P7497042037111300882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A087206 n).toNat

end

end A116387.P7497042037111300882

/-!
# A116388: Expansion of 1/((1+x*(1-M(x)))*sqrt(1-2*x-3*x^2)), M(x) the g.f. of A001006.

The programs for A116388, there is no canonical definition to state claims against.
-/

/-! ## A116388.P3933800692536437282

`A110656(A291020(n+1)-1)`
-/

namespace A116388.P3933800692536437282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A291020 (n + 1) - 1).toNat

end

end A116388.P3933800692536437282

/-! ## A116388.P3970095000621962036

`A000006(A209801(n))`
-/

namespace A116388.P3970095000621962036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A209801 n).toNat

end

end A116388.P3970095000621962036

/-! ## A116388.P9429453436363124070

`A390395(A236583(n))`
-/

namespace A116388.P9429453436363124070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A236583 n).toNat

end

end A116388.P9429453436363124070

/-!
# A116390: Expansion of 1/(2*sqrt(1-4*x^2)-x-1).

The programs for A116390, there is no canonical definition to state claims against.
-/

/-! ## A116390.P18034664266092763908

`A122510(A294532(n)-A001045(n))`
-/

namespace A116390.P18034664266092763908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122510 (A294532 n - A001045 n).toNat

end

end A116390.P18034664266092763908

/-! ## A116390.P13425285909953014243

`and(A141325(2*n+1), A141325(A141325(2*n+1)))`
-/

namespace A116390.P13425285909953014243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141325 (2 * n + 1)) (A141325 (A141325 (2 * n + 1)).toNat)

end

end A116390.P13425285909953014243

/-!
# A116391: Expansion of 1/((1+x)*(sqrt(1-4*x^2)-x)).

The programs for A116391, there is no canonical definition to state claims against.
-/

/-! ## A116391.P13583395637639638585

`A098615(n)-a(n-1)` with `a(0)=1`
-/

namespace A116391.P13583395637639638585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098615 n - a (n - 1)

end

end A116391.P13583395637639638585

/-! ## A116391.P12703142554189970143

`A126869(n)+A100095(n)-a(n-1)` with `a(0)=1`
-/

namespace A116391.P12703142554189970143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126869 n + A100095 n - a (n - 1)

end

end A116391.P12703142554189970143

/-! ## A116391.P3681129640496733908

`∑[A098615(n)/(-1)^n]*A033999(n)`
-/

namespace A116391.P3681129640496733908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A033999 n : ℚ)

end

end A116391.P3681129640496733908

/-! ## A116391.P7201610007532745180

`lcm(∑[A098615(n)/(-1)^n], A000034(n))`
-/

namespace A116391.P7201610007532745180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A000034 n)

end

end A116391.P7201610007532745180

/-! ## A116391.P15218011751163016473

`∑[A098615(n)/(-1)^n]*A165326(n+1)`
-/

namespace A116391.P15218011751163016473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A165326 (n + 1) : ℚ)

end

end A116391.P15218011751163016473

/-! ## A116391.P18380281773768436662

`∑[A033999(n)*A098615(n)]*A033999(n)`
-/

namespace A116391.P18380281773768436662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A116391.P18380281773768436662

/-! ## A116391.P18384214625722465368

`(A109501(n)-A015540(n))*∑[A098615(n)/(-1)^n]`
-/

namespace A116391.P18384214625722465368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098615 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109501 n - A015540 n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116391.P18384214625722465368

/-!
# A116392: Riordan array (1/sqrt(1-2*x-3*x^2), 1/sqrt(1-2*x-3*x^2) -1).

The programs for A116392, there is no canonical definition to state claims against.
-/

/-! ## A116392.P15202551359878054330

`or(A014082(A007827(n)), A210636(n))`
-/

namespace A116392.P15202551359878054330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 (A007827 n).toNat) (A210636 n)

end

end A116392.P15202551359878054330

/-! ## A116392.P8828792758532376060

`or(A067742(A052992(n)), A210636(n))`
-/

namespace A116392.P8828792758532376060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067742 (A052992 n).toNat) (A210636 n)

end

end A116392.P8828792758532376060

/-! ## A116392.P7240258132968840023

`or(A160380(A333196(n+1)), A210636(n))`
-/

namespace A116392.P7240258132968840023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160380 (A333196 (n + 1)).toNat) (A210636 n)

end

end A116392.P7240258132968840023

/-! ## A116392.P10541244931268101471

`or(A067742(A100883(3*(n+1))), A210636(n))`
-/

namespace A116392.P10541244931268101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067742 (A100883 (3 * (n + 1))).toNat) (A210636 n)

end

end A116392.P10541244931268101471

/-!
# A116394: Expansion of 1/((1+x)*sqrt(1-2*x-3*x^2) - x).

The programs for A116394, there is no canonical definition to state claims against.
-/

/-! ## A116394.P16952392646522931808

`A008616(A215694(n)+A104743(n+1))`
-/

namespace A116394.P16952392646522931808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A215694 n + A104743 (n + 1)).toNat

end

end A116394.P16952392646522931808

/-! ## A116394.P13752129701313389981

`A100196(A123164(n))`
-/

namespace A116394.P13752129701313389981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A123164 n).toNat

end

end A116394.P13752129701313389981

/-! ## A116394.P2858961489340949369

`A100196(A110171(∑[n]))`
-/

namespace A116394.P2858961489340949369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A110171 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A116394.P2858961489340949369

/-!
# A116395: Riordan array (1/sqrt(1-4*x), (1/sqrt(1-4*x)-1)/2).

The programs for A116395, there is no canonical definition to state claims against.
-/

/-! ## A116395.P1472039939658176826

`(A090285(n)+A035324(n+1))/2`
-/

namespace A116395.P1472039939658176826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090285 n + A035324 (n + 1) : ℚ) / 2

end

end A116395.P1472039939658176826

/-! ## A116395.P4944890211198394664

`(A090285(n)+A030523(n+1)/A046089(n+1)*A035342(n+1))/2`
-/

namespace A116395.P4944890211198394664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090285 n : ℚ) + (A030523 (n + 1) : ℚ) / (A046089 (n + 1) : ℚ) * (A035342 (n + 1) : ℚ)) / 2

end

end A116395.P4944890211198394664

/-! ## A116395.P8098528885353959804

`A014682(A090285(n)+A035324(n+1))`
-/

namespace A116395.P8098528885353959804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A090285 n + A035324 (n + 1)).toNat

end

end A116395.P8098528885353959804

/-! ## A116395.P4261816212529396882

`A014682(A090285(n)+A075435(n+2)/(2*A059268(n)))`
-/

namespace A116395.P4261816212529396882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A090285 n : ℚ) + (A075435 (n + 2) : ℚ) / (2 * A059268 n : ℚ))).toNat

end

end A116395.P4261816212529396882

/-! ## A116395.P17501592335417140078

`A302042(A090285(n)+A035324(n+1))`
-/

namespace A116395.P17501592335417140078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A090285 n + A035324 (n + 1)).toNat

end

end A116395.P17501592335417140078

/-!
# A116396: Expansion of 2/((2+x)*sqrt(1-4*x)-x).

The programs for A116396, there is no canonical definition to state claims against.
-/

/-! ## A116396.P10270129583609957081

`A081753(A275908(n+1))`
-/

namespace A116396.P10270129583609957081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A275908 (n + 1)).toNat

end

end A116396.P10270129583609957081

/-! ## A116396.P8935834326064696943

`A375433(A003443(n+5)+1)`
-/

namespace A116396.P8935834326064696943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375433 (A003443 (n + 5) + 1).toNat

end

end A116396.P8935834326064696943

/-!
# A116398: a(n) = log_2(B[4,n]), where B[4,n] is the order of Burnside group of exponent 4 and rank n (A079682).

The programs for A116398, there is no canonical definition to state claims against.
-/

/-! ## A116398.P10483544529491485496

`A274379(n)-A001399(A274405(n))`
-/

namespace A116398.P10483544529491485496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274379 n - A001399 (A274405 n).toNat

end

end A116398.P10483544529491485496

/-!
# A116399: Triangle whose k-th column has e.g.f. sum{j=0..k, Bessel_I(k+j,2x)}.

The programs for A116399, there is no canonical definition to state claims against.
-/

/-! ## A116399.P16483578556165792148

`abs(A116405(n))`
-/

namespace A116399.P16483578556165792148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116405 n|

end

end A116399.P16483578556165792148

/-! ## A116399.P2137512768695485345

`lcm(1-char[1], A116405(char[1]+n))`
-/

namespace A116399.P2137512768695485345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A116405 ((if ∃ j, f2 j = n then 1 else 0) + n))

end

end A116399.P2137512768695485345

/-! ## A116399.P6935975154753441699

`A097807(n)*A116405(n)`
-/

namespace A116399.P6935975154753441699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A116405 n

end

end A116399.P6935975154753441699

/-! ## A116399.P9316083971359366098

`gcd(A000038(n), A116405(n))`
-/

namespace A116399.P9316083971359366098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116405 n)

end

end A116399.P9316083971359366098

/-! ## A116399.P9048393949716338359

`∑{d}[A116405(n), A000010(#)]`
-/

namespace A116399.P9048393949716338359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A116399.P9048393949716338359

/-! ## A116399.P9819885156338868163

`gcd(-A116405(n), C(2, A000203(n+2)))`
-/

namespace A116399.P9819885156338868163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A116405 n) (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A116399.P9819885156338868163

/-! ## A116399.P15134102840084956969

`lcm(A020985(n)*A116405(n), A020985(n))`
-/

namespace A116399.P15134102840084956969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A116405 n) (A020985 n)

end

end A116399.P15134102840084956969

