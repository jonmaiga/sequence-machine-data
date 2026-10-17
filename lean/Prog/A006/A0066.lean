import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C013
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
import Seq.Opaque.C026

/-!
# A006600: Total number of triangles visible in regular n-gon with all diagonals drawn.

The programs for A006600, there is no canonical definition to state claims against.
-/

/-! ## A006600.P17578857145673419035

`A363173(n+3)+A244882(n)`
-/

namespace A006600.P17578857145673419035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363173 (n + 3) + A244882 n

end

end A006600.P17578857145673419035

/-! ## A006600.P7323548131632983373

`A005732(n+3)-A062311(A005731(n+1))`
-/

namespace A006600.P7323548131632983373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005732 (n + 3) - A062311 (A005731 (n + 1)).toNat

end

end A006600.P7323548131632983373

/-!
# A006601: Numbers k such that k, k+1, k+2 and k+3 have the same number of divisors.

The programs for A006601, there is no canonical definition to state claims against.
-/

/-! ## A006601.P265150254328331393

`A039665(4*n+1)`
-/

namespace A006601.P265150254328331393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (4 * n + 1)

end

end A006601.P265150254328331393

/-! ## A006601.P3847855484522687944

`record[A039665(A058281(n))]`
-/

namespace A006601.P3847855484522687944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006601.P3847855484522687944

/-! ## A006601.P11136204282626453109

`A039665(A016825(n))-1`
-/

namespace A006601.P11136204282626453109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A016825 n).toNat - 1

end

end A006601.P11136204282626453109

/-! ## A006601.P16497300866004524998

`A039665(A004767(n))-2`
-/

namespace A006601.P16497300866004524998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A004767 n).toNat - 2

end

end A006601.P16497300866004524998

/-! ## A006601.P9456346778058039506

`record[A039665(n+1)/A135169(n)]`
-/

namespace A006601.P9456346778058039506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039665 (n + 1) : ℚ) / (A135169 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006601.P9456346778058039506

/-! ## A006601.P6671059433587736547

`∩[A171666(n+1)-1, A171666(n+1)]`
-/

namespace A006601.P6671059433587736547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006601.P6671059433587736547

/-! ## A006601.P15170762384291075530

`∩[A005238(n+1)-1, A005238(n+1)]`
-/

namespace A006601.P15170762384291075530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006601.P15170762384291075530

/-!
# A006602: a(n) is the number of hierarchical models on n unlabeled factors or variables with linear terms forced.

The programs for A006602, there is no canonical definition to state claims against.
-/

/-! ## A006602.P13682929955616291513

`A261005(abs(1-n)+1)`
-/

namespace A006602.P13682929955616291513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 (|1 - (n : ℤ)| + 1).toNat

end

end A006602.P13682929955616291513

/-! ## A006602.P15008216169546911206

`A261005(round(acot(n)+n))^(1-char[1])`
-/

namespace A006602.P15008216169546911206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261005 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A006602.P15008216169546911206

/-! ## A006602.P17502430234280545587

`A261005(n)+A000007(n)`
-/

namespace A006602.P17502430234280545587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n + A000007 n

end

end A006602.P17502430234280545587

/-! ## A006602.P8120611216791066467

`A261005(n)+A151878(n)`
-/

namespace A006602.P8120611216791066467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n + A151878 n

end

end A006602.P8120611216791066467

/-! ## A006602.P6084831084546370523

`A057428(n)+A261005(n)+1`
-/

namespace A006602.P6084831084546370523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A261005 n + 1)

end

end A006602.P6084831084546370523

/-!
# A006603: Generalized Fibonacci numbers.

The programs for A006603, there is no canonical definition to state claims against.
-/

/-! ## A006603.P10255332853548435313

`abs(A080244(n+1))`
-/

namespace A006603.P10255332853548435313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080244 (n + 1)|

end

end A006603.P10255332853548435313

/-! ## A006603.P3431830743898598284

`A033999(n)*A080244(n+1)`
-/

namespace A006603.P3431830743898598284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080244 (n + 1)

end

end A006603.P3431830743898598284

/-! ## A006603.P17393403408232057678

`gcd(A000038(n), A080244(n+1))`
-/

namespace A006603.P17393403408232057678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080244 (n + 1))

end

end A006603.P17393403408232057678

/-! ## A006603.P5044339360900326257

`lcm(A000034(n), A080244(n+1))`
-/

namespace A006603.P5044339360900326257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A080244 (n + 1))

end

end A006603.P5044339360900326257

/-! ## A006603.P14349122299675155750

`lcm(-A080244(n+1), A020985(n))`
-/

namespace A006603.P14349122299675155750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A080244 (n + 1)) (A020985 n)

end

end A006603.P14349122299675155750

/-! ## A006603.P9495829591799940955

`A009531(A005408(n))*A080244(n+1)`
-/

namespace A006603.P9495829591799940955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A005408 n).toNat * A080244 (n + 1)

end

end A006603.P9495829591799940955

/-! ## A006603.P8027423499996811042

`A186828(n+1)+A186828(n)-A001003(n+1)`
-/

namespace A006603.P8027423499996811042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186828 (n + 1) + (A186828 n - A001003 (n + 1))

end

end A006603.P8027423499996811042

/-! ## A006603.P3767450648954035178

`A099842(n)%2*A080244(n+1)`
-/

namespace A006603.P3767450648954035178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099842 n) 2 * A080244 (n + 1)

end

end A006603.P3767450648954035178

/-!
# A006604: Generalized Fibonacci numbers.

The programs for A006604, there is no canonical definition to state claims against.
-/

/-! ## A006604.P15894652711428702520

`A325412(2^n)-ceil(n/63)`
-/

namespace A006604.P15894652711428702520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (2 ^ n) - ⌈(n : ℚ) / 63⌉

end

end A006604.P15894652711428702520

/-! ## A006604.P4132402939747750098

`A147680(A093834(n))`
-/

namespace A006604.P4132402939747750098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A093834 n).toNat

end

end A006604.P4132402939747750098

/-!
# A006605: Number of modes of connections of 2n points.

The programs for A006605, there is no canonical definition to state claims against.
-/

/-! ## A006605.P14742297344609024448

`A026302(n)/(n+1)`
-/

namespace A006605.P14742297344609024448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026302 n : ℚ) / (n + 1 : ℚ)

end

end A006605.P14742297344609024448

/-! ## A006605.P16634668153679850473

`A143926(Δ[n²])`
-/

namespace A006605.P16634668153679850473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006605.P16634668153679850473

/-! ## A006605.P5607665531974183396

`A378292(∑[n+1]+n)`
-/

namespace A006605.P5607665531974183396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378292 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006605.P5607665531974183396

/-! ## A006605.P11273000455657687746

`A160357(n)²*A143926(2*n+1)`
-/

namespace A006605.P11273000455657687746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n ^ 2 * A143926 (2 * n + 1)

end

end A006605.P11273000455657687746

/-! ## A006605.P14568469993403566506

`A143926(2*n+1)+A000007(2*(n+2))`
-/

namespace A006605.P14568469993403566506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (2 * n + 1) + A000007 (2 * (n + 2))

end

end A006605.P14568469993403566506

/-! ## A006605.P10239664030575359058

`A143926(2*n+1)+A048050(A000040(n+1))`
-/

namespace A006605.P10239664030575359058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (2 * n + 1) + A048050 (A000040 (n + 1)).toNat

end

end A006605.P10239664030575359058

/-! ## A006605.P599226248408277419

`A143926(2*n+1)+A048050(A020482(n+2))`
-/

namespace A006605.P599226248408277419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (2 * n + 1) + A048050 (A020482 (n + 2)).toNat

end

end A006605.P599226248408277419

/-! ## A006605.P5847874946546484379

`A001222(A020482(2*(n+1)))*A143926(2*n+1)`
-/

namespace A006605.P5847874946546484379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020482 (2 * (n + 1))).toNat * A143926 (2 * n + 1)

end

end A006605.P5847874946546484379

/-! ## A006605.P13758686385335284928

`A001051(A005408(n))*A143926(A005408(n))`
-/

namespace A006605.P13758686385335284928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (A005408 n).toNat * A143926 (A005408 n).toNat

end

end A006605.P13758686385335284928

/-! ## A006605.P7595705530296233660

`A001051(A005408(n+1))+A143926(A005408(n))-1`
-/

namespace A006605.P7595705530296233660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (A005408 (n + 1)).toNat + (A143926 (A005408 n).toNat - 1)

end

end A006605.P7595705530296233660

/-! ## A006605.P5292252012975632249

`A026307(2*n)/(n+1)`
-/

namespace A006605.P5292252012975632249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026307 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A006605.P5292252012975632249

/-! ## A006605.P11542257363036683887

`A027911(n)/(2*n+1)`
-/

namespace A006605.P11542257363036683887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027911 n : ℚ) / (2 * n + 1 : ℚ)

end

end A006605.P11542257363036683887

/-! ## A006605.P18339999172271272279

`A027913(2*n+1)/Δ[n²]`
-/

namespace A006605.P18339999172271272279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A006605.P18339999172271272279

/-! ## A006605.P4525179932023353328

`1/A028310(2*n+1)*A027913(2*n+1)`
-/

namespace A006605.P4525179932023353328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A028310 (2 * n + 1) : ℚ) * (A027913 (2 * n + 1) : ℚ)

end

end A006605.P4525179932023353328

/-! ## A006605.P16194045884487874702

`2/A004277(2*n+1)*A027913(2*n+1)`
-/

namespace A006605.P16194045884487874702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004277 (2 * n + 1) : ℚ) * (A027913 (2 * n + 1) : ℚ)

end

end A006605.P16194045884487874702

/-!
# A006606: Number of nonperiodic autocorrelation functions of length n {-1,1} sequences.

The programs for A006606, there is no canonical definition to state claims against.
-/

/-! ## A006606.P1315510461222693933

`A381349(∑[n]+2)`
-/

namespace A006606.P1315510461222693933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006606.P1315510461222693933

/-! ## A006606.P6000691628041452990

`record[ratio[A381349(n+1)]]`
-/

namespace A006606.P6000691628041452990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006606.P6000691628041452990

/-! ## A006606.P305171123834424558

`A120421(n+1)-A184955(A120440(n+1))`
-/

namespace A006606.P305171123834424558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120421 (n + 1) - A184955 (A120440 (n + 1)).toNat

end

end A006606.P305171123834424558

/-! ## A006606.P4303036879960601113

`A120421(A043316(n+1))`
-/

namespace A006606.P4303036879960601113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120421 (A043316 (n + 1)).toNat

end

end A006606.P4303036879960601113

/-! ## A006606.P1914121641767660107

`A120421(A044913(n+1))`
-/

namespace A006606.P1914121641767660107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120421 (A044913 (n + 1)).toNat

end

end A006606.P1914121641767660107

/-!
# A006608: Number of n-node graphs not determined by their spectrum.

The programs for A006608, there is no canonical definition to state claims against.
-/

/-! ## A006608.P11864499361573937299

`A052928(A178944(n+1)-A178925(n+1))`
-/

namespace A006608.P11864499361573937299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A178944 (n + 1) - A178925 (n + 1)).toNat

end

end A006608.P11864499361573937299

/-! ## A006608.P10713440879411390042

`A052928(A178944(n+1)%A178925(n+1))`
-/

namespace A006608.P10713440879411390042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.tmod (A178944 (n + 1)) (A178925 (n + 1))).toNat

end

end A006608.P10713440879411390042

/-! ## A006608.P2455123660091801174

`Δ[or(1, A241458(n+3))]`
-/

namespace A006608.P2455123660091801174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A241458 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006608.P2455123660091801174

/-!
# A006609: Number of cyclic neofields of order n.

The programs for A006609, there is no canonical definition to state claims against.
-/

/-! ## A006609.P747188215633873783

`A318690(A298353(n))`
-/

namespace A006609.P747188215633873783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (A298353 n).toNat

end

end A006609.P747188215633873783

/-! ## A006609.P8507491167619204181

`A319837(A389803(n))`
-/

namespace A006609.P8507491167619204181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (A389803 n).toNat

end

end A006609.P8507491167619204181

/-! ## A006609.P14230389136480048011

`∑[A071090(∏[A061446(n+1)])]`
-/

namespace A006609.P14230389136480048011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006609.P14230389136480048011

/-!
# A006610: Number of n-node trees not determined by their spectra.

The programs for A006610, there is no canonical definition to state claims against.
-/

/-! ## A006610.P13144755473380480763

`and(A286209(n), A300821(A025192(n)))`
-/

namespace A006610.P13144755473380480763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286209 n) (A300821 (A025192 n).toNat)

end

end A006610.P13144755473380480763

/-! ## A006610.P7224454806257780811

`A008458(n)%A135304(A147143(n+1))`
-/

namespace A006610.P7224454806257780811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) (A135304 (A147143 (n + 1)).toNat)

end

end A006610.P7224454806257780811

/-! ## A006610.P7644434631100202630

`lcm(A096289(A324088(n+1)), A220906(n))`
-/

namespace A006610.P7644434631100202630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096289 (A324088 (n + 1)).toNat) (A220906 n)

end

end A006610.P7644434631100202630

/-! ## A006610.P1804538402763272942

`and(A033183(A001906(n)), A100484(n+1))`
-/

namespace A006610.P1804538402763272942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033183 (A001906 n).toNat) (A100484 (n + 1))

end

end A006610.P1804538402763272942

/-! ## A006610.P13403207000071430906

`and(A053632(A113861(n+1)), A286209(n))`
-/

namespace A006610.P13403207000071430906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053632 (A113861 (n + 1)).toNat) (A286209 n)

end

end A006610.P13403207000071430906

/-!
# A006611: Number of n-node forests not determined by their spectra.

The programs for A006611, there is no canonical definition to state claims against.
-/

/-! ## A006611.P8357089272121802961

`A085861(A053828(3*n+2)+A026150(n))`
-/

namespace A006611.P8357089272121802961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A053828 (3 * n + 2) + A026150 n).toNat

end

end A006611.P8357089272121802961

/-! ## A006611.P11202968713073909006

`floor(A010361(n+2)/8)`
-/

namespace A006611.P11202968713073909006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010361 (n + 2) : ℚ) / 8⌋

end

end A006611.P11202968713073909006

/-! ## A006611.P14764760185525866553

`floor(A124483(n+1)/16)`
-/

namespace A006611.P14764760185525866553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124483 (n + 1) : ℚ) / 16⌋

end

end A006611.P14764760185525866553

/-! ## A006611.P16449885522009369819

`round(Δ[A010364(n+1)/7])`
-/

namespace A006611.P16449885522009369819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010364 (n + 1) : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A006611.P16449885522009369819

/-! ## A006611.P4557889284069513905

`A204814(A014432(n))`
-/

namespace A006611.P4557889284069513905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (A014432 n).toNat

end

end A006611.P4557889284069513905

/-!
# A006612: Number of n-node bipartite graphs not determined by their spectra.

The programs for A006612, there is no canonical definition to state claims against.
-/

/-! ## A006612.P16123297572962061576

`A008620(n)*A033270(A072214(n))`
-/

namespace A006612.P16123297572962061576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A033270 (A072214 n).toNat

end

end A006612.P16123297572962061576

/-! ## A006612.P3731153106571413861

`A033270(n+1)*A033270(A072214(n))`
-/

namespace A006612.P3731153106571413861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) * A033270 (A072214 n).toNat

end

end A006612.P3731153106571413861

/-!
# A006613: Zarankiewicz's problem.

The programs for A006613, there is no canonical definition to state claims against.
-/

/-! ## A006613.P12662812161310274785

`A141437(2*n+1)+6+n`
-/

namespace A006613.P12662812161310274785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (2 * n + 1) + 6 + (n : ℤ)

end

end A006613.P12662812161310274785

/-! ## A006613.P4751854640571527700

`∑[A179016(2*(n+2))-6*n]+1`
-/

namespace A006613.P4751854640571527700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (2 * (n + 2)) - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006613.P4751854640571527700

/-! ## A006613.P2240629214536303514

`A381255(A006617(n+2))-2`
-/

namespace A006613.P2240629214536303514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381255 (A006617 (n + 2)).toNat - 2

end

end A006613.P2240629214536303514

/-! ## A006613.P7473361877467239161

`A333227(3*n+4)+A224956(n)+1`
-/

namespace A006613.P7473361877467239161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (3 * n + 4) + (A224956 n + 1)

end

end A006613.P7473361877467239161

/-! ## A006613.P16949383693288235753

`A162722(3*n+5)+A162721(n+1)`
-/

namespace A006613.P16949383693288235753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162722 (3 * n + 5) + A162721 (n + 1)

end

end A006613.P16949383693288235753

/-!
# A006616: Zarankiewicz's problem k_4(n).

The programs for A006616, there is no canonical definition to state claims against.
-/

/-! ## A006616.P9580687507846032463

`(n+4)²-A347474(n+4)`
-/

namespace A006616.P9580687507846032463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A347474 (n + 4)

end

end A006616.P9580687507846032463

/-! ## A006616.P7278857726782841461

`abs(A000290(n+4)-A347474(n+4))`
-/

namespace A006616.P7278857726782841461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 4) - A347474 (n + 4)|

end

end A006616.P7278857726782841461

/-! ## A006616.P13683833646197028800

`A001198(n+4)+A347473(n+4)-A347474(n+4)`
-/

namespace A006616.P13683833646197028800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001198 (n + 4) + (A347473 (n + 4) - A347474 (n + 4))

end

end A006616.P13683833646197028800

/-!
# A006617: Zarankiewicz's problem.

The programs for A006617, there is no canonical definition to state claims against.
-/

/-! ## A006617.P13351168292833572774

`∑[A108872(n+2)]+3`
-/

namespace A006617.P13351168292833572774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A006617.P13351168292833572774

/-! ## A006617.P65524951390161508

`∑[A248110(n+2)]+3`
-/

namespace A006617.P65524951390161508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248110 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A006617.P65524951390161508

/-! ## A006617.P9435549082597613314

`A122154(a(n-1))+3` with `a(0)=6, a(1)=10`
-/

namespace A006617.P9435549082597613314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  A122154 (a (n - 1)).toNat + 3

end

end A006617.P9435549082597613314

/-! ## A006617.P6529901589302059869

`∑[A094727(n+2)+1]+3`
-/

namespace A006617.P6529901589302059869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A006617.P6529901589302059869

/-! ## A006617.P7350029776960722515

`∑[A366611(2*(n+2))]+3`
-/

namespace A006617.P7350029776960722515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366611 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A006617.P7350029776960722515

/-!
# A006620: A variant of Zarankiewicz's problem: a(n) is the least k such that every n X (n+1) {0,1}-matrix with k ones contains an all-ones 2 X 2 submatrix.

The programs for A006620, there is no canonical definition to state claims against.
-/

/-! ## A006620.P12179234012619147316

`round(sqrt(2*∑[A139252(3*n+4)]))+1`
-/

namespace A006620.P12179234012619147316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℝ)) + 1

end

end A006620.P12179234012619147316

/-! ## A006620.P4600800339744881955

`A247760(n+4)+∑[ceil(log2(n+2))]+1`
-/

namespace A006620.P4600800339744881955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247760 (n + 4) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006620.P4600800339744881955

/-! ## A006620.P86187314548938348

`A130251(n+2)+A062985(n)`
-/

namespace A006620.P86187314548938348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130251 (n + 2) + A062985 n

end

end A006620.P86187314548938348

/-! ## A006620.P6991216379287354398

`∑[A374994(A065033(n))+1]+n+3`
-/

namespace A006620.P6991216379287354398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (A065033 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A006620.P6991216379287354398

/-! ## A006620.P15456389828021729253

`∑[A060607(A262868(2*(n+1)))]+n+4`
-/

namespace A006620.P15456389828021729253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060607 (A262868 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 4 : ℤ)

end

end A006620.P15456389828021729253

/-!
# A006621: Zarankiewicz's problem k_3(n,n+1).

The programs for A006621, there is no canonical definition to state claims against.
-/

/-! ## A006621.P206062850190378537

`ceil((A082483(n+2)-1)/3)`
-/

namespace A006621.P206062850190378537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082483 (n + 2) - 1 : ℚ) / 3⌉

end

end A006621.P206062850190378537

/-! ## A006621.P3205893876744999358

`ceil(7*(eq[7, A002262(n)]/10-2))`
-/

namespace A006621.P3205893876744999358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 10 - 2)⌉

end

end A006621.P3205893876744999358

/-! ## A006621.P3433796953934404935

`A054404((n+9)*(n+2))+5+n`
-/

namespace A006621.P3433796953934404935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ((n + 9) * (n + 2)) + 5 + (n : ℤ)

end

end A006621.P3433796953934404935

/-! ## A006621.P5214555908093225983

`A001462(A101986(n+3))+n+3`
-/

namespace A006621.P5214555908093225983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A101986 (n + 3)).toNat + (n + 3 : ℤ)

end

end A006621.P5214555908093225983

/-!
# A006626: Zarankiewicz's problem k_4(n,n+1).

The programs for A006626, there is no canonical definition to state claims against.
-/

/-! ## A006626.P5276121606586607413

`A332108(A017041(n)+12)`
-/

namespace A006626.P5276121606586607413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (A017041 n + 12).toNat

end

end A006626.P5276121606586607413

/-! ## A006626.P11784878178365278363

`A332108(A017029(n)+13)`
-/

namespace A006626.P11784878178365278363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (A017029 n + 13).toNat

end

end A006626.P11784878178365278363

/-! ## A006626.P15287359647266196353

`A332108(A101328(n+5)+n)`
-/

namespace A006626.P15287359647266196353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (A101328 (n + 5) + (n : ℤ)).toNat

end

end A006626.P15287359647266196353

/-! ## A006626.P992045116184175959

`eq[13, A099375(n)]-A060118(A111286(n))`
-/

namespace A006626.P992045116184175959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A060118 (A111286 n).toNat

end

end A006626.P992045116184175959

/-! ## A006626.P2342060860097462512

`A056796(A304792(n+3))+A055999(n+3)`
-/

namespace A006626.P2342060860097462512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056796 (A304792 (n + 3)).toNat + A055999 (n + 3)

end

end A006626.P2342060860097462512

/-!
# A006627: Number of nonisomorphic 2-graphs with n nodes with first and second cohomology invariants both 0.

The programs for A006627, there is no canonical definition to state claims against.
-/

/-! ## A006627.P9419377677795093880

`A235130(A049932(n+2))`
-/

namespace A006627.P9419377677795093880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A049932 (n + 2)).toNat

end

end A006627.P9419377677795093880

/-!
# A006629: Self-convolution 4th power of A001764, which enumerates ternary trees.

The programs for A006629, the canonical program `A006629.P1664093958388790067` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006629 has offset 0).

The definition of A006629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006629.P1664093958388790067

`(n+1)*A000139(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006629

/-- `(n+1)*A000139(n+1)` -/
def P1664093958388790067.Spec : Prop :=
  ∀ n, P1664093958388790067.a n = A006629 n

theorem P1664093958388790067.correct : P1664093958388790067.Spec := by
  intro n
  simp only [A006629]

end A006629

/-! ## A006629.P15176554528395814843

`record[Δ[A073148(n)]]`
-/

namespace A006629.P15176554528395814843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006629.P15176554528395814843

namespace A006629

/-- `record[Δ[A073148(n)]]` -/
def P15176554528395814843.Spec : Prop :=
  ∀ n, P15176554528395814843.a n = A006629 n

end A006629

/-! ## A006629.P223897812791059405

`A092276(∑[n+1]+2)`
-/

namespace A006629.P223897812791059405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006629.P223897812791059405

namespace A006629

/-- `A092276(∑[n+1]+2)` -/
def P223897812791059405.Spec : Prop :=
  ∀ n, P223897812791059405.a n = A006629 n

end A006629

/-! ## A006629.P1763201719630477024

`A071948(∑[n+2]-1)`
-/

namespace A006629.P1763201719630477024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006629.P1763201719630477024

namespace A006629

/-- `A071948(∑[n+2]-1)` -/
def P1763201719630477024.Spec : Prop :=
  ∀ n, P1763201719630477024.a n = A006629 n

end A006629

/-! ## A006629.P1462479978357349901

`A073147(∑[n+1]+n)`
-/

namespace A006629.P1462479978357349901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006629.P1462479978357349901

namespace A006629

/-- `A073147(∑[n+1]+n)` -/
def P1462479978357349901.Spec : Prop :=
  ∀ n, P1462479978357349901.a n = A006629 n

end A006629

/-! ## A006629.P4728413167821712658

`A093951(2*(n+1))/2`
-/

namespace A006629.P4728413167821712658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093951 (2 * (n + 1)) : ℚ) / 2

end

end A006629.P4728413167821712658

namespace A006629

/-- `A093951(2*(n+1))/2` -/
def P4728413167821712658.Spec : Prop :=
  ∀ n, P4728413167821712658.a n = (A006629 n : ℚ)

end A006629

/-! ## A006629.P6653948755027419127

`2*(n+1)/(n+2)*A001764(n+1)`
-/

namespace A006629.P6653948755027419127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (n + 2 : ℚ) * (A001764 (n + 1) : ℚ)

end

end A006629.P6653948755027419127

namespace A006629

/-- `2*(n+1)/(n+2)*A001764(n+1)` -/
def P6653948755027419127.Spec : Prop :=
  ∀ n, P6653948755027419127.a n = (A006629 n : ℚ)

end A006629

/-! ## A006629.P1156753839112117649

`A047761(2*n+1)/(n+2)*2*(n+1)`
-/

namespace A006629.P1156753839112117649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047761 (2 * n + 1) : ℚ) / (n + 2 : ℚ) * (2 * (n + 1) : ℚ)

end

end A006629.P1156753839112117649

namespace A006629

/-- `A047761(2*n+1)/(n+2)*2*(n+1)` -/
def P1156753839112117649.Spec : Prop :=
  ∀ n, P1156753839112117649.a n = (A006629 n : ℚ)

end A006629

/-! ## A006629.P9138458608377836882

`A069269(A055999(n+1)+2)`
-/

namespace A006629.P9138458608377836882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (A055999 (n + 1) + 2).toNat

end

end A006629.P9138458608377836882

namespace A006629

/-- `A069269(A055999(n+1)+2)` -/
def P9138458608377836882.Spec : Prop :=
  ∀ n, P9138458608377836882.a n = A006629 n

end A006629

/-! ## A006629.P2195573718335447681

`A109971(A167614(n+1)-1)`
-/

namespace A006629.P2195573718335447681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 (A167614 (n + 1) - 1).toNat

end

end A006629.P2195573718335447681

namespace A006629

/-- `A109971(A167614(n+1)-1)` -/
def P2195573718335447681.Spec : Prop :=
  ∀ n, P2195573718335447681.a n = A006629 n

end A006629

/-! ## A006629.P7861851516092380526

`A069269(A055998(n+2)-1)`
-/

namespace A006629.P7861851516092380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (A055998 (n + 2) - 1).toNat

end

end A006629.P7861851516092380526

namespace A006629

/-- `A069269(A055998(n+2)-1)` -/
def P7861851516092380526.Spec : Prop :=
  ∀ n, P7861851516092380526.a n = A006629 n

end A006629

/-! ## A006629.P16983682593328649540

`A006013(n+1)-A001764(n+1)`
-/

namespace A006629.P16983682593328649540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A001764 (n + 1)

end

end A006629.P16983682593328649540

namespace A006629

/-- `A006013(n+1)-A001764(n+1)` -/
def P16983682593328649540.Spec : Prop :=
  ∀ n, P16983682593328649540.a n = A006629 n

end A006629

/-! ## A006629.P16469977049031306070

`A046646(n+2)-A000139(n+1)`
-/

namespace A006629.P16469977049031306070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046646 (n + 2) - A000139 (n + 1)

end

end A006629.P16469977049031306070

namespace A006629

/-- `A046646(n+2)-A000139(n+1)` -/
def P16469977049031306070.Spec : Prop :=
  ∀ n, P16469977049031306070.a n = A006629 n

end A006629

/-! ## A006629.P2957096259729052495

`A102893(n+2)-A102594(n+2)`
-/

namespace A006629.P2957096259729052495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102893 (n + 2) - A102594 (n + 2)

end

end A006629.P2957096259729052495

namespace A006629

/-- `A102893(n+2)-A102594(n+2)` -/
def P2957096259729052495.Spec : Prop :=
  ∀ n, P2957096259729052495.a n = A006629 n

end A006629

/-! ## A006629.P4571034432600736449

`A134565(2*(n+1))+A006013(n+1)`
-/

namespace A006629.P4571034432600736449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (2 * (n + 1)) + A006013 (n + 1)

end

end A006629.P4571034432600736449

namespace A006629

/-- `A134565(2*(n+1))+A006013(n+1)` -/
def P4571034432600736449.Spec : Prop :=
  ∀ n, P4571034432600736449.a n = A006629 n

end A006629

/-! ## A006629.P5420625502345511956

`A007226(n+1)-2*A001764(n+1)`
-/

namespace A006629.P5420625502345511956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (n + 1) - 2 * A001764 (n + 1)

end

end A006629.P5420625502345511956

namespace A006629

/-- `A007226(n+1)-2*A001764(n+1)` -/
def P5420625502345511956.Spec : Prop :=
  ∀ n, P5420625502345511956.a n = A006629 n

end A006629

/-! ## A006629.P12409073841566063868

`2*A006013(n+1)-A007226(n+1)`
-/

namespace A006629.P12409073841566063868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006013 (n + 1) - A007226 (n + 1)

end

end A006629.P12409073841566063868

namespace A006629

/-- `2*A006013(n+1)-A007226(n+1)` -/
def P12409073841566063868.Spec : Prop :=
  ∀ n, P12409073841566063868.a n = A006629 n

end A006629

/-! ## A006629.P8166644894730410037

`A006013(n+1)-A047761(2*n+1)`
-/

namespace A006629.P8166644894730410037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A047761 (2 * n + 1)

end

end A006629.P8166644894730410037

namespace A006629

/-- `A006013(n+1)-A047761(2*n+1)` -/
def P8166644894730410037.Spec : Prop :=
  ∀ n, P8166644894730410037.a n = A006629 n

end A006629

/-! ## A006629.P15677840910290072813

`(A007226(n+1)-A000139(n+1))/2`
-/

namespace A006629.P15677840910290072813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007226 (n + 1) - A000139 (n + 1) : ℚ) / 2

end

end A006629.P15677840910290072813

namespace A006629

/-- `(A007226(n+1)-A000139(n+1))/2` -/
def P15677840910290072813.Spec : Prop :=
  ∀ n, P15677840910290072813.a n = (A006629 n : ℚ)

end A006629

/-! ## A006629.P95330839630073347

`A121446(n+2)-2*A001764(n+1)`
-/

namespace A006629.P95330839630073347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121446 (n + 2) - 2 * A001764 (n + 1)

end

end A006629.P95330839630073347

namespace A006629

/-- `A121446(n+2)-2*A001764(n+1)` -/
def P95330839630073347.Spec : Prop :=
  ∀ n, P95330839630073347.a n = A006629 n

end A006629

/-!
# A006630: From generalized Catalan numbers.

The programs for A006630, the canonical program `A006630.P14392861904876604474` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006630 has offset 0).

The definition of A006630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006630.P15741005008367098914

`A071948(∑[n+3])`
-/

namespace A006630.P15741005008367098914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006630.P15741005008367098914

namespace A006630

/-- `A071948(∑[n+3])` -/
def P15741005008367098914.Spec : Prop :=
  ∀ n, P15741005008367098914.a n = A006630 n

end A006630

/-! ## A006630.P15786961852752424351

`A127898(∑[n+1]+1)`
-/

namespace A006630.P15786961852752424351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006630.P15786961852752424351

namespace A006630

/-- `A127898(∑[n+1]+1)` -/
def P15786961852752424351.Spec : Prop :=
  ∀ n, P15786961852752424351.a n = A006630 n

end A006630

/-! ## A006630.P17739046977375102194

`A064282(∑[n+2]-1)`
-/

namespace A006630.P17739046977375102194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006630.P17739046977375102194

namespace A006630

/-- `A064282(∑[n+2]-1)` -/
def P17739046977375102194.Spec : Prop :=
  ∀ n, P17739046977375102194.a n = A006630 n

end A006630

/-! ## A006630.P14392861904876604474

`record[abs(A000139(n)-A001764(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006630

/-- `record[abs(A000139(n)-A001764(n))]` -/
def P14392861904876604474.Spec : Prop :=
  ∀ n, P14392861904876604474.a n = A006630 n

theorem P14392861904876604474.correct : P14392861904876604474.Spec := by
  intro n
  simp only [A006630]

end A006630

/-! ## A006630.P7678803369355458586

`A001764(n+2)-record[A000139(n)]`
-/

namespace A006630.P7678803369355458586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006630.P7678803369355458586

namespace A006630

/-- `A001764(n+2)-record[A000139(n)]` -/
def P7678803369355458586.Spec : Prop :=
  ∀ n, P7678803369355458586.a n = A006630 n

end A006630

/-! ## A006630.P10143547399326849244

`A001764(n+2)-A000139(n+2)`
-/

namespace A006630.P10143547399326849244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 2) - A000139 (n + 2)

end

end A006630.P10143547399326849244

namespace A006630

/-- `A001764(n+2)-A000139(n+2)` -/
def P10143547399326849244.Spec : Prop :=
  ∀ n, P10143547399326849244.a n = A006630 n

end A006630

/-! ## A006630.P1331646862083857955

`A071948(A055998(n+1))^A048766(A048766(n))`
-/

namespace A006630.P1331646862083857955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071948 (A055998 (n + 1)).toNat : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A006630.P1331646862083857955

namespace A006630

/-- `A071948(A055998(n+1))^A048766(A048766(n))` -/
def P1331646862083857955.Spec : Prop :=
  ∀ n, P1331646862083857955.a n = (A006630 n : ℚ)

end A006630

/-! ## A006630.P3003325073055946806

`A092276(A167614(n+1))`
-/

namespace A006630.P3003325073055946806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A167614 (n + 1)).toNat

end

end A006630.P3003325073055946806

namespace A006630

/-- `A092276(A167614(n+1))` -/
def P3003325073055946806.Spec : Prop :=
  ∀ n, P3003325073055946806.a n = A006630 n

end A006630

/-! ## A006630.P9240139146541287845

`A109971(A167614(n+2))`
-/

namespace A006630.P9240139146541287845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 (A167614 (n + 2)).toNat

end

end A006630.P9240139146541287845

namespace A006630

/-- `A109971(A167614(n+2))` -/
def P9240139146541287845.Spec : Prop :=
  ∀ n, P9240139146541287845.a n = A006630 n

end A006630

/-! ## A006630.P9693466543525747002

`A006629(n+1)-A001764(n+2)`
-/

namespace A006630.P9693466543525747002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006629 (n + 1) - A001764 (n + 2)

end

end A006630.P9693466543525747002

namespace A006630

/-- `A006629(n+1)-A001764(n+2)` -/
def P9693466543525747002.Spec : Prop :=
  ∀ n, P9693466543525747002.a n = A006630 n

end A006630

/-! ## A006630.P10479923148458117157

`A006013(n+2)-A046646(n+3)`
-/

namespace A006630.P10479923148458117157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 2) - A046646 (n + 3)

end

end A006630.P10479923148458117157

namespace A006630

/-- `A006013(n+2)-A046646(n+3)` -/
def P10479923148458117157.Spec : Prop :=
  ∀ n, P10479923148458117157.a n = A006630 n

end A006630

/-! ## A006630.P8801132938593306121

`A046646(n+3)-A103938(n+3)`
-/

namespace A006630.P8801132938593306121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046646 (n + 3) - A103938 (n + 3)

end

end A006630.P8801132938593306121

namespace A006630

/-- `A046646(n+3)-A103938(n+3)` -/
def P8801132938593306121.Spec : Prop :=
  ∀ n, P8801132938593306121.a n = A006630 n

end A006630

/-! ## A006630.P2840067539009315578

`A006013(n+2)%A001764(n+2)`
-/

namespace A006630.P2840067539009315578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006013 (n + 2)) (A001764 (n + 2))

end

end A006630.P2840067539009315578

namespace A006630

/-- `A006013(n+2)%A001764(n+2)` -/
def P2840067539009315578.Spec : Prop :=
  ∀ n, P2840067539009315578.a n = A006630 n

end A006630

/-! ## A006630.P10172640310439095979

`A000108(n+1)/A001700(n)*A003408(n)`
-/

namespace A006630.P10172640310439095979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A001700 n : ℚ) * (A003408 n : ℚ)

end

end A006630.P10172640310439095979

namespace A006630

/-- `A000108(n+1)/A001700(n)*A003408(n)` -/
def P10172640310439095979.Spec : Prop :=
  ∀ n, P10172640310439095979.a n = (A006630 n : ℚ)

end A006630

/-!
# A006631: From generalized Catalan numbers.

The programs for A006631, the canonical program `A006631.P814917172893667623` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006631 has offset 0).

The definition of A006631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006631.P6137419782509977348

`A071948(∑[n+3]+n+3)`
-/

namespace A006631.P6137419782509977348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A006631.P6137419782509977348

namespace A006631

/-- `A071948(∑[n+3]+n+3)` -/
def P6137419782509977348.Spec : Prop :=
  ∀ n, P6137419782509977348.a n = A006631 n

end A006631

/-! ## A006631.P814917172893667623

`A006013(n+2)-A000139(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006631

/-- `A006013(n+2)-A000139(n+3)` -/
def P814917172893667623.Spec : Prop :=
  ∀ n, P814917172893667623.a n = A006631 n

theorem P814917172893667623.correct : P814917172893667623.Spec := by
  intro n
  simp only [A006631]

end A006631

/-! ## A006631.P10816996819472012191

`A092276(A052905(n)+9)`
-/

namespace A006631.P10816996819472012191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A052905 n + 9).toNat

end

end A006631.P10816996819472012191

namespace A006631

/-- `A092276(A052905(n)+9)` -/
def P10816996819472012191.Spec : Prop :=
  ∀ n, P10816996819472012191.a n = A006631 n

end A006631

/-! ## A006631.P1314703916382000177

`A092276(A055999(n)+10)`
-/

namespace A006631.P1314703916382000177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A055999 n + 10).toNat

end

end A006631.P1314703916382000177

namespace A006631

/-- `A092276(A055999(n)+10)` -/
def P1314703916382000177.Spec : Prop :=
  ∀ n, P1314703916382000177.a n = A006631 n

end A006631

/-! ## A006631.P8999380643147008744

`A092276(A167614(n+2)+1)`
-/

namespace A006631.P8999380643147008744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A167614 (n + 2) + 1).toNat

end

end A006631.P8999380643147008744

namespace A006631

/-- `A092276(A167614(n+2)+1)` -/
def P8999380643147008744.Spec : Prop :=
  ∀ n, P8999380643147008744.a n = A006631 n

end A006631

/-!
# A006632: a(n) = 3*binomial(4*n-1, n-1)/(4*n-1).

The programs for A006632, the canonical program `A006632.P11412046250827832629` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006632 has offset 1).

The definition of A006632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006632.P11412046250827832629

`A369082(Δ[n²])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006632

/-- `A369082(Δ[n²])` -/
def P11412046250827832629.Spec : Prop :=
  ∀ n, P11412046250827832629.a n = A006632 (n + 1)

theorem P11412046250827832629.correct : P11412046250827832629.Spec := by
  intro n
  simp only [A006632, Nat.add_sub_cancel]

end A006632

/-! ## A006632.P11171488698068051328

`abs(A171790(n+1))`
-/

namespace A006632.P11171488698068051328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171790 (n + 1)|

end

end A006632.P11171488698068051328

namespace A006632

/-- `abs(A171790(n+1))` -/
def P11171488698068051328.Spec : Prop :=
  ∀ n, P11171488698068051328.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P13795962995493147347

`A069270(∑[n+3])`
-/

namespace A006632.P13795962995493147347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006632.P13795962995493147347

namespace A006632

/-- `A069270(∑[n+3])` -/
def P13795962995493147347.Spec : Prop :=
  ∀ n, P13795962995493147347.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P6364527118257659988

`A112385(n+1)/2`
-/

namespace A006632.P6364527118257659988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112385 (n + 1) : ℚ) / 2

end

end A006632.P6364527118257659988

namespace A006632

/-- `A112385(n+1)/2` -/
def P6364527118257659988.Spec : Prop :=
  ∀ n, P6364527118257659988.a n = (A006632 (n + 1) : ℚ)

end A006632

/-! ## A006632.P8991514196692652217

`A124753(3*n+2)`
-/

namespace A006632.P8991514196692652217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (3 * n + 2)

end

end A006632.P8991514196692652217

namespace A006632

/-- `A124753(3*n+2)` -/
def P8991514196692652217.Spec : Prop :=
  ∀ n, P8991514196692652217.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P17112414883909160775

`∑{d}[n+1, A380552(#)]`
-/

namespace A006632.P17112414883909160775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380552 d

end

end A006632.P17112414883909160775

namespace A006632

/-- `∑{d}[n+1, A380552(#)]` -/
def P17112414883909160775.Spec : Prop :=
  ∀ n, P17112414883909160775.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P7160829519400362167

`Δ[n²]*A000260(n)`
-/

namespace A006632.P7160829519400362167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000260 n

end

end A006632.P7160829519400362167

namespace A006632

/-- `Δ[n²]*A000260(n)` -/
def P7160829519400362167.Spec : Prop :=
  ∀ n, P7160829519400362167.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P2005249884129449585

`A339350(∑[n+1]+n)`
-/

namespace A006632.P2005249884129449585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006632.P2005249884129449585

namespace A006632

/-- `A339350(∑[n+1]+n)` -/
def P2005249884129449585.Spec : Prop :=
  ∀ n, P2005249884129449585.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P10746739748226623368

`(2*n+1)*A146305(∑[n])`
-/

namespace A006632.P10746739748226623368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006632.P10746739748226623368

namespace A006632

/-- `(2*n+1)*A146305(∑[n])` -/
def P10746739748226623368.Spec : Prop :=
  ∀ n, P10746739748226623368.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P9835609082029249037

`lcm(2*n+1, A369082(2*n+1))`
-/

namespace A006632.P9835609082029249037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A369082 (2 * n + 1))

end

end A006632.P9835609082029249037

namespace A006632

/-- `lcm(2*n+1, A369082(2*n+1))` -/
def P9835609082029249037.Spec : Prop :=
  ∀ n, (P9835609082029249037.a n : ℤ) = A006632 (n + 1)

end A006632

/-! ## A006632.P10146638333190884570

`A000260(n)*A005408(n)`
-/

namespace A006632.P10146638333190884570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A005408 n

end

end A006632.P10146638333190884570

namespace A006632

/-- `A000260(n)*A005408(n)` -/
def P10146638333190884570.Spec : Prop :=
  ∀ n, P10146638333190884570.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P8149656691503306858

`2*A069271(n)-A000260(n)`
-/

namespace A006632.P8149656691503306858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069271 n - A000260 n

end

end A006632.P8149656691503306858

namespace A006632

/-- `2*A069271(n)-A000260(n)` -/
def P8149656691503306858.Spec : Prop :=
  ∀ n, P8149656691503306858.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P5132016649670771270

`A000260(n)/2*A016825(n)`
-/

namespace A006632.P5132016649670771270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 n : ℚ) / 2 * (A016825 n : ℚ)

end

end A006632.P5132016649670771270

namespace A006632

/-- `A000260(n)/2*A016825(n)` -/
def P5132016649670771270.Spec : Prop :=
  ∀ n, P5132016649670771270.a n = (A006632 (n + 1) : ℚ)

end A006632

/-! ## A006632.P11269296985767802014

`A391381(n+1)-A002293(n+1)`
-/

namespace A006632.P11269296985767802014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391381 (n + 1) - A002293 (n + 1)

end

end A006632.P11269296985767802014

namespace A006632

/-- `A391381(n+1)-A002293(n+1)` -/
def P11269296985767802014.Spec : Prop :=
  ∀ n, P11269296985767802014.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P4653573536191764917

`(A024496(n+1)-A000260(n))/2`
-/

namespace A006632.P4653573536191764917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024496 (n + 1) - A000260 n : ℚ) / 2

end

end A006632.P4653573536191764917

namespace A006632

/-- `(A024496(n+1)-A000260(n))/2` -/
def P4653573536191764917.Spec : Prop :=
  ∀ n, P4653573536191764917.a n = (A006632 (n + 1) : ℚ)

end A006632

/-! ## A006632.P2023354493939451060

`A000260(n)*A038722(A038722(2*n+1))`
-/

namespace A006632.P2023354493939451060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A038722 (A038722 (2 * n + 1)).toNat

end

end A006632.P2023354493939451060

namespace A006632

/-- `A000260(n)*A038722(A038722(2*n+1))` -/
def P2023354493939451060.Spec : Prop :=
  ∀ n, P2023354493939451060.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P14373126492451068766

`A000260(n)*A131717(A131717(2*n+1))`
-/

namespace A006632.P14373126492451068766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A131717 (A131717 (2 * n + 1)).toNat

end

end A006632.P14373126492451068766

namespace A006632

/-- `A000260(n)*A131717(A131717(2*n+1))` -/
def P14373126492451068766.Spec : Prop :=
  ∀ n, P14373126492451068766.a n = A006632 (n + 1)

end A006632

/-! ## A006632.P2050299248639611041

`A337291(n+1)/4`
-/

namespace A006632.P2050299248639611041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337291 (n + 1) : ℚ) / 4

end

end A006632.P2050299248639611041

namespace A006632

/-- `A337291(n+1)/4` -/
def P2050299248639611041.Spec : Prop :=
  ∀ n, P2050299248639611041.a n = (A006632 (n + 1) : ℚ)

end A006632

/-! ## A006632.P15869249669850975153

`A257633(n)/(n+1)`
-/

namespace A006632.P15869249669850975153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257633 n : ℚ) / (n + 1 : ℚ)

end

end A006632.P15869249669850975153

namespace A006632

/-- `A257633(n)/(n+1)` -/
def P15869249669850975153.Spec : Prop :=
  ∀ n, P15869249669850975153.a n = (A006632 (n + 1) : ℚ)

end A006632

/-! ## A006632.P2742548168953462598

`A026005(n)-n²*A000260(n)`
-/

namespace A006632.P2742548168953462598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026005 n - (n ^ 2 : ℤ) * A000260 n

end

end A006632.P2742548168953462598

namespace A006632

/-- `A026005(n)-n²*A000260(n)` -/
def P2742548168953462598.Spec : Prop :=
  ∀ n, P2742548168953462598.a n = A006632 (n + 1)

end A006632

/-!
# A006633: Expansion of hypergeom([3/2, 7/4, 2, 9/4], [7/3, 8/3, 3], (256/27)*x).

The programs for A006633, the canonical program `A006633.P1750214595423413622` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006633 has offset 0).

The definition of A006633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006633.P1750214595423413622

`(n+1)*A000260(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006633

/-- `(n+1)*A000260(n+1)` -/
def P1750214595423413622.Spec : Prop :=
  ∀ n, P1750214595423413622.a n = A006633 n

theorem P1750214595423413622.correct : P1750214595423413622.Spec := by
  intro n
  simp only [A006633]

end A006633

/-! ## A006633.P15373769751522747936

`A339350(∑[n+3])`
-/

namespace A006633.P15373769751522747936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006633.P15373769751522747936

namespace A006633

/-- `A339350(∑[n+3])` -/
def P15373769751522747936.Spec : Prop :=
  ∀ n, P15373769751522747936.a n = A006633 n

end A006633

/-! ## A006633.P15154470015416552419

`(n+1)*A146305(∑[n+1])`
-/

namespace A006633.P15154470015416552419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006633.P15154470015416552419

namespace A006633

/-- `(n+1)*A146305(∑[n+1])` -/
def P15154470015416552419.Spec : Prop :=
  ∀ n, P15154470015416552419.a n = A006633 n

end A006633

/-! ## A006633.P12518448678162137015

`ratio[A000260(n)]*A069271(n)`
-/

namespace A006633.P12518448678162137015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A069271 n : ℚ)

end

end A006633.P12518448678162137015

namespace A006633

/-- `ratio[A000260(n)]*A069271(n)` -/
def P12518448678162137015.Spec : Prop :=
  ∀ n, P12518448678162137015.a n = (A006633 n : ℚ)

end A006633

/-! ## A006633.P3743955365395755912

`A069271(n+1)-A000260(n+1)`
-/

namespace A006633.P3743955365395755912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 1) - A000260 (n + 1)

end

end A006633.P3743955365395755912

namespace A006633

/-- `A069271(n+1)-A000260(n+1)` -/
def P3743955365395755912.Spec : Prop :=
  ∀ n, P3743955365395755912.a n = A006633 n

end A006633

/-! ## A006633.P13658813038265937500

`A006632(n+2)-A069271(n+1)`
-/

namespace A006633.P13658813038265937500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 2) - A069271 (n + 1)

end

end A006633.P13658813038265937500

namespace A006633

/-- `A006632(n+2)-A069271(n+1)` -/
def P13658813038265937500.Spec : Prop :=
  ∀ n, P13658813038265937500.a n = A006633 n

end A006633

/-! ## A006633.P4862928476544813303

`(A006632(n+2)-A000260(n+1))/2`
-/

namespace A006633.P4862928476544813303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006632 (n + 2) - A000260 (n + 1) : ℚ) / 2

end

end A006633.P4862928476544813303

namespace A006633

/-- `(A006632(n+2)-A000260(n+1))/2` -/
def P4862928476544813303.Spec : Prop :=
  ∀ n, P4862928476544813303.a n = (A006633 n : ℚ)

end A006633

/-! ## A006633.P11244895201860101198

`A112385(n+2)/2-A069271(n+1)`
-/

namespace A006633.P11244895201860101198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112385 (n + 2) : ℚ) / 2 - (A069271 (n + 1) : ℚ)

end

end A006633.P11244895201860101198

namespace A006633

/-- `A112385(n+2)/2-A069271(n+1)` -/
def P11244895201860101198.Spec : Prop :=
  ∀ n, P11244895201860101198.a n = (A006633 n : ℚ)

end A006633

/-! ## A006633.P10656450332412207563

`A188108(A167614(n+1))`
-/

namespace A006633.P10656450332412207563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A167614 (n + 1)).toNat

end

end A006633.P10656450332412207563

namespace A006633

/-- `A188108(A167614(n+1))` -/
def P10656450332412207563.Spec : Prop :=
  ∀ n, P10656450332412207563.a n = A006633 n

end A006633

/-! ## A006633.P16183813286162632026

`A069270(A055999(n+3))`
-/

namespace A006633.P16183813286162632026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055999 (n + 3)).toNat

end

end A006633.P16183813286162632026

namespace A006633

/-- `A069270(A055999(n+3))` -/
def P16183813286162632026.Spec : Prop :=
  ∀ n, P16183813286162632026.a n = A006633 n

end A006633

/-! ## A006633.P6283164315579450072

`A069270(Δ[A023545(n+2)]-2)`
-/

namespace A006633.P6283164315579450072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (f1 (n + 1) - f1 n - 2).toNat

end

end A006633.P6283164315579450072

namespace A006633

/-- `A069270(Δ[A023545(n+2)]-2)` -/
def P6283164315579450072.Spec : Prop :=
  ∀ n, P6283164315579450072.a n = A006633 n

end A006633

/-! ## A006633.P15386736133342411156

`A069270(A055998(n+3)+n+3)`
-/

namespace A006633.P15386736133342411156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055998 (n + 3) + (n + 3 : ℤ)).toNat

end

end A006633.P15386736133342411156

namespace A006633

/-- `A069270(A055998(n+3)+n+3)` -/
def P15386736133342411156.Spec : Prop :=
  ∀ n, P15386736133342411156.a n = A006633 n

end A006633

/-! ## A006633.P16751153991430164217

`A069270(A069270(A055998(n+2)+5))`
-/

namespace A006633.P16751153991430164217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A069270 (A055998 (n + 2) + 5).toNat).toNat

end

end A006633.P16751153991430164217

namespace A006633

/-- `A069270(A069270(A055998(n+2)+5))` -/
def P16751153991430164217.Spec : Prop :=
  ∀ n, P16751153991430164217.a n = A006633 n

end A006633

/-! ## A006633.P184169395671575410

`A069270(A209274(A056115(n+2)-2*n))`
-/

namespace A006633.P184169395671575410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A209274 (A056115 (n + 2) - (2 * n : ℤ)).toNat).toNat

end

end A006633.P184169395671575410

namespace A006633

/-- `A069270(A209274(A056115(n+2)-2*n))` -/
def P184169395671575410.Spec : Prop :=
  ∀ n, P184169395671575410.a n = A006633 n

end A006633

/-!
# A006634: a(n) = 3*binomial(4*n+8, n)/(n+3).

The programs for A006634, the canonical program `A006634.P16062171049094468116` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006634 has offset 0).

The definition of A006634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006634.P16062171049094468116

`A002293(n+2)-A000260(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006634

/-- `A002293(n+2)-A000260(n+2)` -/
def P16062171049094468116.Spec : Prop :=
  ∀ n, P16062171049094468116.a n = A006634 n

theorem P16062171049094468116.correct : P16062171049094468116.Spec := by
  intro n
  simp only [A006634]

end A006634

/-! ## A006634.P9056244812285247228

`A006633(n+1)-A196678(n+1)`
-/

namespace A006634.P9056244812285247228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006633 (n + 1) - A196678 (n + 1)

end

end A006634.P9056244812285247228

namespace A006634

/-- `A006633(n+1)-A196678(n+1)` -/
def P9056244812285247228.Spec : Prop :=
  ∀ n, P9056244812285247228.a n = A006634 n

end A006634

/-! ## A006634.P12310868853752587524

`A069271(n+2)-A027836(n+2)`
-/

namespace A006634.P12310868853752587524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 2) - A027836 (n + 2)

end

end A006634.P12310868853752587524

namespace A006634

/-- `A069271(n+2)-A027836(n+2)` -/
def P12310868853752587524.Spec : Prop :=
  ∀ n, P12310868853752587524.a n = A006634 n

end A006634

/-! ## A006634.P5501130775526787103

`A007228(n+2)%A069271(n+2)`
-/

namespace A006634.P5501130775526787103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007228 (n + 2)) (A069271 (n + 2))

end

end A006634.P5501130775526787103

namespace A006634

/-- `A007228(n+2)%A069271(n+2)` -/
def P5501130775526787103.Spec : Prop :=
  ∀ n, P5501130775526787103.a n = A006634 n

end A006634

/-! ## A006634.P9878907206719070003

`3/(n+3)*A004332(n+2)`
-/

namespace A006634.P9878907206719070003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A004332 (n + 2) : ℚ)

end

end A006634.P9878907206719070003

namespace A006634

/-- `3/(n+3)*A004332(n+2)` -/
def P9878907206719070003.Spec : Prop :=
  ∀ n, P9878907206719070003.a n = (A006634 n : ℚ)

end A006634

/-! ## A006634.P17963203895068253172

`A069270(eq[8, A025581(n)])`
-/

namespace A006634.P17963203895068253172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006634.P17963203895068253172

namespace A006634

/-- `A069270(eq[8, A025581(n)])` -/
def P17963203895068253172.Spec : Prop :=
  ∀ n, P17963203895068253172.a n = A006634 n

end A006634

/-! ## A006634.P78358832637812657

`A069270(eq[9, A004736(n+1)])`
-/

namespace A006634.P78358832637812657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006634.P78358832637812657

namespace A006634

/-- `A069270(eq[9, A004736(n+1)])` -/
def P78358832637812657.Spec : Prop :=
  ∀ n, P78358832637812657.a n = A006634 n

end A006634

/-!
# A006635: a(n) = 4*binomial(4*n+11, n)/(n+4).

The programs for A006635, the canonical program `A006635.P15748520674391765223` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006635 has offset 0).

The definition of A006635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006635.P15748520674391765223

`A006634(n+1)-A233666(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A006635

/-- `A006634(n+1)-A233666(n+1)` -/
def P15748520674391765223.Spec : Prop :=
  ∀ n, P15748520674391765223.a n = A006635 n

theorem P15748520674391765223.correct : P15748520674391765223.Spec := by
  intro n
  simp only [A006635]

end A006635

/-! ## A006635.P12583840602278089918

`3/(n+3)*A004333(n+3)`
-/

namespace A006635.P12583840602278089918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A004333 (n + 3) : ℚ)

end

end A006635.P12583840602278089918

namespace A006635

/-- `3/(n+3)*A004333(n+3)` -/
def P12583840602278089918.Spec : Prop :=
  ∀ n, P12583840602278089918.a n = (A006635 n : ℚ)

end A006635

/-! ## A006635.P6824036581006766091

`A069270(eq[11, A025581(n)])`
-/

namespace A006635.P6824036581006766091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006635.P6824036581006766091

namespace A006635

/-- `A069270(eq[11, A025581(n)])` -/
def P6824036581006766091.Spec : Prop :=
  ∀ n, P6824036581006766091.a n = A006635 n

end A006635

/-! ## A006635.P1512778630909731829

`A069270(eq[12, A193739(n)])`
-/

namespace A006635.P1512778630909731829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006635.P1512778630909731829

namespace A006635

/-- `A069270(eq[12, A193739(n)])` -/
def P1512778630909731829.Spec : Prop :=
  ∀ n, P1512778630909731829.a n = A006635 n

end A006635

/-! ## A006635.P16466374403682239698

`A069270(eq[12, A004736(n+1)])`
-/

namespace A006635.P16466374403682239698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006635.P16466374403682239698

namespace A006635

/-- `A069270(eq[12, A004736(n+1)])` -/
def P16466374403682239698.Spec : Prop :=
  ∀ n, P16466374403682239698.a n = A006635 n

end A006635

/-!
# A006636: a(n) = (n + 1)*(n + 2)*(n + 4)*(n + 8)*(n + 15)/120.

The programs for A006636, the canonical program `A006636.P2898077070325318121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006636 has offset 0).

The definition of A006636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006636.P2898077070325318121

`(n+1)*(n+2)*(n+4)*(n+8)*(n+15)/120`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006636

/-- `(n+1)*(n+2)*(n+4)*(n+8)*(n+15)/120` -/
def P2898077070325318121.Spec : Prop :=
  ∀ n, P2898077070325318121.a n = (A006636 n : ℚ)

end A006636

/-! ## A006636.P8164492711822126624

`∑[A000439(n+1)-(n+1)]`
-/

namespace A006636.P8164492711822126624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000439 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006636.P8164492711822126624

namespace A006636

/-- `∑[A000439(n+1)-(n+1)]` -/
def P8164492711822126624.Spec : Prop :=
  ∀ n, P8164492711822126624.a n = A006636 n

end A006636

/-! ## A006636.P10680829797502558273

`A139798(n+1)-A005582(n)`
-/

namespace A006636.P10680829797502558273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139798 (n + 1) - A005582 n

end

end A006636.P10680829797502558273

namespace A006636

/-- `A139798(n+1)-A005582(n)` -/
def P10680829797502558273.Spec : Prop :=
  ∀ n, P10680829797502558273.a n = A006636 n

end A006636

/-! ## A006636.P15789993922747508258

`A005718(n)+∑[A024191(n+1)]`
-/

namespace A006636.P15789993922747508258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006636.P15789993922747508258

namespace A006636

/-- `A005718(n)+∑[A024191(n+1)]` -/
def P15789993922747508258.Spec : Prop :=
  ∀ n, P15789993922747508258.a n = A006636 n

end A006636

/-! ## A006636.P1829972227342442779

`A006504(n+1)+A000574(n+3)`
-/

namespace A006636.P1829972227342442779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + A000574 (n + 3)

end

end A006636.P1829972227342442779

namespace A006636

/-- `A006504(n+1)+A000574(n+3)` -/
def P1829972227342442779.Spec : Prop :=
  ∀ n, P1829972227342442779.a n = A006636 n

end A006636

/-! ## A006636.P15803092741244417814

`A005719(n+2)+2*A005718(n)`
-/

namespace A006636.P15803092741244417814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005719 (n + 2) + 2 * A005718 n

end

end A006636.P15803092741244417814

namespace A006636

/-- `A005719(n+2)+2*A005718(n)` -/
def P15803092741244417814.Spec : Prop :=
  ∀ n, P15803092741244417814.a n = A006636 n

end A006636

/-! ## A006636.P578552044257625975

`∑[∑[A006416(n+3)]]`
-/

namespace A006636.P578552044257625975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006636.P578552044257625975

namespace A006636

/-- `∑[∑[A006416(n+3)]]` -/
def P578552044257625975.Spec : Prop :=
  ∀ n, P578552044257625975.a n = A006636 n

end A006636

/-! ## A006636.P13289514863237757500

`A181289(A167614(n+2))`
-/

namespace A006636.P13289514863237757500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181289 (A167614 (n + 2)).toNat

end

end A006636.P13289514863237757500

namespace A006636

/-- `A181289(A167614(n+2))` -/
def P13289514863237757500.Spec : Prop :=
  ∀ n, P13289514863237757500.a n = A006636 n

end A006636

/-!
# A006637: Expansion of (2 - x)^4/(1 - x)^8.

The programs for A006637, the canonical program `A006637.P3178544757393570640` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006637 has offset 0).

The definition of A006637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006637.P3178544757393570640

`∑[A006636(n)+∑[A006636(n)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006637

/-- `∑[A006636(n)+∑[A006636(n)]]` -/
def P3178544757393570640.Spec : Prop :=
  ∀ n, P3178544757393570640.a n = A006637 n

theorem P3178544757393570640.correct : P3178544757393570640.Spec := by
  intro n
  simp only [A006637]

end A006637

/-! ## A006637.P10331430796111899416

`∑[∑[A062110(A055999(n+4))]]`
-/

namespace A006637.P10331430796111899416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A055999 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P10331430796111899416

namespace A006637

/-- `∑[∑[A062110(A055999(n+4))]]` -/
def P10331430796111899416.Spec : Prop :=
  ∀ n, P10331430796111899416.a n = A006637 n

end A006637

/-! ## A006637.P9474913794978975265

`∑[∑[A105306(A046691(n+4)-1)]]`
-/

namespace A006637.P9474913794978975265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A046691 (n + 4) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P9474913794978975265

namespace A006637

/-- `∑[∑[A105306(A046691(n+4)-1)]]` -/
def P9474913794978975265.Spec : Prop :=
  ∀ n, P9474913794978975265.a n = A006637 n

end A006637

/-! ## A006637.P4909277110279322302

`∑[∑[A105306(A000217(n+6)-5)]]`
-/

namespace A006637.P4909277110279322302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A000217 (n + 6) - 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P4909277110279322302

namespace A006637

/-- `∑[∑[A105306(A000217(n+6)-5)]]` -/
def P4909277110279322302.Spec : Prop :=
  ∀ n, P4909277110279322302.a n = A006637 n

end A006637

/-! ## A006637.P2736713835111684998

`∑[∑[A105306(A000124(n+6)-6)]]`
-/

namespace A006637.P2736713835111684998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A000124 (n + 6) - 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P2736713835111684998

namespace A006637

/-- `∑[∑[A105306(A000124(n+6)-6)]]` -/
def P2736713835111684998.Spec : Prop :=
  ∀ n, P2736713835111684998.a n = A006637 n

end A006637

/-! ## A006637.P14150616488926789249

`∑[∑[A062110(A000124(n+7)-7)]]`
-/

namespace A006637.P14150616488926789249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000124 (n + 7) - 7).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P14150616488926789249

namespace A006637

/-- `∑[∑[A062110(A000124(n+7)-7)]]` -/
def P14150616488926789249.Spec : Prop :=
  ∀ n, P14150616488926789249.a n = A006637 n

end A006637

/-! ## A006637.P5830906095630729524

`∑[∑[A210554(A000124(n+4)+4)]]`
-/

namespace A006637.P5830906095630729524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210554 (A000124 (n + 4) + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P5830906095630729524

namespace A006637

/-- `∑[∑[A210554(A000124(n+4)+4)]]` -/
def P5830906095630729524.Spec : Prop :=
  ∀ n, P5830906095630729524.a n = A006637 n

end A006637

/-! ## A006637.P17519312897654831117

`∑[∑[A160232(A000217(n+5)+6)]]`
-/

namespace A006637.P17519312897654831117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A000217 (n + 5) + 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P17519312897654831117

namespace A006637

/-- `∑[∑[A160232(A000217(n+5)+6)]]` -/
def P17519312897654831117.Spec : Prop :=
  ∀ n, P17519312897654831117.a n = A006637 n

end A006637

/-!
# A006638: Restricted postage stamp problem with n denominations and 2 stamps.

The programs for A006638, there is no canonical definition to state claims against.
-/

/-! ## A006638.P11896217756574638312

`2*A302648(n+2)`
-/

namespace A006638.P11896217756574638312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302648 (n + 2)

end

end A006638.P11896217756574638312

/-! ## A006638.P1769060392303665536

`A004277(A302648(n+2))`
-/

namespace A006638.P1769060392303665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A302648 (n + 2)).toNat

end

end A006638.P1769060392303665536

/-! ## A006638.P5335992273364843800

`Δ[A005408(∑[A302648(n+1)])]`
-/

namespace A006638.P5335992273364843800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006638.P5335992273364843800

/-! ## A006638.P9232572921663086631

`Δ[A005843(∑[A302648(n+1)])]`
-/

namespace A006638.P9232572921663086631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006638.P9232572921663086631

/-! ## A006638.P105141145750298357

`∑[A055960(Δ[A302648(n+1)])]`
-/

namespace A006638.P105141145750298357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006638.P105141145750298357

/-!
# A006641: Class number of forms with discriminant -A003657(n), or equivalently class number of imaginary quadratic field with discriminant -A003657(n).

The programs for A006641, there is no canonical definition to state claims against.
-/

/-! ## A006641.P504555434078203074

`A003636(n+3)*A003640(n+1)`
-/

namespace A006641.P504555434078203074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003636 (n + 3) * A003640 (n + 1)

end

end A006641.P504555434078203074

/-! ## A006641.P17616344461463870383

`A058305(A003657(n+1))`
-/

namespace A006641.P17616344461463870383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A003657 (n + 1)).toNat

end

end A006641.P17616344461463870383

/-! ## A006641.P11197366065039488069

`A191410(2-4/2+A003657(n+1))`
-/

namespace A006641.P11197366065039488069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (SequenceMachineLib.roundAway (2 - (4 : ℚ) / 2 + (A003657 (n + 1) : ℚ))).toNat

end

end A006641.P11197366065039488069

/-! ## A006641.P5466427635050155786

`A191410(A003657(2*(n+1)-(n+1)))`
-/

namespace A006641.P5466427635050155786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A003657 (2 * (n + 1) - (n + 1))).toNat

end

end A006641.P5466427635050155786

/-! ## A006641.P14804429865492532941

`A003636(n+3)*A007875(A003657(n+1))`
-/

namespace A006641.P14804429865492532941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003636 (n + 3) * A007875 (A003657 (n + 1)).toNat

end

end A006641.P14804429865492532941

/-! ## A006641.P9605714191916994897

`A191410(A003657(n+1)%A003657(n+2))`
-/

namespace A006641.P9605714191916994897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (Int.tmod (A003657 (n + 1)) (A003657 (n + 2))).toNat

end

end A006641.P9605714191916994897

/-! ## A006641.P3387383239138777772

`A202084(A003657(n+1)-char[1])`
-/

namespace A006641.P3387383239138777772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A003657 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A006641.P3387383239138777772

/-! ## A006641.P12035959248616763173

`A202084(2*A003657(n+1)-A003657(n+1))`
-/

namespace A006641.P12035959248616763173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (2 * A003657 (n + 1) - A003657 (n + 1)).toNat

end

end A006641.P12035959248616763173

/-! ## A006641.P16247138299454896350

`A191410(eq[A191410(n+1), A202084(n+1)]+1)`
-/

namespace A006641.P16247138299454896350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A006641.P16247138299454896350

/-! ## A006641.P1236636888116614424

`A202084(A003657(n+1)-A233583(n+1)+n)`
-/

namespace A006641.P1236636888116614424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A003657 (n + 1) - A233583 (n + 1) + (n : ℤ)).toNat

end

end A006641.P1236636888116614424

/-! ## A006641.P445084045521845546

`A202084(A003657(n+1))*A202084(A202084(n+1)²)`
-/

namespace A006641.P445084045521845546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (A003657 (n + 1)).toNat * A202084 (A202084 (n + 1) ^ 2).toNat

end

end A006641.P445084045521845546

/-!
# A006642: Class number of quadratic field with discriminant -4n+1.

The programs for A006642, there is no canonical definition to state claims against.
-/

/-! ## A006642.P9257275551826022517

`A003637(n+1)*A003641(n+1)`
-/

namespace A006642.P9257275551826022517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003637 (n + 1) * A003641 (n + 1)

end

end A006642.P9257275551826022517

/-! ## A006642.P9335867706257417434

`A014599(ceil(A039957(n+1)/4))`
-/

namespace A006642.P9335867706257417434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 ⌈(A039957 (n + 1) : ℚ) / 4⌉.toNat

end

end A006642.P9335867706257417434

/-! ## A006642.P7779488663697677424

`A058305(A039957(n+1))`
-/

namespace A006642.P7779488663697677424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A039957 (n + 1)).toNat

end

end A006642.P7779488663697677424

/-! ## A006642.P4076992882856291815

`A191410(∏{p}[A039957(n+1), #])`
-/

namespace A006642.P4076992882856291815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A006642.P4076992882856291815

/-! ## A006642.P12278899550001284891

`A058305(record[A099984(2*(n+1))])`
-/

namespace A006642.P12278899550001284891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006642.P12278899550001284891

/-! ## A006642.P15334284289158460146

`A058305(record[A039957(n%a(n-1))])` with `a(0)=4`
-/

namespace A006642.P15334284289158460146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A039957 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006642.P15334284289158460146

/-! ## A006642.P10647658673366561857

`A058305(record[A007947(A004767(n))])`
-/

namespace A006642.P10647658673366561857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006642.P10647658673366561857

/-!
# A006643: Class number of quadratic field with discriminant -4n as n runs through A089269: squarefree numbers congruent to 1 or 2 mod 4.

The programs for A006643, there is no canonical definition to state claims against.
-/

/-! ## A006643.P2335275167810766009

`A003638(n+1)*A003642(n+1)`
-/

namespace A006643.P2335275167810766009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003638 (n + 1) * A003642 (n + 1)

end

end A006643.P2335275167810766009

/-! ## A006643.P8335162172172706027

`A000003(A089269(n+1))`
-/

namespace A006643.P8335162172172706027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A089269 (n + 1)).toNat

end

end A006643.P8335162172172706027

/-! ## A006643.P10063477987329775250

`A000003(A191483(n+1)/4)`
-/

namespace A006643.P10063477987329775250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (SequenceMachineLib.roundAway ((A191483 (n + 1) : ℚ) / 4)).toNat

end

end A006643.P10063477987329775250

/-! ## A006643.P8947141546468205362

`A006641(eq[2, gcd(2, A003657(n+1))]+1)`
-/

namespace A006643.P8947141546468205362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003657 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A006643.P8947141546468205362

/-! ## A006643.P15699410800591130098

`A008619(A000003(A191483(n+1))-1)`
-/

namespace A006643.P15699410800591130098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000003 (A191483 (n + 1)).toNat - 1).toNat

end

end A006643.P15699410800591130098

/-! ## A006643.P1855127613396578440

`A058305(A191483(n+1))`
-/

namespace A006643.P1855127613396578440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A191483 (n + 1)).toNat

end

end A006643.P1855127613396578440

/-!
# A006644: Indices of records in Landau's function A000793.

The programs for A006644, there is no canonical definition to state claims against.
-/

/-! ## A006644.P2660197447487824197

`∑[A395744(n+1)]-A395744(n+1)`
-/

namespace A006644.P2660197447487824197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A395744 (n + 1)

end

end A006644.P2660197447487824197

/-! ## A006644.P15460822083984542529

`eq[A000793(n), A051703(n)]`
-/

namespace A006644.P15460822083984542529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006644.P15460822083984542529

/-! ## A006644.P508961491226913611

`lt[A000793(n), A051703(n)+A000188(n+1)]`
-/

namespace A006644.P508961491226913611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n + A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A006644.P508961491226913611

/-! ## A006644.P9253743808048546361

`eq[A051703(n)*A225558(n), A003418(n)]`
-/

namespace A006644.P9253743808048546361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n * A225558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006644.P9253743808048546361

/-! ## A006644.P17311292448914862093

`eq[A051703(n), A074103(n)]`
-/

namespace A006644.P17311292448914862093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006644.P17311292448914862093

/-!
# A006645: Self-convolution of Pell numbers (A000129).

The programs for A006645, the canonical program `A006645.P15429359972966869975` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006645 has offset 0).

The definition of A006645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006645.P15429359972966869975

`∑[Δ[A291142(n)]-A001333(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006645

/-- `∑[Δ[A291142(n)]-A001333(n)]` -/
def P15429359972966869975.Spec : Prop :=
  ∀ n, P15429359972966869975.a n = A006645 n

theorem P15429359972966869975.correct : P15429359972966869975.Spec := by
  intro n
  simp only [A006645]

end A006645

/-! ## A006645.P10175734403932597881

`A291142(n+1)-∑[A001333(n)]`
-/

namespace A006645.P10175734403932597881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006645.P10175734403932597881

namespace A006645

/-- `A291142(n+1)-∑[A001333(n)]` -/
def P10175734403932597881.Spec : Prop :=
  ∀ n, P10175734403932597881.a n = A006645 n

end A006645

/-! ## A006645.P15148059864789366738

`A291142(n+1)-A000129(n+1)`
-/

namespace A006645.P15148059864789366738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 1) - A000129 (n + 1)

end

end A006645.P15148059864789366738

namespace A006645

/-- `A291142(n+1)-A000129(n+1)` -/
def P15148059864789366738.Spec : Prop :=
  ∀ n, P15148059864789366738.a n = A006645 n

end A006645

/-! ## A006645.P17260377573655717530

`A291142(n+1)-A052542(n+1)/2`
-/

namespace A006645.P17260377573655717530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291142 (n + 1) : ℚ) - (A052542 (n + 1) : ℚ) / 2

end

end A006645.P17260377573655717530

namespace A006645

/-- `A291142(n+1)-A052542(n+1)/2` -/
def P17260377573655717530.Spec : Prop :=
  ∀ n, P17260377573655717530.a n = (A006645 n : ℚ)

end A006645

/-! ## A006645.P9099682430492000661

`∑[abs(n*A176981(n))]/2`
-/

namespace A006645.P9099682430492000661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A176981 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A006645.P9099682430492000661

namespace A006645

/-- `∑[abs(n*A176981(n))]/2` -/
def P9099682430492000661.Spec : Prop :=
  ∀ n, P9099682430492000661.a n = (A006645 n : ℚ)

end A006645

/-! ## A006645.P12025258737650438224

`(A119915(n)-A000129(n))/2`
-/

namespace A006645.P12025258737650438224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119915 n - A000129 n : ℚ) / 2

end

end A006645.P12025258737650438224

namespace A006645

/-- `(A119915(n)-A000129(n))/2` -/
def P12025258737650438224.Spec : Prop :=
  ∀ n, P12025258737650438224.a n = (A006645 n : ℚ)

end A006645

/-! ## A006645.P14076581780922431322

`A026937(n)-A054447(n)`
-/

namespace A006645.P14076581780922431322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A054447 n

end

end A006645.P14076581780922431322

namespace A006645

/-- `A026937(n)-A054447(n)` -/
def P14076581780922431322.Spec : Prop :=
  ∀ n, P14076581780922431322.a n = A006645 n

end A006645

/-! ## A006645.P13531603257187522404

`A026937(A028310(n))%A054447(n)`
-/

namespace A006645.P13531603257187522404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026937 (A028310 n).toNat) (A054447 n)

end

end A006645.P13531603257187522404

namespace A006645

/-- `A026937(A028310(n))%A054447(n)` -/
def P13531603257187522404.Spec : Prop :=
  ∀ n, P13531603257187522404.a n = A006645 n

end A006645

/-! ## A006645.P8899258187801908695

`A026937(n)%(A054447(n)%A292327(n))`
-/

namespace A006645.P8899258187801908695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026937 n) (Int.tmod (A054447 n) (A292327 n))

end

end A006645.P8899258187801908695

namespace A006645

/-- `A026937(n)%(A054447(n)%A292327(n))` -/
def P8899258187801908695.Spec : Prop :=
  ∀ n, P8899258187801908695.a n = A006645 n

end A006645

/-! ## A006645.P4698091525208455695

`A026937(n)-A291264(n)/4`
-/

namespace A006645.P4698091525208455695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026937 n : ℚ) - (A291264 n : ℚ) / 4

end

end A006645.P4698091525208455695

namespace A006645

/-- `A026937(n)-A291264(n)/4` -/
def P4698091525208455695.Spec : Prop :=
  ∀ n, P4698091525208455695.a n = (A006645 n : ℚ)

end A006645

/-! ## A006645.P1839690604283449688

`A261056(n)-(A119915(n+1)+A119915(n+1))`
-/

namespace A006645.P1839690604283449688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261056 n - (A119915 (n + 1) + A119915 (n + 1))

end

end A006645.P1839690604283449688

namespace A006645

/-- `A261056(n)-(A119915(n+1)+A119915(n+1))` -/
def P1839690604283449688.Spec : Prop :=
  ∀ n, P1839690604283449688.a n = A006645 n

end A006645

/-!
# A006646: Exponential self-convolution of Pell numbers.

The programs for A006646, the canonical program `A006646.P8169105596413989403` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006646 has offset 0).

The definition of A006646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006646.P8169105596413989403

`2^(n-3)*(A002203(n)-2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006646

/-- `2^(n-3)*(A002203(n)-2)` -/
def P8169105596413989403.Spec : Prop :=
  ∀ n, P8169105596413989403.a n = (A006646 n : ℚ)

end A006646

/-! ## A006646.P4477036170185137060

`((2+sqrt(8))^n+(2-sqrt(8))^n-2^(n+1))/8`
-/

namespace A006646.P4477036170185137060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (8 : ℝ)) ^ n + (2 - Real.sqrt (8 : ℝ)) ^ n - (2 ^ (n + 1) : ℝ)) / 8

end

end A006646.P4477036170185137060

namespace A006646

/-- `((2+sqrt(8))^n+(2-sqrt(8))^n-2^(n+1))/8` -/
def P4477036170185137060.Spec : Prop :=
  ∀ n, P4477036170185137060.a n = (A006646 n : ℝ)

end A006646

/-! ## A006646.P11906252296983009465

`2*A006668(n)`
-/

namespace A006646.P11906252296983009465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006668 n

end

end A006646.P11906252296983009465

namespace A006646

/-- `2*A006668(n)` -/
def P11906252296983009465.Spec : Prop :=
  ∀ n, P11906252296983009465.a n = A006646 n

end A006646

/-! ## A006646.P4140973479254448189

`2^(n-2)*A293004(n)`
-/

namespace A006646.P4140973479254448189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A293004 n : ℚ)

end

end A006646.P4140973479254448189

namespace A006646

/-- `2^(n-2)*A293004(n)` -/
def P4140973479254448189.Spec : Prop :=
  ∀ n, P4140973479254448189.a n = (A006646 n : ℚ)

end A006646

/-! ## A006646.P7910313501572097026

`(A001333(n)-1)*2^(n-2)`
-/

namespace A006646.P7910313501572097026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A006646.P7910313501572097026

namespace A006646

/-- `(A001333(n)-1)*2^(n-2)` -/
def P7910313501572097026.Spec : Prop :=
  ∀ n, P7910313501572097026.a n = (A006646 n : ℚ)

end A006646

/-! ## A006646.P5436679169868185421

`A034008(n)*A265278(n)`
-/

namespace A006646.P5436679169868185421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A265278 n

end

end A006646.P5436679169868185421

namespace A006646

/-- `A034008(n)*A265278(n)` -/
def P5436679169868185421.Spec : Prop :=
  ∀ n, P5436679169868185421.a n = A006646 n

end A006646

/-! ## A006646.P7045214187874971668

`(A171842(n)-1)*A011782(n)`
-/

namespace A006646.P7045214187874971668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171842 n - 1) * A011782 n

end

end A006646.P7045214187874971668

namespace A006646

/-- `(A171842(n)-1)*A011782(n)` -/
def P7045214187874971668.Spec : Prop :=
  ∀ n, P7045214187874971668.a n = A006646 n

end A006646

/-! ## A006646.P17497541807933374728

`(A171842(n)-1)*A131577(n)`
-/

namespace A006646.P17497541807933374728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171842 n - 1) * A131577 n

end

end A006646.P17497541807933374728

namespace A006646

/-- `(A171842(n)-1)*A131577(n)` -/
def P17497541807933374728.Spec : Prop :=
  ∀ n, P17497541807933374728.a n = A006646 n

end A006646

/-! ## A006646.P5603022618875075132

`floor(A001333(n)/2)*A011782(n)`
-/

namespace A006646.P5603022618875075132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001333 n : ℚ) / 2⌋ * A011782 n

end

end A006646.P5603022618875075132

namespace A006646

/-- `floor(A001333(n)/2)*A011782(n)` -/
def P5603022618875075132.Spec : Prop :=
  ∀ n, P5603022618875075132.a n = A006646 n

end A006646

/-! ## A006646.P8262652338542926363

`A131577(n)*A247311(A016789(n))`
-/

namespace A006646.P8262652338542926363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A247311 (A016789 n).toNat

end

end A006646.P8262652338542926363

namespace A006646

/-- `A131577(n)*A247311(A016789(n))` -/
def P8262652338542926363.Spec : Prop :=
  ∀ n, P8262652338542926363.a n = A006646 n

end A006646

/-! ## A006646.P6266846511350250879

`A006668(A005843(n)/2)+A006668(n)`
-/

namespace A006646.P6266846511350250879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006668 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A006668 n

end

end A006646.P6266846511350250879

namespace A006646

/-- `A006668(A005843(n)/2)+A006668(n)` -/
def P6266846511350250879.Spec : Prop :=
  ∀ n, P6266846511350250879.a n = A006646 n

end A006646

/-! ## A006646.P3539093882167198917

`A006668(A005843(n)-n)+A006668(n)`
-/

namespace A006646.P3539093882167198917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006668 (A005843 n - (n : ℤ)).toNat + A006668 n

end

end A006646.P3539093882167198917

namespace A006646

/-- `A006668(A005843(n)-n)+A006668(n)` -/
def P3539093882167198917.Spec : Prop :=
  ∀ n, P3539093882167198917.a n = A006646 n

end A006646

/-! ## A006646.P4607529807289149849

`(∑[A000129(n)]-A000129(n))*A011782(n)`
-/

namespace A006646.P4607529807289149849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A000129 n) * A011782 n

end

end A006646.P4607529807289149849

namespace A006646

/-- `(∑[A000129(n)]-A000129(n))*A011782(n)` -/
def P4607529807289149849.Spec : Prop :=
  ∀ n, P4607529807289149849.a n = A006646 n

end A006646

/-!
# A006647: Number of graphs with n nodes, n-2 edges and no isolated vertices.

The programs for A006647, there is no canonical definition to state claims against.
-/

/-! ## A006647.P5041374273851939815

`A001430(n+4)-A001433(n+3)`
-/

namespace A006647.P5041374273851939815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001430 (n + 4) - A001433 (n + 3)

end

end A006647.P5041374273851939815

/-! ## A006647.P17825313675101192335

`A179011(A063832(n))+A063832(n)`
-/

namespace A006647.P17825313675101192335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179011 (A063832 n).toNat + A063832 n

end

end A006647.P17825313675101192335

/-! ## A006647.P18334316189642823860

`A106733(A149308(n)+A058798(n))`
-/

namespace A006647.P18334316189642823860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (A149308 n + A058798 n).toNat

end

end A006647.P18334316189642823860

/-! ## A006647.P13316230417609450469

`A348325(A188048(n))+A006961(n)`
-/

namespace A006647.P13316230417609450469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (A188048 n).toNat + A006961 n

end

end A006647.P13316230417609450469

/-!
# A006648: Number of graphs with n nodes, n-1 edges and no isolated vertices.

The programs for A006648, there is no canonical definition to state claims against.
-/

/-! ## A006648.P9817375353086353667

`A001433(n+2)-A001434(n+1)`
-/

namespace A006648.P9817375353086353667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001433 (n + 2) - A001434 (n + 1)

end

end A006648.P9817375353086353667

/-! ## A006648.P7202258352021213946

`A370167(A180415(n+2))`
-/

namespace A006648.P7202258352021213946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370167 (A180415 (n + 2)).toNat

end

end A006648.P7202258352021213946

/-! ## A006648.P2641019738545457430

`A134955(n)-A257271(A129553(n+1))`
-/

namespace A006648.P2641019738545457430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134955 n - A257271 (A129553 (n + 1)).toNat

end

end A006648.P2641019738545457430

/-! ## A006648.P13133878054369485901

`A375581(A002843(n))`
-/

namespace A006648.P13133878054369485901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375581 (A002843 n).toNat

end

end A006648.P13133878054369485901

/-!
# A006650: Number of graphs with n nodes, n+1 edges and no isolated vertices.

The programs for A006650, there is no canonical definition to state claims against.
-/

/-! ## A006650.P16488549408815543106

`A086251(A130129(n))+A027261(n)`
-/

namespace A006650.P16488549408815543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A130129 n).toNat + A027261 n

end

end A006650.P16488549408815543106

/-!
# A006651: Number of graphs with n nodes, n+2 edges and no isolated vertices.

The programs for A006651, there is no canonical definition to state claims against.
-/

/-! ## A006651.P5816478477327119525

`A054896(A290915(n+1))`
-/

namespace A006651.P5816478477327119525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A290915 (n + 1)).toNat

end

end A006651.P5816478477327119525

/-!
# A006652: From the graph reconstruction problem.

The programs for A006652, there is no canonical definition to state claims against.
-/

/-! ## A006652.P11593764327088969540

`A262869(A116703(n+2))`
-/

namespace A006652.P11593764327088969540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A116703 (n + 2)).toNat

end

end A006652.P11593764327088969540

/-! ## A006652.P17082412887816996839

`A100087(n)+A025532(n)`
-/

namespace A006652.P17082412887816996839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 n + A025532 n

end

end A006652.P17082412887816996839

/-! ## A006652.P17371554970256278934

`A349365(n)+A025532(n)`
-/

namespace A006652.P17371554970256278934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349365 n + A025532 n

end

end A006652.P17371554970256278934

/-! ## A006652.P4504379008953498528

`A210357(or(n, A120925(n)))`
-/

namespace A006652.P4504379008953498528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (Int.lor (n : ℤ) (A120925 n)).toNat

end

end A006652.P4504379008953498528

/-!
# A006653: From the graph reconstruction problem.

The programs for A006653, there is no canonical definition to state claims against.
-/

/-! ## A006653.P7961510905673207457

`A005041(∑[A202832(n)])`
-/

namespace A006653.P7961510905673207457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006653.P7961510905673207457

/-! ## A006653.P16343177840313240455

`A024417(A242587(n)+n)`
-/

namespace A006653.P16343177840313240455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A242587 n + (n : ℤ)).toNat

end

end A006653.P16343177840313240455

/-! ## A006653.P13505415647463007097

`A103142(n)+A055396(A133686(n))`
-/

namespace A006653.P13505415647463007097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103142 n + A055396 (A133686 n).toNat

end

end A006653.P13505415647463007097

/-!
# A006654: From the graph reconstruction problem.

The programs for A006654, there is no canonical definition to state claims against.
-/

/-! ## A006654.P10144462001665881727

`A338192(2*n+1)+record[A294787(n+1)]`
-/

namespace A006654.P10144462001665881727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006654.P10144462001665881727

/-! ## A006654.P11023946057432728240

`A006357(n)+A000005(A117611(n))`
-/

namespace A006654.P11023946057432728240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n + A000005 (A117611 n).toNat

end

end A006654.P11023946057432728240

/-!
# A006655: From the graph reconstruction problem.

The programs for A006655, there is no canonical definition to state claims against.
-/

/-! ## A006655.P14240505288224998020

`A005051(n)+A002024(A297632(n+1))`
-/

namespace A006655.P14240505288224998020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005051 n + A002024 (A297632 (n + 1)).toNat

end

end A006655.P14240505288224998020

/-!
# A006657: Number of closed meanders with 2 components and 2n bridges.

The programs for A006657, there is no canonical definition to state claims against.
-/

/-! ## A006657.P7352782415063863963

`A008828(∑[n+1]+2)`
-/

namespace A006657.P7352782415063863963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006657.P7352782415063863963

/-! ## A006657.P18408688445311254545

`record[A008828(A091018(n)+2)]`
-/

namespace A006657.P18408688445311254545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A091018 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006657.P18408688445311254545

/-! ## A006657.P17566062650238556848

`lcm(2, A008828(A133263(n+1)))`
-/

namespace A006657.P17566062650238556848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008828 (A133263 (n + 1)).toNat)

end

end A006657.P17566062650238556848

/-! ## A006657.P9128952547805146634

`A008651(n)!*A008828(A133263(n+1))`
-/

namespace A006657.P9128952547805146634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008651 n).toNat : ℤ) * A008828 (A133263 (n + 1)).toNat

end

end A006657.P9128952547805146634

/-! ## A006657.P8158993429534863173

`A001221(A001359(n+1))*A008828(A133263(n+1))`
-/

namespace A006657.P8158993429534863173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001359 (n + 1)).toNat * A008828 (A133263 (n + 1)).toNat

end

end A006657.P8158993429534863173

/-!
# A006658: Closed meanders with 3 components and 2n bridges.

The programs for A006658, there is no canonical definition to state claims against.
-/

/-! ## A006658.P4703557147859173193

`A008828(∑[n+2]+4)`
-/

namespace A006658.P4703557147859173193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006658.P4703557147859173193

/-! ## A006658.P17758413209286173012

`A008828(A167614(n+1))*A152851(n)`
-/

namespace A006658.P17758413209286173012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A167614 (n + 1)).toNat * A152851 n

end

end A006658.P17758413209286173012

/-! ## A006658.P8780496235372332417

`lcm(A008828(A167614(n+1)), A055642(n))`
-/

namespace A006658.P8780496235372332417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008828 (A167614 (n + 1)).toNat) (A055642 n)

end

end A006658.P8780496235372332417

/-! ## A006658.P17089285040612644260

`or(A000007(n), A008828(A167614(n+1)))`
-/

namespace A006658.P17089285040612644260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008828 (A167614 (n + 1)).toNat)

end

end A006658.P17089285040612644260

/-! ## A006658.P13172778603846752304

`A070204(n+1)+A008828(A167614(n+1))`
-/

namespace A006658.P13172778603846752304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (n + 1) + A008828 (A167614 (n + 1)).toNat

end

end A006658.P13172778603846752304

/-!
# A006659: Number of closed meander systems of order n+1 with n components.

The programs for A006659, the canonical program `A006659.P11778441097935589513` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006659 has offset 1).

The definition of A006659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006659.P11778441097935589513

`2*A002694(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A006659

/-- `2*A002694(n+2)` -/
def P11778441097935589513.Spec : Prop :=
  ∀ n, P11778441097935589513.a n = A006659 (n + 1)

theorem P11778441097935589513.correct : P11778441097935589513.Spec := by
  intro n
  simp only [A006659, Nat.add_sub_cancel]

end A006659

/-! ## A006659.P4567684147291889471

`(n+2)*A002057(n)`
-/

namespace A006659.P4567684147291889471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002057 n

end

end A006659.P4567684147291889471

namespace A006659

/-- `(n+2)*A002057(n)` -/
def P4567684147291889471.Spec : Prop :=
  ∀ n, P4567684147291889471.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P10293181158102131805

`record[(2-n)*A115143(n)]`
-/

namespace A006659.P10293181158102131805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) * A115143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006659.P10293181158102131805

namespace A006659

/-- `record[(2-n)*A115143(n)]` -/
def P10293181158102131805.Spec : Prop :=
  ∀ n, P10293181158102131805.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P461517963062212285

`2*A037951(2*(n+2))`
-/

namespace A006659.P461517963062212285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037951 (2 * (n + 2))

end

end A006659.P461517963062212285

namespace A006659

/-- `2*A037951(2*(n+2))` -/
def P461517963062212285.Spec : Prop :=
  ∀ n, P461517963062212285.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P9782671230083997103

`2*A037956(2*(n+2))`
-/

namespace A006659.P9782671230083997103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037956 (2 * (n + 2))

end

end A006659.P9782671230083997103

namespace A006659

/-- `2*A037956(2*(n+2))` -/
def P9782671230083997103.Spec : Prop :=
  ∀ n, P9782671230083997103.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P6423859837177450545

`(n+2)*A099376(n+1)`
-/

namespace A006659.P6423859837177450545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A099376 (n + 1)

end

end A006659.P6423859837177450545

namespace A006659

/-- `(n+2)*A099376(n+1)` -/
def P6423859837177450545.Spec : Prop :=
  ∀ n, P6423859837177450545.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P2540299221181025170

`(n+2)*∑[A026016(n+1)]`
-/

namespace A006659.P2540299221181025170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006659.P2540299221181025170

namespace A006659

/-- `(n+2)*∑[A026016(n+1)]` -/
def P2540299221181025170.Spec : Prop :=
  ∀ n, P2540299221181025170.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P211312465131406803

`(n+2)*∑[A071725(n+1)]`
-/

namespace A006659.P211312465131406803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006659.P211312465131406803

namespace A006659

/-- `(n+2)*∑[A071725(n+1)]` -/
def P211312465131406803.Spec : Prop :=
  ∀ n, P211312465131406803.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P13744308232713361662

`(n+2)*Δ[A279557(n+1)]`
-/

namespace A006659.P13744308232713361662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006659.P13744308232713361662

namespace A006659

/-- `(n+2)*Δ[A279557(n+1)]` -/
def P13744308232713361662.Spec : Prop :=
  ∀ n, P13744308232713361662.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P7987865115799149532

`(n+1)/3*A071721(n+2)`
-/

namespace A006659.P7987865115799149532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A071721 (n + 2) : ℚ)

end

end A006659.P7987865115799149532

namespace A006659

/-- `(n+1)/3*A071721(n+2)` -/
def P7987865115799149532.Spec : Prop :=
  ∀ n, P7987865115799149532.a n = (A006659 (n + 1) : ℚ)

end A006659

/-! ## A006659.P14432691037717449483

`(n+2)*∑[A026021(2*n+1)]`
-/

namespace A006659.P14432691037717449483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006659.P14432691037717449483

namespace A006659

/-- `(n+2)*∑[A026021(2*n+1)]` -/
def P14432691037717449483.Spec : Prop :=
  ∀ n, P14432691037717449483.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P7214927826627097290

`2*(n+1)/3*Δ[A000108(n+2)]`
-/

namespace A006659.P7214927826627097290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ))

end

end A006659.P7214927826627097290

namespace A006659

/-- `2*(n+1)/3*Δ[A000108(n+2)]` -/
def P7214927826627097290.Spec : Prop :=
  ∀ n, P7214927826627097290.a n = (A006659 (n + 1) : ℚ)

end A006659

/-! ## A006659.P9429913466874425294

`(n+2)*(n+1)*record[A000108(n+1)/(2*n+1)]`
-/

namespace A006659.P9429913466874425294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 1 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A006659.P9429913466874425294

namespace A006659

/-- `(n+2)*(n+1)*record[A000108(n+1)/(2*n+1)]` -/
def P9429913466874425294.Spec : Prop :=
  ∀ n, P9429913466874425294.a n = (A006659 (n + 1) : ℚ)

end A006659

/-! ## A006659.P3045697041303278709

`A383456(n)-A002057(n)`
-/

namespace A006659.P3045697041303278709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383456 n - A002057 n

end

end A006659.P3045697041303278709

namespace A006659

/-- `A383456(n)-A002057(n)` -/
def P3045697041303278709.Spec : Prop :=
  ∀ n, P3045697041303278709.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P8028127939325862245

`∑[2*(A007946(n)-A002057(n))]`
-/

namespace A006659.P8028127939325862245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007946 n - A002057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006659.P8028127939325862245

namespace A006659

/-- `∑[2*(A007946(n)-A002057(n))]` -/
def P8028127939325862245.Spec : Prop :=
  ∀ n, P8028127939325862245.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P2198688606097856818

`A265612(n+1)+A002054(n+1)`
-/

namespace A006659.P2198688606097856818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 (n + 1) + A002054 (n + 1)

end

end A006659.P2198688606097856818

namespace A006659

/-- `A265612(n+1)+A002054(n+1)` -/
def P2198688606097856818.Spec : Prop :=
  ∀ n, P2198688606097856818.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P6119187961391776173

`A003516(n+2)+A000344(n+2)`
-/

namespace A006659.P6119187961391776173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2) + A000344 (n + 2)

end

end A006659.P6119187961391776173

namespace A006659

/-- `A003516(n+2)+A000344(n+2)` -/
def P6119187961391776173.Spec : Prop :=
  ∀ n, P6119187961391776173.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P6705202269961447290

`A002054(n+2)-A000245(n+2)`
-/

namespace A006659.P6705202269961447290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A000245 (n + 2)

end

end A006659.P6705202269961447290

namespace A006659

/-- `A002054(n+2)-A000245(n+2)` -/
def P6705202269961447290.Spec : Prop :=
  ∀ n, P6705202269961447290.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P13417774195347430783

`A246434(n+3)+A000108(n+2)`
-/

namespace A006659.P13417774195347430783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 3) + A000108 (n + 2)

end

end A006659.P13417774195347430783

namespace A006659

/-- `A246434(n+3)+A000108(n+2)` -/
def P13417774195347430783.Spec : Prop :=
  ∀ n, P13417774195347430783.a n = A006659 (n + 1)

end A006659

/-! ## A006659.P1977286355918946551

`A349695(n+2)-A000108(n+2)`
-/

namespace A006659.P1977286355918946551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 2) - A000108 (n + 2)

end

end A006659.P1977286355918946551

namespace A006659

/-- `A349695(n+2)-A000108(n+2)` -/
def P1977286355918946551.Spec : Prop :=
  ∀ n, P1977286355918946551.a n = A006659 (n + 1)

end A006659

/-!
# A006660: Number of meanders in which first bridge is 3.

The programs for A006660, there is no canonical definition to state claims against.
-/

/-! ## A006660.P9493763445569743332

`A259974(∑[char[2*n]]²+n+2)`
-/

namespace A006660.P9493763445569743332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 2))

end

end A006660.P9493763445569743332

/-! ## A006660.P1332846314596520946

`A259974(A135276(n+2))%A148158(n+3)`
-/

namespace A006660.P1332846314596520946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259974 (A135276 (n + 2)).toNat) (A148158 (n + 3))

end

end A006660.P1332846314596520946

/-! ## A006660.P5792202522424985785

`A259974(A135276(n+2))%A076907(n)`
-/

namespace A006660.P5792202522424985785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259974 (A135276 (n + 2)).toNat) (A076907 n)

end

end A006660.P5792202522424985785

/-!
# A006661: Number of meanders in which first bridge is 5.

The programs for A006661, there is no canonical definition to state claims against.
-/

/-! ## A006661.P14298738235753601011

`A259974(A033638(n+5)+2)`
-/

namespace A006661.P14298738235753601011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A033638 (n + 5) + 2).toNat

end

end A006661.P14298738235753601011

/-! ## A006661.P7268209484168932809

`A259974(A035106(n+5)-1)`
-/

namespace A006661.P7268209484168932809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A035106 (n + 5) - 1).toNat

end

end A006661.P7268209484168932809

/-! ## A006661.P12178721734379829513

`A259974(A002620(n+5)+3)`
-/

namespace A006661.P12178721734379829513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A002620 (n + 5) + 3).toNat

end

end A006661.P12178721734379829513

/-! ## A006661.P5195182274991293215

`A259974(A004116(n+2)+6)`
-/

namespace A006661.P5195182274991293215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A004116 (n + 2) + 6).toNat

end

end A006661.P5195182274991293215

/-! ## A006661.P4007649042378157840

`A259974(A076921(n+5)+3)`
-/

namespace A006661.P4007649042378157840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A076921 (n + 5) + 3).toNat

end

end A006661.P4007649042378157840

/-!
# A006662: Number of meanders in which first bridge is 7.

The programs for A006662, there is no canonical definition to state claims against.
-/

/-! ## A006662.P3935524954751212431

`A259974(A004116(n+5)+A000035(n))`
-/

namespace A006662.P3935524954751212431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A004116 (n + 5) + A000035 n).toNat

end

end A006662.P3935524954751212431

/-! ## A006662.P12005915869008037833

`A259974(A024206(n+1)+A007310(n+5))`
-/

namespace A006662.P12005915869008037833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A024206 (n + 1) + A007310 (n + 5)).toNat

end

end A006662.P12005915869008037833

/-! ## A006662.P14599448878067340268

`A259974(A004116(n+8)-A005408(n+5))`
-/

namespace A006662.P14599448878067340268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A004116 (n + 8) - A005408 (n + 5)).toNat

end

end A006662.P14599448878067340268

/-!
# A006664: Number of irreducible systems of meanders.

The programs for A006664, there is no canonical definition to state claims against.
-/

/-! ## A006664.P12901305367375310041

`A326351(n)-A092492(A078840(n))`
-/

namespace A006664.P12901305367375310041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326351 n - A092492 (A078840 n).toNat

end

end A006664.P12901305367375310041

/-! ## A006664.P16406686110106504

`A326351(n)-A092492(A185974(n))`
-/

namespace A006664.P16406686110106504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326351 n - A092492 (A185974 n).toNat

end

end A006664.P16406686110106504

/-! ## A006664.P18296707607472029763

`A326351(n)-A328916(A006456(n))`
-/

namespace A006664.P18296707607472029763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326351 n - A328916 (A006456 n).toNat

end

end A006664.P18296707607472029763

/-!
# A006665: G.f.: { ( Product_{j=1..infinity} (1-x^j) - 1 )/x }^24.

The programs for A006665, there is no canonical definition to state claims against.
-/

/-! ## A006665.P17232544392025204913

`A045854(n)-A045830(A305110(n))`
-/

namespace A006665.P17232544392025204913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045854 n - A045830 (A305110 n).toNat

end

end A006665.P17232544392025204913

/-!
# A006666: Number of halving steps to reach 1 in '3x+1' problem, or -1 if this never happens.

The programs for A006666, there is no canonical definition to state claims against.
-/

/-! ## A006666.P17384882149549166503

`A064433(n+2)-1`
-/

namespace A006666.P17384882149549166503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) - 1

end

end A006666.P17384882149549166503

/-! ## A006666.P11894671515360957668

`floor(log2(A389685(n+1)))`
-/

namespace A006666.P11894671515360957668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A389685 (n + 1)).toNat

end

end A006666.P11894671515360957668

/-! ## A006666.P18067435541481752278

`A023443(A064433(n+2))`
-/

namespace A006666.P18067435541481752278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A064433 (n + 2)).toNat

end

end A006666.P18067435541481752278

/-! ## A006666.P9411760364650199581

`A220071(n+1)+A006667(n+1)`
-/

namespace A006666.P9411760364650199581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (n + 1) + A006667 (n + 1)

end

end A006666.P9411760364650199581

/-! ## A006666.P14884083927746945269

`A006577(n+1)-A006667(n+1)`
-/

namespace A006666.P14884083927746945269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A006667 (n + 1)

end

end A006666.P14884083927746945269

/-! ## A006666.P13113601773591545065

`A008908(n+1)-A078719(n+1)`
-/

namespace A006666.P13113601773591545065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A078719 (n + 1)

end

end A006666.P13113601773591545065

/-! ## A006666.P2002303459844585328

`A008908(n+1)-(A006667(n+1)+1)`
-/

namespace A006666.P2002303459844585328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A006667 (n + 1) + 1)

end

end A006666.P2002303459844585328

/-! ## A006666.P15039606729985423219

`A006577(n+1)+1-A078719(n+1)`
-/

namespace A006666.P15039606729985423219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A078719 (n + 1))

end

end A006666.P15039606729985423219

/-! ## A006666.P12469955335262132866

`A078719(n+1)+A220071(n+1)-1`
-/

namespace A006666.P12469955335262132866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) + (A220071 (n + 1) - 1)

end

end A006666.P12469955335262132866

/-! ## A006666.P8586482267030081134

`(A220071(n+1)+A006577(n+1))/2`
-/

namespace A006666.P8586482267030081134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220071 (n + 1) + A006577 (n + 1) : ℚ) / 2

end

end A006666.P8586482267030081134

/-! ## A006666.P12934362500102838753

`A006370(A220071(n+1)+A006577(n+1))`
-/

namespace A006666.P12934362500102838753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A220071 (n + 1) + A006577 (n + 1)).toNat

end

end A006666.P12934362500102838753

/-! ## A006666.P2267187150334431282

`A014682(A220071(n+1)+A006577(n+1))`
-/

namespace A006666.P2267187150334431282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A220071 (n + 1) + A006577 (n + 1)).toNat

end

end A006666.P2267187150334431282

/-! ## A006666.P17777033543696687376

`A085062(A220071(n+1)+A006577(n+1))`
-/

namespace A006666.P17777033543696687376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A220071 (n + 1) + A006577 (n + 1)).toNat

end

end A006666.P17777033543696687376

/-! ## A006666.P12944942950095842162

`A317640(A220071(n+1)+A006577(n+1))`
-/

namespace A006666.P12944942950095842162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317640 (A220071 (n + 1) + A006577 (n + 1)).toNat

end

end A006666.P12944942950095842162

/-! ## A006666.P8572920506394988038

`A220071(n+1)+A008619(A220182(n+1))-1`
-/

namespace A006666.P8572920506394988038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (n + 1) + (A008619 (A220182 (n + 1)).toNat - 1)

end

end A006666.P8572920506394988038

/-! ## A006666.P9101029861893156920

`A220421(n+1)+A222641(n+1)-A006667(n+1)`
-/

namespace A006666.P9101029861893156920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) - A006667 (n + 1))

end

end A006666.P9101029861893156920

/-! ## A006666.P12648106735317369295

`A008908(n+1)-A286380(2*(n+1))`
-/

namespace A006666.P12648106735317369295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A286380 (2 * (n + 1))

end

end A006666.P12648106735317369295

/-! ## A006666.P8006963881212004880

`A006577(n+1)+1-A286380(2*(n+1))`
-/

namespace A006666.P8006963881212004880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1 - A286380 (2 * (n + 1))

end

end A006666.P8006963881212004880

/-! ## A006666.P2843523551539670390

`A139399(4*(n+1))-A006667(n+1)`
-/

namespace A006666.P2843523551539670390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1)) - A006667 (n + 1)

end

end A006666.P2843523551539670390

/-! ## A006666.P13504267671281142737

`ceil(log2(A309154(n+1)))`
-/

namespace A006666.P13504267671281142737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A309154 (n + 1) : ℝ)⌉

end

end A006666.P13504267671281142737

/-!
# A006667: Number of tripling steps to reach 1 from n in '3x+1' problem, or -1 if 1 is never reached.

The programs for A006667, there is no canonical definition to state claims against.
-/

/-! ## A006667.P11187632092380028516

`A078719(n+1)-1`
-/

namespace A006667.P11187632092380028516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - 1

end

end A006667.P11187632092380028516

/-! ## A006667.P11032379420971992239

`floor(A220182(n+1)/2)`
-/

namespace A006667.P11032379420971992239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220182 (n + 1) : ℚ) / 2⌋

end

end A006667.P11032379420971992239

/-! ## A006667.P9904602228036126442

`A286380(n+1)+(n+1)%2-1`
-/

namespace A006667.P9904602228036126442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ) - 1

end

end A006667.P9904602228036126442

/-! ## A006667.P10211919039123563023

`A075680(A003602(n+1))`
-/

namespace A006667.P10211919039123563023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (A003602 (n + 1)).toNat

end

end A006667.P10211919039123563023

/-! ## A006667.P14532286348661339629

`A075680(A025480(n)+1)`
-/

namespace A006667.P14532286348661339629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (A025480 n + 1).toNat

end

end A006667.P14532286348661339629

/-! ## A006667.P1675162468926954784

`A023443(A078719(n+1))`
-/

namespace A006667.P1675162468926954784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078719 (n + 1)).toNat

end

end A006667.P1675162468926954784

/-! ## A006667.P16596620246153856643

`A004526(A220182(n+1))`
-/

namespace A006667.P16596620246153856643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A220182 (n + 1)).toNat

end

end A006667.P16596620246153856643

/-! ## A006667.P16159785929354105677

`A286380(A000265(n+1))`
-/

namespace A006667.P16159785929354105677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A000265 (n + 1)).toNat

end

end A006667.P16159785929354105677

/-! ## A006667.P3723757650442283066

`A023444(A078719(n+1)+1)`
-/

namespace A006667.P3723757650442283066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078719 (n + 1) + 1).toNat

end

end A006667.P3723757650442283066

/-! ## A006667.P15293033706323576975

`A002265(2*A220182(n+1))`
-/

namespace A006667.P15293033706323576975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A220182 (n + 1)).toNat

end

end A006667.P15293033706323576975

/-! ## A006667.P16259320444716245603

`A286380(n+1)-A000035(n)`
-/

namespace A006667.P16259320444716245603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A000035 n

end

end A006667.P16259320444716245603

/-! ## A006667.P11403050025763847098

`A110654(A220182(n+1)+1)-1`
-/

namespace A006667.P11403050025763847098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A220182 (n + 1) + 1).toNat - 1

end

end A006667.P11403050025763847098

/-! ## A006667.P2354853081209233377

`A006577(n+1)-A006666(n+1)`
-/

namespace A006667.P2354853081209233377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A006666 (n + 1)

end

end A006667.P2354853081209233377

/-! ## A006667.P11054634173207761299

`A006666(n+1)-A220071(n+1)`
-/

namespace A006667.P11054634173207761299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) - A220071 (n + 1)

end

end A006667.P11054634173207761299

/-! ## A006667.P1632104723275625365

`A286380(n+1)+A059841(n)-1`
-/

namespace A006667.P1632104723275625365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + A059841 n - 1

end

end A006667.P1632104723275625365

/-! ## A006667.P1924241265584709155

`A220182(n+1)-A286380(n+1)`
-/

namespace A006667.P1924241265584709155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1) - A286380 (n + 1)

end

end A006667.P1924241265584709155

/-! ## A006667.P14489341420674177873

`A008908(n+1)-A064433(n+2)`
-/

namespace A006667.P14489341420674177873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A064433 (n + 2)

end

end A006667.P14489341420674177873

/-! ## A006667.P10611392662850928084

`A008908(n+1)-(A006666(n+1)+1)`
-/

namespace A006667.P10611392662850928084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A006666 (n + 1) + 1)

end

end A006667.P10611392662850928084

/-! ## A006667.P8129919240729305940

`A351850(n+1)+1-A285098(n+1)`
-/

namespace A006667.P8129919240729305940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351850 (n + 1) + (1 - A285098 (n + 1))

end

end A006667.P8129919240729305940

/-! ## A006667.P7740879570446073582

`A006577(n+1)+1-A064433(n+2)`
-/

namespace A006667.P7740879570446073582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1 - A064433 (n + 2)

end

end A006667.P7740879570446073582

/-!
# A006668: Exponential self-convolution of Pell numbers (divided by 2).

The programs for A006668, the canonical program `A006668.P5384466463075513061` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006668 has offset 0).

The definition of A006668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006668.P5384466463075513061

`2^(n-4)*(A002203(n)-2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006668

/-- `2^(n-4)*(A002203(n)-2)` -/
def P5384466463075513061.Spec : Prop :=
  ∀ n, P5384466463075513061.a n = (A006668 n : ℚ)

end A006668

/-! ## A006668.P8582623771038200582

`A006646(n)/2`
-/

namespace A006668.P8582623771038200582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006646 n : ℚ) / 2

end

end A006668.P8582623771038200582

namespace A006668

/-- `A006646(n)/2` -/
def P8582623771038200582.Spec : Prop :=
  ∀ n, P8582623771038200582.a n = (A006668 n : ℚ)

end A006668

/-! ## A006668.P17646447081244531816

`((2+sqrt(8))^n+(2-sqrt(8))^n-2^(n+1))/16`
-/

namespace A006668.P17646447081244531816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (8 : ℝ)) ^ n + (2 - Real.sqrt (8 : ℝ)) ^ n - (2 ^ (n + 1) : ℝ)) / 16

end

end A006668.P17646447081244531816

namespace A006668

/-- `((2+sqrt(8))^n+(2-sqrt(8))^n-2^(n+1))/16` -/
def P17646447081244531816.Spec : Prop :=
  ∀ n, P17646447081244531816.a n = (A006668 n : ℝ)

end A006668

/-! ## A006668.P2484702436666509968

`(A171842(n)-1)*A034008(n)`
-/

namespace A006668.P2484702436666509968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171842 n - 1) * A034008 n

end

end A006668.P2484702436666509968

namespace A006668

/-- `(A171842(n)-1)*A034008(n)` -/
def P2484702436666509968.Spec : Prop :=
  ∀ n, P2484702436666509968.a n = A006668 n

end A006668

/-! ## A006668.P12724701408687110769

`(A171842(n)-1)*A166444(n)`
-/

namespace A006668.P12724701408687110769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171842 n - 1) * A166444 n

end

end A006668.P12724701408687110769

namespace A006668

/-- `(A171842(n)-1)*A166444(n)` -/
def P12724701408687110769.Spec : Prop :=
  ∀ n, P12724701408687110769.a n = A006668 n

end A006668

/-! ## A006668.P9402827629107202263

`A034008(n)/2*A265278(n)`
-/

namespace A006668.P9402827629107202263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n : ℚ) / 2 * (A265278 n : ℚ)

end

end A006668.P9402827629107202263

namespace A006668

/-- `A034008(n)/2*A265278(n)` -/
def P9402827629107202263.Spec : Prop :=
  ∀ n, P9402827629107202263.a n = (A006668 n : ℚ)

end A006668

/-! ## A006668.P10074480933658044577

`A034008(n)/2*A293004(n)`
-/

namespace A006668.P10074480933658044577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n : ℚ) / 2 * (A293004 n : ℚ)

end

end A006668.P10074480933658044577

namespace A006668

/-- `A034008(n)/2*A293004(n)` -/
def P10074480933658044577.Spec : Prop :=
  ∀ n, P10074480933658044577.a n = (A006668 n : ℚ)

end A006668

/-! ## A006668.P8754878362502807470

`A166444(n)/2*A293004(n)`
-/

namespace A006668.P8754878362502807470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166444 n : ℚ) / 2 * (A293004 n : ℚ)

end

end A006668.P8754878362502807470

namespace A006668

/-- `A166444(n)/2*A293004(n)` -/
def P8754878362502807470.Spec : Prop :=
  ∀ n, P8754878362502807470.a n = (A006668 n : ℚ)

end A006668

/-! ## A006668.P9342657038912706341

`A247311(A016789(n))/2*A131577(n)`
-/

namespace A006668.P9342657038912706341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247311 (A016789 n).toNat : ℚ) / 2 * (A131577 n : ℚ)

end

end A006668.P9342657038912706341

namespace A006668

/-- `A247311(A016789(n))/2*A131577(n)` -/
def P9342657038912706341.Spec : Prop :=
  ∀ n, P9342657038912706341.a n = (A006668 n : ℚ)

end A006668

/-!
# A006669: Exponentiation of g.f. for Pell numbers.

The programs for A006669, there is no canonical definition to state claims against.
-/

/-! ## A006669.P6822015396815518810

`(n-2)*A210147(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A006669.P6822015396815518810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((n : ℤ) - 2) * A210147 (a (n - 1)).toNat

end

end A006669.P6822015396815518810

/-! ## A006669.P8231464230105386384

`A191982(A380121(n))`
-/

namespace A006669.P8231464230105386384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191982 (A380121 n).toNat

end

end A006669.P8231464230105386384

/-!
# A006670: Edge-distinguishing chromatic number of path with n nodes.

The programs for A006670, the canonical program `A006670.P5796379747029257233` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006670 has offset 1).

The definition of A006670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006670.P5796379747029257233

`∑[char[A266287(n)+2]]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006670

/-- `∑[char[A266287(n)+2]]+1` -/
def P5796379747029257233.Spec : Prop :=
  ∀ n, (P5796379747029257233.a n : ℤ) = A006670 (n + 1)

theorem P5796379747029257233.correct : P5796379747029257233.Spec := by
  intro n
  simp only [A006670, Nat.add_sub_cancel]

end A006670

/-! ## A006670.P183594415380217500

`∑[char[∑[A266286(n)]+2]]+1`
-/

namespace A006670.P183594415380217500
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006670.P183594415380217500

namespace A006670

/-- `∑[char[∑[A266286(n)]+2]]+1` -/
def P183594415380217500.Spec : Prop :=
  ∀ n, (P183594415380217500.a n : ℤ) = A006670 (n + 1)

end A006670

/-! ## A006670.P13982274075732949364

`∑[char[A131475(n)%A061925(n)]]`
-/

namespace A006670.P13982274075732949364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131475 n) (A061925 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006670.P13982274075732949364

namespace A006670

/-- `∑[char[A131475(n)%A061925(n)]]` -/
def P13982274075732949364.Spec : Prop :=
  ∀ n, (P13982274075732949364.a n : ℤ) = A006670 (n + 1)

end A006670

/-! ## A006670.P6822217387736254372

`or(A123578(n), A263919(A004273(n)))`
-/

namespace A006670.P6822217387736254372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123578 n) (A263919 (A004273 n).toNat)

end

end A006670.P6822217387736254372

namespace A006670

/-- `or(A123578(n), A263919(A004273(n)))` -/
def P6822217387736254372.Spec : Prop :=
  ∀ n, P6822217387736254372.a n = A006670 (n + 1)

end A006670

/-! ## A006670.P16725243325363013799

`or(A000194(2*n), A263919(A004273(n)))`
-/

namespace A006670.P16725243325363013799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (2 * n)) (A263919 (A004273 n).toNat)

end

end A006670.P16725243325363013799

namespace A006670

/-- `or(A000194(2*n), A263919(A004273(n)))` -/
def P16725243325363013799.Spec : Prop :=
  ∀ n, P16725243325363013799.a n = A006670 (n + 1)

end A006670

/-! ## A006670.P13269921662520827555

`A137734(eq[A071028(n), A267687(n)])`
-/

namespace A006670.P13269921662520827555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006670.P13269921662520827555

namespace A006670

/-- `A137734(eq[A071028(n), A267687(n)])` -/
def P13269921662520827555.Spec : Prop :=
  ∀ n, P13269921662520827555.a n = A006670 (n + 1)

end A006670

/-! ## A006670.P11759551603861451948

`A000194(A219237(n)+A004273(n))`
-/

namespace A006670.P11759551603861451948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A219237 n + A004273 n).toNat

end

end A006670.P11759551603861451948

namespace A006670

/-- `A000194(A219237(n)+A004273(n))` -/
def P11759551603861451948.Spec : Prop :=
  ∀ n, P11759551603861451948.a n = A006670 (n + 1)

end A006670

/-!
# A006671: Edge-distinguishing chromatic number of cycle with n nodes.

The programs for A006671, the canonical program `A006671.P103986812398951984` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006671 has offset 3).

The definition of A006671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006671.P103986812398951984

`∑[char[(n+2)*∑[and(1, n)]+n]]+2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006671

/-- `∑[char[(n+2)*∑[and(1, n)]+n]]+2` -/
def P103986812398951984.Spec : Prop :=
  ∀ n, (P103986812398951984.a n : ℤ) = A006671 (n + 3)

theorem P103986812398951984.correct : P103986812398951984.Spec := by
  intro n
  simp only [A006671, Nat.add_sub_cancel]

end A006671

/-! ## A006671.P4713371073591508276

`A004525(ceil(sqrt(A004769(n+1))))`
-/

namespace A006671.P4713371073591508276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A004769 (n + 1) : ℝ)⌉.toNat

end

end A006671.P4713371073591508276

namespace A006671

/-- `A004525(ceil(sqrt(A004769(n+1))))` -/
def P4713371073591508276.Spec : Prop :=
  ∀ n, P4713371073591508276.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P10566569281385541079

`A004525(ceil(sqrt(A017113(n+2))))`
-/

namespace A006671.P10566569281385541079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A017113 (n + 2) : ℝ)⌉.toNat

end

end A006671.P10566569281385541079

namespace A006671

/-- `A004525(ceil(sqrt(A017113(n+2))))` -/
def P10566569281385541079.Spec : Prop :=
  ∀ n, P10566569281385541079.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P17998879860968751311

`A004525(ceil(sqrt(A017137(n+2))))`
-/

namespace A006671.P17998879860968751311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A017137 (n + 2) : ℝ)⌉.toNat

end

end A006671.P17998879860968751311

namespace A006671

/-- `A004525(ceil(sqrt(A017137(n+2))))` -/
def P17998879860968751311.Spec : Prop :=
  ∀ n, P17998879860968751311.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P4073190573659538922

`A004525(ceil(sqrt(A004771(n+2))))`
-/

namespace A006671.P4073190573659538922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A004771 (n + 2) : ℝ)⌉.toNat

end

end A006671.P4073190573659538922

namespace A006671

/-- `A004525(ceil(sqrt(A004771(n+2))))` -/
def P4073190573659538922.Spec : Prop :=
  ∀ n, P4073190573659538922.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P3019939163103730600

`A004525(ceil(sqrt(A022144(n+3))))`
-/

namespace A006671.P3019939163103730600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A022144 (n + 3) : ℝ)⌉.toNat

end

end A006671.P3019939163103730600

namespace A006671

/-- `A004525(ceil(sqrt(A022144(n+3))))` -/
def P3019939163103730600.Spec : Prop :=
  ∀ n, P3019939163103730600.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P16706899134435702221

`A004525(ceil(sqrt(A008590(n+3))))`
-/

namespace A006671.P16706899134435702221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A008590 (n + 3) : ℝ)⌉.toNat

end

end A006671.P16706899134435702221

namespace A006671

/-- `A004525(ceil(sqrt(A008590(n+3))))` -/
def P16706899134435702221.Spec : Prop :=
  ∀ n, P16706899134435702221.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P10962889384948722317

`A049206(A027434(2*(n+3)))`
-/

namespace A006671.P10962889384948722317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A027434 (2 * (n + 3))).toNat

end

end A006671.P10962889384948722317

namespace A006671

/-- `A049206(A027434(2*(n+3)))` -/
def P10962889384948722317.Spec : Prop :=
  ∀ n, P10962889384948722317.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P9234663172020440211

`A004525(A027434(A005408(n+2)))`
-/

namespace A006671.P9234663172020440211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A027434 (A005408 (n + 2)).toNat).toNat

end

end A006671.P9234663172020440211

namespace A006671

/-- `A004525(A027434(A005408(n+2)))` -/
def P9234663172020440211.Spec : Prop :=
  ∀ n, P9234663172020440211.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P13724828772013142190

`A004525(A027434(A020742(n)-1))`
-/

namespace A006671.P13724828772013142190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A027434 (A020742 n - 1).toNat).toNat

end

end A006671.P13724828772013142190

namespace A006671

/-- `A004525(A027434(A020742(n)-1))` -/
def P13724828772013142190.Spec : Prop :=
  ∀ n, P13724828772013142190.a n = A006671 (n + 3)

end A006671

/-! ## A006671.P13519084229118667195

`A274701(A185869(n+3)-A002024(n+2))`
-/

namespace A006671.P13519084229118667195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A185869 (n + 3) - A002024 (n + 2)).toNat

end

end A006671.P13519084229118667195

namespace A006671

/-- `A274701(A185869(n+3)-A002024(n+2))` -/
def P13519084229118667195.Spec : Prop :=
  ∀ n, P13519084229118667195.a n = A006671 (n + 3)

end A006671

/-!
# A006673: E.g.f. is the logarithmic derivative of e.g.f. for Pell numbers [1, 0, 1, 2, 5, ...].

The programs for A006673, there is no canonical definition to state claims against.
-/

/-! ## A006673.P15673719424809341913

`A348001(A254009(n+1))-A081125(n)`
-/

namespace A006673.P15673719424809341913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348001 (A254009 (n + 1)).toNat - A081125 n

end

end A006673.P15673719424809341913

/-! ## A006673.P12379084804214269805

`∑[A167494(n+1)-A200997(A003418(n))]`
-/

namespace A006673.P12379084804214269805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167494 (n + 1) - A200997 (A003418 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006673.P12379084804214269805

/-!
# A006674: Triangulations of a square with no separating triangles (previously "Bordered triangulations of sphere with n nodes").

The programs for A006674, there is no canonical definition to state claims against.
-/

/-! ## A006674.P12306953080631277616

`A226190(∑[A200753(n)])`
-/

namespace A006674.P12306953080631277616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006674.P12306953080631277616

/-! ## A006674.P1365949360166445224

`A008619(A323581(∑[n]+1))`
-/

namespace A006674.P1365949360166445224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A323581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A006674.P1365949360166445224

/-! ## A006674.P17712673576770256376

`A008647(4*A202062(n+1))`
-/

namespace A006674.P17712673576770256376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (4 * A202062 (n + 1)).toNat

end

end A006674.P17712673576770256376

/-!
# A006675: Number of paths through an array.

The programs for A006675, there is no canonical definition to state claims against.
-/

/-! ## A006675.P9797569461149319044

`A001705(n)-A000254(n)`
-/

namespace A006675.P9797569461149319044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n - A000254 n

end

end A006675.P9797569461149319044

/-! ## A006675.P1081989351010358703

`Δ[A161128(n)]`
-/

namespace A006675.P1081989351010358703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006675.P1081989351010358703

/-! ## A006675.P12166353717841927494

`abs(n*A081047(n))`
-/

namespace A006675.P12166353717841927494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081047 n|

end

end A006675.P12166353717841927494

/-! ## A006675.P13765752510278908619

`n*A001705(abs(1-n))`
-/

namespace A006675.P13765752510278908619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001705 |1 - (n : ℤ)|.toNat

end

end A006675.P13765752510278908619

/-! ## A006675.P5782789878259782761

`abs(n*(n!-abs(A081048(n))))`
-/

namespace A006675.P5782789878259782761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * ((Nat.factorial n : ℤ) - |A081048 n|))|

end

end A006675.P5782789878259782761

/-! ## A006675.P15264420683093928140

`A052881(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A006675.P15264420683093928140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052881 n + (n : ℤ) * a (n - 1)

end

end A006675.P15264420683093928140

/-! ## A006675.P1377844865628704953

`A001705(n)-abs(A081048(n))`
-/

namespace A006675.P1377844865628704953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n - |A081048 n|

end

end A006675.P1377844865628704953

/-! ## A006675.P7069617748862748687

`Δ[A000254(n)-A007489(n)]`
-/

namespace A006675.P7069617748862748687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006675.P7069617748862748687

/-! ## A006675.P16104644311319494815

`Δ[A000774(n)]-A007680(n)`
-/

namespace A006675.P16104644311319494815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007680 n

end

end A006675.P16104644311319494815

/-! ## A006675.P7964536005286548637

`A000774(n+1)-(A007680(n)+A000774(n))`
-/

namespace A006675.P7964536005286548637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 (n + 1) - (A007680 n + A000774 n)

end

end A006675.P7964536005286548637

/-!
# A006676: Number of paths through an array.

The programs for A006676, there is no canonical definition to state claims against.
-/

/-! ## A006676.P675625419753933279

`A071208(A167614(n+1))`
-/

namespace A006676.P675625419753933279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071208 (A167614 (n + 1)).toNat

end

end A006676.P675625419753933279

/-! ## A006676.P14643229583517198931

`A071208(A373663(n+1))`
-/

namespace A006676.P14643229583517198931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071208 (A373663 (n + 1)).toNat

end

end A006676.P14643229583517198931

/-! ## A006676.P12728036149211109477

`A071208(A034856(n+2))`
-/

namespace A006676.P12728036149211109477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071208 (A034856 (n + 2)).toNat

end

end A006676.P12728036149211109477

/-!
# A006677: Number of planted binary phylogenetic trees with n labels.

The programs for A006677, there is no canonical definition to state claims against.
-/

/-! ## A006677.P11774377296085789637

`round(sqrt(A058112(2*n)))`
-/

namespace A006677.P11774377296085789637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058112 (2 * n) : ℝ))

end

end A006677.P11774377296085789637

/-!
# A006678: Number of planted binary phylogenetic trees with n labels.

The programs for A006678, there is no canonical definition to state claims against.
-/

/-! ## A006678.P11047037677230246512

`A008616(∑[A290044(n)])`
-/

namespace A006678.P11047037677230246512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006678.P11047037677230246512

/-! ## A006678.P1047094960344924462

`A372511(A041895(n+1))`
-/

namespace A006678.P1047094960344924462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (A041895 (n + 1)).toNat

end

end A006678.P1047094960344924462

/-!
# A006679: Number of planted binary phylogenetic trees with n labels.

The programs for A006679, there is no canonical definition to state claims against.
-/

/-! ## A006679.P7942003118324525841

`A027868(A007559(n))+A007462(n)`
-/

namespace A006679.P7942003118324525841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A007559 n).toNat + A007462 n

end

end A006679.P7942003118324525841

/-! ## A006679.P579975311861647187

`A276797(A005774(n)+A000312(n))`
-/

namespace A006679.P579975311861647187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A005774 n + A000312 n).toNat

end

end A006679.P579975311861647187

/-!
# A006680: Number of binary phylogenetic trees with n labels.

The programs for A006680, there is no canonical definition to state claims against.
-/

/-! ## A006680.P4850221951529702889

`or(A008587(A163951(n)), A125079(n))`
-/

namespace A006680.P4850221951529702889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008587 (A163951 n).toNat) (A125079 n)

end

end A006680.P4850221951529702889

/-! ## A006680.P3797211015210298877

`or(A008587(A163951(n)), A177702(n))`
-/

namespace A006680.P3797211015210298877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008587 (A163951 n).toNat) (A177702 n)

end

end A006680.P3797211015210298877

/-!
# A006681: Number of binary phylogenetic trees with n labels.

The programs for A006681, there is no canonical definition to state claims against.
-/

/-! ## A006681.P11792283576396395113

`A224714((n+3)^n+n+3)`
-/

namespace A006681.P11792283576396395113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 ((n + 3) ^ n + (n + 3))

end

end A006681.P11792283576396395113

/-!
# A006682: Number of binary phylogenetic trees with n labels.

The programs for A006682, there is no canonical definition to state claims against.
-/

/-! ## A006682.P15592135446297786986

`A063656(A008544(n)+n²)`
-/

namespace A006682.P15592135446297786986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A008544 n + (n ^ 2 : ℤ)).toNat

end

end A006682.P15592135446297786986

/-!
# A006683: Number of regions in certain maps.

The programs for A006683, there is no canonical definition to state claims against.
-/

/-! ## A006683.P7000315661833833525

`floor(root(A151831(n+4), 9))`
-/

namespace A006683.P7000315661833833525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151831 (n + 4) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A006683.P7000315661833833525

/-! ## A006683.P8478792730570009811

`record[floor(root(A243347(n+1), 3))]`
-/

namespace A006683.P8478792730570009811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243347 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006683.P8478792730570009811

/-! ## A006683.P9614691979287832311

`floor(root(A140260(3*n+1), 4))`
-/

namespace A006683.P9614691979287832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140260 (3 * n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A006683.P9614691979287832311

/-! ## A006683.P4732625999234119668

`A350174(A261896(n))`
-/

namespace A006683.P4732625999234119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A261896 n).toNat

end

end A006683.P4732625999234119668

/-! ## A006683.P6356282382576896502

`∑[A196169(A000011(n))]`
-/

namespace A006683.P6356282382576896502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A000011 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006683.P6356282382576896502

/-!
# A006684: Convolve Fibonacci and Pell numbers.

The programs for A006684, the canonical program `A006684.P7042112945782024441` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006684 has offset 0).

The definition of A006684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006684.P7042112945782024441

`3*a(n-1)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006684

/-- `3*a(n-1)-3*a(n-3)-a(n-4)` -/
def P7042112945782024441.Spec : Prop :=
  ∀ n, P7042112945782024441.a n = A006684 n

theorem P7042112945782024441.correct : P7042112945782024441.Spec := by
  intro n
  simp only [A006684]

end A006684

/-! ## A006684.P8960203294521766117

`a(n-1)+Δ[A000045(n)]+a(n-2)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A006684.P8960203294521766117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n + (a (n - 2) + a (n - 1)))

end

end A006684.P8960203294521766117

namespace A006684

/-- `a(n-1)+Δ[A000045(n)]+a(n-2)+a(n-1)` -/
def P8960203294521766117.Spec : Prop :=
  ∀ n, P8960203294521766117.a n = A006684 n

end A006684

/-! ## A006684.P17791834295454080266

`A228748(n)+A118658(n)`
-/

namespace A006684.P17791834295454080266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228748 n + A118658 n

end

end A006684.P17791834295454080266

namespace A006684

/-- `A228748(n)+A118658(n)` -/
def P17791834295454080266.Spec : Prop :=
  ∀ n, P17791834295454080266.a n = A006684 n

end A006684

/-! ## A006684.P8220398499740078348

`A000129(n)-A000045(n)`
-/

namespace A006684.P8220398499740078348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A000045 n

end

end A006684.P8220398499740078348

namespace A006684

/-- `A000129(n)-A000045(n)` -/
def P8220398499740078348.Spec : Prop :=
  ∀ n, P8220398499740078348.a n = A006684 n

end A006684

/-! ## A006684.P17891712339952876689

`A111954(n)-A008346(n)`
-/

namespace A006684.P17891712339952876689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n - A008346 n

end

end A006684.P17891712339952876689

namespace A006684

/-- `A111954(n)-A008346(n)` -/
def P17891712339952876689.Spec : Prop :=
  ∀ n, P17891712339952876689.a n = A006684 n

end A006684

/-! ## A006684.P2003563555232257641

`A174191(n)-A001611(n)`
-/

namespace A006684.P2003563555232257641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - A001611 n

end

end A006684.P2003563555232257641

namespace A006684

/-- `A174191(n)-A001611(n)` -/
def P2003563555232257641.Spec : Prop :=
  ∀ n, P2003563555232257641.a n = A006684 n

end A006684

/-! ## A006684.P8979549879311668413

`A209971(n)-A002062(n)`
-/

namespace A006684.P8979549879311668413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n - A002062 n

end

end A006684.P8979549879311668413

namespace A006684

/-- `A209971(n)-A002062(n)` -/
def P8979549879311668413.Spec : Prop :=
  ∀ n, P8979549879311668413.a n = A006684 n

end A006684

/-! ## A006684.P3579768457293205520

`A000129(n)+1-A001611(n)`
-/

namespace A006684.P3579768457293205520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (1 - A001611 n)

end

end A006684.P3579768457293205520

namespace A006684

/-- `A000129(n)+1-A001611(n)` -/
def P3579768457293205520.Spec : Prop :=
  ∀ n, P3579768457293205520.a n = A006684 n

end A006684

/-! ## A006684.P1286261708418663228

`A001932(n)-A118658(n+1)`
-/

namespace A006684.P1286261708418663228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001932 n - A118658 (n + 1)

end

end A006684.P1286261708418663228

namespace A006684

/-- `A001932(n)-A118658(n+1)` -/
def P1286261708418663228.Spec : Prop :=
  ∀ n, P1286261708418663228.a n = A006684 n

end A006684

/-! ## A006684.P10085224192103796034

`A152163(n+2)+A000129(n)`
-/

namespace A006684.P10085224192103796034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A000129 n

end

end A006684.P10085224192103796034

namespace A006684

/-- `A152163(n+2)+A000129(n)` -/
def P10085224192103796034.Spec : Prop :=
  ∀ n, P10085224192103796034.a n = A006684 n

end A006684

/-! ## A006684.P14043550563673946648

`A174191(n)-(A000045(n)+1)`
-/

namespace A006684.P14043550563673946648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - (A000045 n + 1)

end

end A006684.P14043550563673946648

namespace A006684

/-- `A174191(n)-(A000045(n)+1)` -/
def P14043550563673946648.Spec : Prop :=
  ∀ n, P14043550563673946648.a n = A006684 n

end A006684

/-! ## A006684.P17734222490784062180

`A000129(n)-A212804(n+1)`
-/

namespace A006684.P17734222490784062180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A212804 (n + 1)

end

end A006684.P17734222490784062180

namespace A006684

/-- `A000129(n)-A212804(n+1)` -/
def P17734222490784062180.Spec : Prop :=
  ∀ n, P17734222490784062180.a n = A006684 n

end A006684

/-! ## A006684.P10522202986698478401

`A215928(n)-A324969(n+1)`
-/

namespace A006684.P10522202986698478401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n - A324969 (n + 1)

end

end A006684.P10522202986698478401

namespace A006684

/-- `A215928(n)-A324969(n+1)` -/
def P10522202986698478401.Spec : Prop :=
  ∀ n, P10522202986698478401.a n = A006684 n

end A006684

/-! ## A006684.P3288473133599461816

`A000129(n)+2-A157725(n)`
-/

namespace A006684.P3288473133599461816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (2 - A157725 n)

end

end A006684.P3288473133599461816

namespace A006684

/-- `A000129(n)+2-A157725(n)` -/
def P3288473133599461816.Spec : Prop :=
  ∀ n, P3288473133599461816.a n = A006684 n

end A006684

/-! ## A006684.P15652168798471999919

`A001932(n)-2*A000045(n)`
-/

namespace A006684.P15652168798471999919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001932 n - 2 * A000045 n

end

end A006684.P15652168798471999919

namespace A006684

/-- `A001932(n)-2*A000045(n)` -/
def P15652168798471999919.Spec : Prop :=
  ∀ n, P15652168798471999919.a n = A006684 n

end A006684

/-! ## A006684.P13665275513116633642

`A002965(2*n)-A000045(n)`
-/

namespace A006684.P13665275513116633642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) - A000045 n

end

end A006684.P13665275513116633642

namespace A006684

/-- `A002965(2*n)-A000045(n)` -/
def P13665275513116633642.Spec : Prop :=
  ∀ n, P13665275513116633642.a n = A006684 n

end A006684

/-! ## A006684.P12703661667718032851

`A135153(2*n)-A000045(n)`
-/

namespace A006684.P12703661667718032851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) - A000045 n

end

end A006684.P12703661667718032851

namespace A006684

/-- `A135153(2*n)-A000045(n)` -/
def P12703661667718032851.Spec : Prop :=
  ∀ n, P12703661667718032851.a n = A006684 n

end A006684

/-! ## A006684.P15297147023465593190

`A249576(3*n)-A000045(n)`
-/

namespace A006684.P15297147023465593190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) - A000045 n

end

end A006684.P15297147023465593190

namespace A006684

/-- `A249576(3*n)-A000045(n)` -/
def P15297147023465593190.Spec : Prop :=
  ∀ n, P15297147023465593190.a n = A006684 n

end A006684

/-! ## A006684.P7317495527525612608

`A116560(6*n)-A000045(n)`
-/

namespace A006684.P7317495527525612608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) - A000045 n

end

end A006684.P7317495527525612608

namespace A006684

/-- `A116560(6*n)-A000045(n)` -/
def P7317495527525612608.Spec : Prop :=
  ∀ n, P7317495527525612608.a n = A006684 n

end A006684

/-!
# A006685: Coefficients for numerical integration.

The programs for A006685, there is no canonical definition to state claims against.
-/

/-! ## A006685.P14459405866021825270

`A002198(n)/(2*n+1)`
-/

namespace A006685.P14459405866021825270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002198 n : ℚ) / (2 * n + 1 : ℚ)

end

end A006685.P14459405866021825270

/-! ## A006685.P10085448402556016719

`floor(A002198(n)/A005408(n))`
-/

namespace A006685.P10085448402556016719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002198 n : ℚ) / (A005408 n : ℚ)⌋

end

end A006685.P10085448402556016719

/-! ## A006685.P8744575230276857289

`floor(A002198(n)/record[A300330(n+1)])`
-/

namespace A006685.P8744575230276857289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002198 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A006685.P8744575230276857289

/-! ## A006685.P6558409122376378008

`A002198(n)/A005408(n)*A033999(n)²`
-/

namespace A006685.P6558409122376378008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002198 n : ℚ) / (A005408 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A006685.P6558409122376378008

/-! ## A006685.P10945201293094837893

`A002198(n)/A005408(n)*A124927(∑[n])`
-/

namespace A006685.P10945201293094837893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002198 n : ℚ) / (A005408 n : ℚ) * (A124927 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A006685.P10945201293094837893

/-!
# A006686: Octavan primes: primes of the form p = x^8 + y^8.

The programs for A006686, there is no canonical definition to state claims against.
-/

/-! ## A006686.P12538180672897766500

`∩[A003380(n+1), A291206(n+1)]`
-/

namespace A006686.P12538180672897766500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006686.P12538180672897766500

/-! ## A006686.P519299491537518501

`∩[A004875(n+1), A291206(n+1)]`
-/

namespace A006686.P519299491537518501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006686.P519299491537518501

/-! ## A006686.P10737361215723119420

`∩[A004876(n+1), A291206(n+1)]`
-/

namespace A006686.P10737361215723119420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006686.P10737361215723119420

/-!
# A006689: Number of deterministic, completely-defined, initially-connected finite automata with 2 inputs and n unlabeled states.

The programs for A006689, there is no canonical definition to state claims against.
-/

/-! ## A006689.P4418747481369905109

`(n+1)²*A082166(n+1)`
-/

namespace A006689.P4418747481369905109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A082166 (n + 1)

end

end A006689.P4418747481369905109

/-! ## A006689.P15321638874154707604

`A082166(n+1)*A107668(n)/A107669(n)`
-/

namespace A006689.P15321638874154707604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082166 (n + 1) * A107668 n : ℚ) / (A107669 n : ℚ)

end

end A006689.P15321638874154707604

/-! ## A006689.P502456541165223123

`A082166(n+1)*A196051(2^(n+1))`
-/

namespace A006689.P502456541165223123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082166 (n + 1) * A196051 (2 ^ (n + 1))

end

end A006689.P502456541165223123

/-! ## A006689.P13893995933234943197

`A082166(n+1)*A163990(A000124(n))`
-/

namespace A006689.P13893995933234943197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082166 (n + 1) * A163990 (A000124 n).toNat

end

end A006689.P13893995933234943197

/-!
# A006690: Number of deterministic, completely-defined, initially-connected finite automata with 3 inputs and n unlabeled states.

The programs for A006690, there is no canonical definition to state claims against.
-/

/-! ## A006690.P12946053506179995779

`Δ[A000217(n)²]*A082168(n+1)`
-/

namespace A006690.P12946053506179995779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A082168 (n + 1)

end

end A006690.P12946053506179995779

/-! ## A006690.P3856632955103975356

`A082168(n+1)*A107672(n)/A107673(n)`
-/

namespace A006690.P3856632955103975356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082168 (n + 1) * A107672 n : ℚ) / (A107673 n : ℚ)

end

end A006690.P3856632955103975356

/-! ## A006690.P6704023233181833498

`A107676(∑[n])`
-/

namespace A006690.P6704023233181833498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006690.P6704023233181833498

/-!
# A006691: Normalized number of connected (n+1)-state finite automata with 2 inputs.

The programs for A006691, there is no canonical definition to state claims against.
-/

/-! ## A006691.P7540746495959772160

`A304312(n+1)`
-/

namespace A006691.P7540746495959772160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304312 (n + 1)

end

end A006691.P7540746495959772160

/-! ## A006691.P15417859961045122335

`record[A304312(A008612(n))]`
-/

namespace A006691.P15417859961045122335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304312 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006691.P15417859961045122335

/-! ## A006691.P13297148949229387389

`record[A304312(A158416(n))]`
-/

namespace A006691.P13297148949229387389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304312 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006691.P13297148949229387389

/-! ## A006691.P3083450424889543330

`record[A304312(A193592(n))]`
-/

namespace A006691.P3083450424889543330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304312 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006691.P3083450424889543330

/-! ## A006691.P3734724148670492648

`Δ[∑[A304312(n)]%A304317(n)]`
-/

namespace A006691.P3734724148670492648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A304317 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006691.P3734724148670492648

/-!
# A006692: Number of connected n-state finite automata with 3 inputs.

The programs for A006692, there is no canonical definition to state claims against.
-/

/-! ## A006692.P16329618952493507

`A304313(n+1)`
-/

namespace A006692.P16329618952493507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304313 (n + 1)

end

end A006692.P16329618952493507

/-! ## A006692.P14930975513405623830

`record[A304313(A008612(n))]`
-/

namespace A006692.P14930975513405623830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304313 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006692.P14930975513405623830

/-! ## A006692.P3168075249232226709

`record[A304313(A158416(n))]`
-/

namespace A006692.P3168075249232226709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304313 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006692.P3168075249232226709

/-! ## A006692.P8840391982987329285

`record[A304313(A193592(n))]`
-/

namespace A006692.P8840391982987329285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304313 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006692.P8840391982987329285

/-! ## A006692.P16385546179825654944

`A304321((n+3)²-∑[n+1])`
-/

namespace A006692.P16385546179825654944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304321 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006692.P16385546179825654944

/-!
# A006694: Number of cyclotomic cosets of 2 mod 2n+1.

The programs for A006694, there is no canonical definition to state claims against.
-/

/-! ## A006694.P7311228922711541710

`A081844(n)-1`
-/

namespace A006694.P7311228922711541710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n - 1

end

end A006694.P7311228922711541710

/-! ## A006694.P14191519600754882605

`A000374(2*n+1)-1`
-/

namespace A006694.P14191519600754882605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (2 * n + 1) - 1

end

end A006694.P14191519600754882605

/-! ## A006694.P9907813325112078249

`A327551(n+1)-2`
-/

namespace A006694.P9907813325112078249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327551 (n + 1) - 2

end

end A006694.P9907813325112078249

/-! ## A006694.P2865531563117347600

`A023443(A081844(n))`
-/

namespace A006694.P2865531563117347600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081844 n).toNat

end

end A006694.P2865531563117347600

/-! ## A006694.P16425217741313080089

`A023444(A327551(n+1))`
-/

namespace A006694.P16425217741313080089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A327551 (n + 1)).toNat

end

end A006694.P16425217741313080089

/-! ## A006694.P767264668946796765

`(A137576(n)-1)/A002326(n)`
-/

namespace A006694.P767264668946796765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137576 n - 1 : ℚ) / (A002326 n : ℚ)

end

end A006694.P767264668946796765

/-! ## A006694.P12216573245419957265

`A349340(A020639(n+3))+A081844(n)`
-/

namespace A006694.P12216573245419957265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A020639 (n + 3)).toNat + A081844 n

end

end A006694.P12216573245419957265

/-! ## A006694.P2586779007062762464

`A091248(Δ[n²])-1`
-/

namespace A006694.P2586779007062762464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A006694.P2586779007062762464

/-! ## A006694.P16984779842171287351

`A023443(A091248(2*n+1))`
-/

namespace A006694.P16984779842171287351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091248 (2 * n + 1)).toNat

end

end A006694.P16984779842171287351

/-! ## A006694.P12358907808277152778

`A349340(A000040(n+1))+A081844(n)`
-/

namespace A006694.P12358907808277152778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A081844 n

end

end A006694.P12358907808277152778

/-! ## A006694.P8716083664672848982

`A349340(A001359(n+1))+A081844(n)`
-/

namespace A006694.P8716083664672848982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A001359 (n + 1)).toNat + A081844 n

end

end A006694.P8716083664672848982

/-! ## A006694.P4515126747133387083

`A070198(n)%A081844(n)`
-/

namespace A006694.P4515126747133387083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A081844 n)

end

end A006694.P4515126747133387083

/-! ## A006694.P2314396394729858690

`A079782(n+1)%A081844(n)`
-/

namespace A006694.P2314396394729858690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A081844 n)

end

end A006694.P2314396394729858690

/-! ## A006694.P12723244513950818234

`A083685(n+1)%A081844(n)`
-/

namespace A006694.P12723244513950818234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A081844 n)

end

end A006694.P12723244513950818234

/-! ## A006694.P2386623291795259365

`A121934(n+1)%A081844(n)`
-/

namespace A006694.P2386623291795259365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A081844 n)

end

end A006694.P2386623291795259365

/-! ## A006694.P11683991738528273373

`A254078(n+2)%A327551(n+1)`
-/

namespace A006694.P11683991738528273373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A327551 (n + 1))

end

end A006694.P11683991738528273373

/-! ## A006694.P4466607066658618524

`A030494(n+1)%A081844(n)`
-/

namespace A006694.P4466607066658618524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A081844 n)

end

end A006694.P4466607066658618524

/-! ## A006694.P7037030141346047514

`A072828(n+1)%A081844(n)`
-/

namespace A006694.P7037030141346047514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A081844 n)

end

end A006694.P7037030141346047514

/-!
# A006695: a(2n)=2*a(2n-2)^2-1, a(2n+1)=2*a(2n)-1, a(0)=2.

The programs for A006695, there is no canonical definition to state claims against.
-/

/-! ## A006695.P2180860615031806672

`∪[A145503(n+1), A002812(n)]`
-/

namespace A006695.P2180860615031806672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006695.P2180860615031806672

/-! ## A006695.P6261229684047340257

`∪[A178497(n+1), A002812(n)]`
-/

namespace A006695.P6261229684047340257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006695.P6261229684047340257

/-! ## A006695.P11485171626667559653

`∪[A002812(n), A145503(A048379(n))]`
-/

namespace A006695.P11485171626667559653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145503 (A048379 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006695.P11485171626667559653

/-! ## A006695.P5729987718191932501

`record[A220335(n+2)-1]`
-/

namespace A006695.P5729987718191932501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220335 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006695.P5729987718191932501

/-! ## A006695.P12229758043330237671

`∪[A220335(3*n+2)-1, A145503(n+1)]`
-/

namespace A006695.P12229758043330237671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220335 (3 * n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006695.P12229758043330237671

/-!
# A006696: a(n) = min_{k=1..n} (a(k-1) + 2^k*(n + a(n-k))); a(0) = 0.

The programs for A006696, there is no canonical definition to state claims against.
-/

/-! ## A006696.P3834425488399629314

`∑[2*A000196(A091319(n+1))]`
-/

namespace A006696.P3834425488399629314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000196 (A091319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006696.P3834425488399629314

/-! ## A006696.P12242832648781328622

`A328002(n)-A275325(A194589(n))`
-/

namespace A006696.P12242832648781328622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328002 n - A275325 (A194589 n).toNat

end

end A006696.P12242832648781328622

/-!
# A006697: Number of subwords of length n in infinite word generated by a -> aab, b -> b.

The programs for A006697, the canonical program `A006697.P12909453823667468915` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006697 has offset 0).

The definition of A006697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006697.P17142036470431992483

`∑[∑[char[comp[2^n+n]]]]`
-/

namespace A006697.P17142036470431992483
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006697.P17142036470431992483

namespace A006697

/-- `∑[∑[char[comp[2^n+n]]]]` -/
def P17142036470431992483.Spec : Prop :=
  ∀ n, (P17142036470431992483.a n : ℤ) = A006697 n

end A006697

/-! ## A006697.P3983570653311554345

`∑[n-∑[char[or(n+1, 2^(n+1))]]]+1`
-/

namespace A006697.P3983570653311554345
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 ^ (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006697.P3983570653311554345

namespace A006697

/-- `∑[n-∑[char[or(n+1, 2^(n+1))]]]+1` -/
def P3983570653311554345.Spec : Prop :=
  ∀ n, P3983570653311554345.a n = A006697 n

end A006697

/-! ## A006697.P13008248789960026150

`∑[comp[2*comp[2*a(n-1)]]]-a(n-1)` with `a(0)=1`
-/

namespace A006697.P13008248789960026150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  2 * f3 (n - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A006697.P13008248789960026150

namespace A006697

/-- `∑[comp[2*comp[2*a(n-1)]]]-a(n-1)` -/
def P13008248789960026150.Spec : Prop :=
  ∀ n, P13008248789960026150.a n = A006697 n

end A006697

/-! ## A006697.P8919890739706989405

`2*∑[A103354(n+1)/2]`
-/

namespace A006697.P8919890739706989405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103354 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006697.P8919890739706989405

namespace A006697

/-- `2*∑[A103354(n+1)/2]` -/
def P8919890739706989405.Spec : Prop :=
  ∀ n, P8919890739706989405.a n = (A006697 n : ℚ)

end A006697

/-! ## A006697.P13556732594583464368

`∑[∑[A288132(n+1)]]+n+1`
-/

namespace A006697.P13556732594583464368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A006697.P13556732594583464368

namespace A006697

/-- `∑[∑[A288132(n+1)]]+n+1` -/
def P13556732594583464368.Spec : Prop :=
  ∀ n, P13556732594583464368.a n = A006697 n

end A006697

/-! ## A006697.P12909453823667468915

`A002984(n)+A109965(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006697

/-- `A002984(n)+A109965(n)-1` -/
def P12909453823667468915.Spec : Prop :=
  ∀ n, P12909453823667468915.a n = A006697 n

theorem P12909453823667468915.correct : P12909453823667468915.Spec := by
  intro n
  simp only [A006697]

end A006697

/-! ## A006697.P16696118207046817052

`∑[A103354(n+1)]%A001535(n)`
-/

namespace A006697.P16696118207046817052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001535 n)

end

end A006697.P16696118207046817052

namespace A006697

/-- `∑[A103354(n+1)]%A001535(n)` -/
def P16696118207046817052.Spec : Prop :=
  ∀ n, P16696118207046817052.a n = A006697 n

end A006697

/-! ## A006697.P9958678179500916731

`or(∑[A103354(n+1)], A000007(n))`
-/

namespace A006697.P9958678179500916731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A006697.P9958678179500916731

namespace A006697

/-- `or(∑[A103354(n+1)], A000007(n))` -/
def P9958678179500916731.Spec : Prop :=
  ∀ n, P9958678179500916731.a n = A006697 n

end A006697

/-! ## A006697.P6662512794315322223

`A000007(n+1)+∑[A103354(n+1)]`
-/

namespace A006697.P6662512794315322223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006697.P6662512794315322223

namespace A006697

/-- `A000007(n+1)+∑[A103354(n+1)]` -/
def P6662512794315322223.Spec : Prop :=
  ∀ n, P6662512794315322223.a n = A006697 n

end A006697

/-! ## A006697.P14693947997040141189

`A127419(n+2)-2`
-/

namespace A006697.P14693947997040141189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127419 (n + 2) - 2

end

end A006697.P14693947997040141189

namespace A006697

/-- `A127419(n+2)-2` -/
def P14693947997040141189.Spec : Prop :=
  ∀ n, P14693947997040141189.a n = A006697 n

end A006697

/-! ## A006697.P2083773208295869461

`record[A000124(A053645(n+1))+n]`
-/

namespace A006697.P2083773208295869461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A053645 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006697.P2083773208295869461

namespace A006697

/-- `record[A000124(A053645(n+1))+n]` -/
def P2083773208295869461.Spec : Prop :=
  ∀ n, P2083773208295869461.a n = A006697 n

end A006697

/-! ## A006697.P8788362033866320581

`A002024(a(n-2)+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A006697.P8788362033866320581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002024 (a (n - 2) + 1).toNat + a (n - 1)

end

end A006697.P8788362033866320581

namespace A006697

/-- `A002024(a(n-2)+1)+a(n-1)` -/
def P8788362033866320581.Spec : Prop :=
  ∀ n, P8788362033866320581.a n = A006697 n

end A006697

/-! ## A006697.P2224975593305576820

`A035254(a(n-1)+2)` with `a(0)=1`
-/

namespace A006697.P2224975593305576820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035254 (a (n - 1) + 2).toNat

end

end A006697.P2224975593305576820

namespace A006697

/-- `A035254(a(n-1)+2)` -/
def P2224975593305576820.Spec : Prop :=
  ∀ n, P2224975593305576820.a n = A006697 n

end A006697

/-! ## A006697.P18113519701999246283

`A003056(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A006697.P18113519701999246283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (a (n - 1) + 1).toNat + a (n - 1)

end

end A006697.P18113519701999246283

namespace A006697

/-- `A003056(a(n-1)+1)+a(n-1)` -/
def P18113519701999246283.Spec : Prop :=
  ∀ n, P18113519701999246283.a n = A006697 n

end A006697

/-! ## A006697.P13922364628421354924

`A035254(A127419(n+1))`
-/

namespace A006697.P13922364628421354924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035254 (A127419 (n + 1)).toNat

end

end A006697.P13922364628421354924

namespace A006697

/-- `A035254(A127419(n+1))` -/
def P13922364628421354924.Spec : Prop :=
  ∀ n, P13922364628421354924.a n = A006697 n

end A006697

/-! ## A006697.P11246410507009895734

`A065562(A000124(n+1))-1`
-/

namespace A006697.P11246410507009895734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065562 (A000124 (n + 1)).toNat - 1

end

end A006697.P11246410507009895734

namespace A006697

/-- `A065562(A000124(n+1))-1` -/
def P11246410507009895734.Spec : Prop :=
  ∀ n, P11246410507009895734.a n = A006697 n

end A006697

/-! ## A006697.P15324215198332250082

`A065562(Δ[A000125(n+1)])-1`
-/

namespace A006697.P15324215198332250082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065562 (f1 (n + 1) - f1 n).toNat - 1

end

end A006697.P15324215198332250082

namespace A006697

/-- `A065562(Δ[A000125(n+1)])-1` -/
def P15324215198332250082.Spec : Prop :=
  ∀ n, P15324215198332250082.a n = A006697 n

end A006697

/-! ## A006697.P7306669135172911815

`A065562(Δ[A004006(n+1)])-1`
-/

namespace A006697.P7306669135172911815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065562 (f1 (n + 1) - f1 n).toNat - 1

end

end A006697.P7306669135172911815

namespace A006697

/-- `A065562(Δ[A004006(n+1)])-1` -/
def P7306669135172911815.Spec : Prop :=
  ∀ n, P7306669135172911815.a n = A006697 n

end A006697

/-! ## A006697.P8743481501713410207

`a(n-1)+n-A284248(n)` with `a(0)=1`
-/

namespace A006697.P8743481501713410207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A284248 n)

end

end A006697.P8743481501713410207

namespace A006697

/-- `a(n-1)+n-A284248(n)` -/
def P8743481501713410207.Spec : Prop :=
  ∀ n, P8743481501713410207.a n = A006697 n

end A006697

/-!
# A006698: T(2,2n), where T(k,m) is the number of sequences a_1,...,a_m of integers 0,1,...,n with n=floor(m/k) such that the 'bumped' sequence b_1,...,b_m has exactly k of each of 0,...,n-1, where b_i=a_i + j (mod n+1) with minimal j>=0 such that b_0,...,b_i contain at most k elements equal to b_i.

The programs for A006698, there is no canonical definition to state claims against.
-/

/-! ## A006698.P2765942763978514255

`A260419(A140064(n))`
-/

namespace A006698.P2765942763978514255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260419 (A140064 n).toNat

end

end A006698.P2765942763978514255

/-! ## A006698.P10247720123535289764

`A260419(A062708(n)+1)`
-/

namespace A006698.P10247720123535289764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260419 (A062708 n + 1).toNat

end

end A006698.P10247720123535289764

/-! ## A006698.P18300557821586526073

`record[A138734(n)]/A000302(n)`
-/

namespace A006698.P18300557821586526073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138734 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000302 n : ℚ)

end

end A006698.P18300557821586526073

/-! ## A006698.P11639848607805363525

`A138734(2*n)/A000302(n)`
-/

namespace A006698.P11639848607805363525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138734 (2 * n) : ℚ) / (A000302 n : ℚ)

end

end A006698.P11639848607805363525

/-! ## A006698.P4666721248221361622

`A138734(2*n)/A011782(n+1)²`
-/

namespace A006698.P4666721248221361622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138734 (2 * n) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ)

end

end A006698.P4666721248221361622

/-!
# A006699: T(3,3n), where T(k,m) is the number of sequences a_1,...,a_m of integers 0,1,...,n with n=floor(m/k) such that the 'bumped' sequence b_1,...,b_m has exactly k of each of 0,...,n-1, where b_i=a_i + j (mod n+1) with minimal j>=0 such that b_0,...,b_i contain at most k elements equal to b_i.

The programs for A006699, there is no canonical definition to state claims against.
-/

/-! ## A006699.P16552810021824782442

`A260419(A139273(n)+1)`
-/

namespace A006699.P16552810021824782442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260419 (A139273 n + 1).toNat

end

end A006699.P16552810021824782442

/-! ## A006699.P17217002527564257664

`A260419(A080856(n)+n)`
-/

namespace A006699.P17217002527564257664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260419 (A080856 n + (n : ℤ)).toNat

end

end A006699.P17217002527564257664

