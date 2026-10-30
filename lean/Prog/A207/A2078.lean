import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207800: Permutation of positive numbers. See comments.

The programs for A207800, there is no canonical definition to state claims against.
-/

/-! ## A207800.P8220030112249723887

`A066884(A209268(A065190(n+1)))`
-/

namespace A207800.P8220030112249723887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A209268 (A065190 (n + 1)).toNat).toNat

end

end A207800.P8220030112249723887

/-! ## A207800.P3963677195670229134

`A067576(A249725(A065190(A249725(A135764(n+1)))))`
-/

namespace A207800.P3963677195670229134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A249725 (A065190 (A249725 (A135764 (n + 1)).toNat).toNat).toNat).toNat

end

end A207800.P3963677195670229134

/-! ## A207800.P18387895135923433231

`and(A067722(A157782(n)), A075427(n))`
-/

namespace A207800.P18387895135923433231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067722 (A157782 n).toNat) (A075427 n)

end

end A207800.P18387895135923433231

/-!
# A207801: Permutation of positive numbers. See comments.

The programs for A207801, there is no canonical definition to state claims against.
-/

/-! ## A207801.P15774789992242705587

`A249811(A028310(n))+A057427(n)`
-/

namespace A207801.P15774789992242705587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A028310 n).toNat + A057427 n

end

end A207801.P15774789992242705587

/-! ## A207801.P6772298444244359535

`A249811(A028310(n))-A057428(n)`
-/

namespace A207801.P6772298444244359535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A028310 n).toNat - A057428 n

end

end A207801.P6772298444244359535

/-! ## A207801.P12584294022707014725

`A358770(A139827(n+1))+A249811(A028310(n))`
-/

namespace A207801.P12584294022707014725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (A139827 (n + 1)).toNat + A249811 (A028310 n).toNat

end

end A207801.P12584294022707014725

/-! ## A207801.P3417040176817615079

`A298268(A207802(n+1))`
-/

namespace A207801.P3417040176817615079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298268 (A207802 (n + 1)).toNat

end

end A207801.P3417040176817615079

/-! ## A207801.P5030178208161006542

`A005940(n+1)-A000188(A166095(3*(n+1)))+1`
-/

namespace A207801.P5030178208161006542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A000188 (A166095 (3 * (n + 1))).toNat + 1

end

end A207801.P5030178208161006542

/-!
# A207802: Permutation of positive numbers. See comments.

The programs for A207802, there is no canonical definition to state claims against.
-/

/-! ## A207802.P1836280529971819426

`A298882(A207801(n+1))`
-/

namespace A207802.P1836280529971819426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298882 (A207801 (n + 1)).toNat

end

end A207802.P1836280529971819426

/-! ## A207802.P4732698121507854297

`A122111(A207790(n+1)%A114881(3*(n+1)))`
-/

namespace A207802.P4732698121507854297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A207790 (n + 1)) (A114881 (3 * (n + 1)))).toNat

end

end A207802.P4732698121507854297

/-! ## A207802.P7564797429733110561

`A122111(A207790(n+1))%A018252(A000051(n))`
-/

namespace A207802.P7564797429733110561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (A207790 (n + 1)).toNat) (A018252 (A000051 n).toNat)

end

end A207802.P7564797429733110561

/-!
# A207803: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207803, there is no canonical definition to state claims against.
-/

/-! ## A207803.P11101929215877406737

`A207808(∑[4*n]+1)`
-/

namespace A207803.P11101929215877406737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207803.P11101929215877406737

/-! ## A207803.P17767524488799312899

`lcm(2, A207808(A001844(n)))`
-/

namespace A207803.P17767524488799312899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207808 (A001844 n).toNat)

end

end A207803.P17767524488799312899

/-! ## A207803.P17085939779723370212

`record[A003982(n)*A207808(n+1)]`
-/

namespace A207803.P17085939779723370212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207803.P17085939779723370212

/-! ## A207803.P6032970264636410758

`record[gcd(A114327(n), A207808(n+1))]`
-/

namespace A207803.P6032970264636410758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207803.P6032970264636410758

/-! ## A207803.P6166546161000076540

`record[root(A207808(n+1), A280172(n+1))]`
-/

namespace A207803.P6166546161000076540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207803.P6166546161000076540

/-!
# A207804: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207804, there is no canonical definition to state claims against.
-/

/-! ## A207804.P4244611098416351157

`A206981(n+1)/A207249(n+1)*A207855(n+1)`
-/

namespace A207804.P4244611098416351157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206981 (n + 1) : ℚ) / (A207249 (n + 1) : ℚ) * (A207855 (n + 1) : ℚ)

end

end A207804.P4244611098416351157

/-! ## A207804.P2453607609620671457

`A207249(n+1)/A207854(n+1)*A207855(n+1)`
-/

namespace A207804.P2453607609620671457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A207854 (n + 1) : ℚ) * (A207855 (n + 1) : ℚ)

end

end A207804.P2453607609620671457

/-! ## A207804.P5931597049013312268

`sqrt(A206981(n+1))*sqrt(A207856(n+1))`
-/

namespace A207804.P5931597049013312268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A207856 (n + 1) : ℝ)

end

end A207804.P5931597049013312268

/-! ## A207804.P12093179361094326584

`A207249(n+1)/A207855(n+1)*A207856(n+1)`
-/

namespace A207804.P12093179361094326584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A207855 (n + 1) : ℚ) * (A207856 (n + 1) : ℚ)

end

end A207804.P12093179361094326584

/-! ## A207804.P3137559979277818350

`sqrt(A206981(n+1)*A207856(n+1))`
-/

namespace A207804.P3137559979277818350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A207856 (n + 1) : ℝ)

end

end A207804.P3137559979277818350

/-!
# A207805: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207805, there is no canonical definition to state claims against.
-/

/-! ## A207805.P1860708385811741805

`A207249(n+1)/A207855(n+1)*A207857(n+1)`
-/

namespace A207805.P1860708385811741805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A207855 (n + 1) : ℚ) * (A207857 (n + 1) : ℚ)

end

end A207805.P1860708385811741805

/-! ## A207805.P9986557230214397385

`A207808(Δ[A264443(n)])`
-/

namespace A207805.P9986557230214397385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (f1 (n + 1) - f1 n).toNat

end

end A207805.P9986557230214397385

/-! ## A207805.P1230345246939572252

`A207808(A046691(n+3))`
-/

namespace A207805.P1230345246939572252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A046691 (n + 3)).toNat

end

end A207805.P1230345246939572252

/-! ## A207805.P5658431971366702630

`A207808(eq[4, A193592(n)])`
-/

namespace A207805.P5658431971366702630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207805.P5658431971366702630

/-! ## A207805.P2183075039773475959

`A207808(Δ[A023545(n+1)])`
-/

namespace A207805.P2183075039773475959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (f1 (n + 1) - f1 n).toNat

end

end A207805.P2183075039773475959

/-!
# A207806: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207806, there is no canonical definition to state claims against.
-/

/-! ## A207806.P9209131367645578134

`A207808(A056119(n)+16)`
-/

namespace A207806.P9209131367645578134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A056119 n + 16).toNat

end

end A207806.P9209131367645578134

/-! ## A207806.P11188526132730331361

`A207808(eq[3, A219347(n)])`
-/

namespace A207806.P11188526132730331361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207806.P11188526132730331361

/-! ## A207806.P5566099550991071616

`A207808(eq[5, A193592(n)])`
-/

namespace A207806.P5566099550991071616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207806.P5566099550991071616

/-! ## A207806.P11790940137376442329

`A207808(eq[8, A258709(n)])`
-/

namespace A207806.P11790940137376442329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207806.P11790940137376442329

/-! ## A207806.P3103732495739688333

`A207808(eq[8, A185782(n+1)])`
-/

namespace A207806.P3103732495739688333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207806.P3103732495739688333

/-!
# A207807: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207807, there is no canonical definition to state claims against.
-/

/-! ## A207807.P1967921744834380930

`A207808(A055999(n+4))`
-/

namespace A207807.P1967921744834380930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A055999 (n + 4)).toNat

end

end A207807.P1967921744834380930

/-! ## A207807.P10319781018686934014

`A207808(eq[4, A219347(n)])`
-/

namespace A207807.P10319781018686934014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207807.P10319781018686934014

/-! ## A207807.P8583122317734042561

`A207808(eq[6, A193592(n)])`
-/

namespace A207807.P8583122317734042561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207807.P8583122317734042561

/-! ## A207807.P392921301807894311

`A207808(eq[10, A185782(n+1)])`
-/

namespace A207807.P392921301807894311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207807.P392921301807894311

/-! ## A207807.P11682275603442165428

`A207808(eq[7, A200370(n+1)])`
-/

namespace A207807.P11682275603442165428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207807.P11682275603442165428

/-!
# A207808: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207808, there is no canonical definition to state claims against.
-/

/-! ## A207808.P3301032469604792547

`A010673(A108411(n))*A238654(n+1)`
-/

namespace A207808.P3301032469604792547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A108411 n).toNat * A238654 (n + 1)

end

end A207808.P3301032469604792547

/-! ## A207808.P8539474993485506297

`A001227(A001632(n+1))*A238654(n+1)`
-/

namespace A207808.P8539474993485506297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A001632 (n + 1)).toNat * A238654 (n + 1)

end

end A207808.P8539474993485506297

/-! ## A207808.P16979187031589189225

`A000005(A006794(n+1))*A238654(n+1)`
-/

namespace A207808.P16979187031589189225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006794 (n + 1)).toNat * A238654 (n + 1)

end

end A207808.P16979187031589189225

/-! ## A207808.P9167216301223631923

`A001227(A069246(n+1))*A238654(n+1)`
-/

namespace A207808.P9167216301223631923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A069246 (n + 1)).toNat * A238654 (n + 1)

end

end A207808.P9167216301223631923

/-! ## A207808.P18409261771014036620

`A001055(A327978(n+1))*A238654(n+1)`
-/

namespace A207808.P18409261771014036620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A327978 (n + 1)).toNat * A238654 (n + 1)

end

end A207808.P18409261771014036620

/-!
# A207809: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207809, there is no canonical definition to state claims against.
-/

/-! ## A207809.P13065237429112113499

`A207808(A052905(n)+9)`
-/

namespace A207809.P13065237429112113499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A052905 n + 9).toNat

end

end A207809.P13065237429112113499

/-! ## A207809.P2235258022183534494

`A207808(A055999(n)+10)`
-/

namespace A207809.P2235258022183534494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A055999 n + 10).toNat

end

end A207809.P2235258022183534494

/-! ## A207809.P10416792243252922538

`A207808(A167614(n+2)+1)`
-/

namespace A207809.P10416792243252922538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A167614 (n + 2) + 1).toNat

end

end A207809.P10416792243252922538

/-! ## A207809.P9192399763875439979

`A207808(A000124(n+3)+3)`
-/

namespace A207809.P9192399763875439979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A000124 (n + 3) + 3).toNat

end

end A207809.P9192399763875439979

/-! ## A207809.P10850386209830912428

`A207808(A000217(n+3)+4)`
-/

namespace A207809.P10850386209830912428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A000217 (n + 3) + 4).toNat

end

end A207809.P10850386209830912428

/-!
# A207810: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207810, there is no canonical definition to state claims against.
-/

/-! ## A207810.P10673838484281315840

`A207808(A167499(n+3))`
-/

namespace A207810.P10673838484281315840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A167499 (n + 3)).toNat

end

end A207810.P10673838484281315840

/-! ## A207810.P10768416623378079666

`A207808(A056000(n)+15)`
-/

namespace A207810.P10768416623378079666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A056000 n + 15).toNat

end

end A207810.P10768416623378079666

/-! ## A207810.P12592631004917869383

`A207808(A027379(n+2)+8)`
-/

namespace A207810.P12592631004917869383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A027379 (n + 2) + 8).toNat

end

end A207810.P12592631004917869383

/-! ## A207810.P3635632170216427659

`A207808(A134869(n+5)-(n+1))`
-/

namespace A207810.P3635632170216427659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A134869 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207810.P3635632170216427659

/-! ## A207810.P1031433440733171992

`record[A207808(n+11)/A079502(n+6)]`
-/

namespace A207810.P1031433440733171992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 11) : ℚ) / (A079502 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207810.P1031433440733171992

/-!
# A207811: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207811, there is no canonical definition to state claims against.
-/

/-! ## A207811.P17308872932779533848

`A207808(Δ[A264443(n)]+10)`
-/

namespace A207811.P17308872932779533848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (f1 (n + 1) - f1 n + 10).toNat

end

end A207811.P17308872932779533848

/-! ## A207811.P5748252742160553123

`A207808(A167499(n+4)+1)`
-/

namespace A207811.P5748252742160553123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A167499 (n + 4) + 1).toNat

end

end A207811.P5748252742160553123

/-! ## A207811.P10609568331537810103

`A207808(A167487(n+4)-1)`
-/

namespace A207811.P10609568331537810103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A167487 (n + 4) - 1).toNat

end

end A207811.P10609568331537810103

/-! ## A207811.P5777686221897249763

`A207808(A000217(n+5)+6)`
-/

namespace A207811.P5777686221897249763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A000217 (n + 5) + 6).toNat

end

end A207811.P5777686221897249763

/-! ## A207811.P16784436148021512266

`A207808(A052905(n+2)+11)`
-/

namespace A207811.P16784436148021512266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A052905 (n + 2) + 11).toNat

end

end A207811.P16784436148021512266

/-!
# A207812: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207812, there is no canonical definition to state claims against.
-/

/-! ## A207812.P5675935172206538246

`A207808(A056119(n)+28)`
-/

namespace A207812.P5675935172206538246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A056119 n + 28).toNat

end

end A207812.P5675935172206538246

/-! ## A207812.P4041333978545133126

`A207808(eq[11, A066657(n)])`
-/

namespace A207812.P4041333978545133126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207812.P4041333978545133126

/-! ## A207812.P569477400628290013

`A207808(A000217(n+6)+7)`
-/

namespace A207812.P569477400628290013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A000217 (n + 6) + 7).toNat

end

end A207812.P569477400628290013

/-! ## A207812.P14625446794027709175

`A207808(eq[8, A131818(n+1)])`
-/

namespace A207812.P14625446794027709175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207812.P14625446794027709175

/-! ## A207812.P7651435901069359383

`A207808(A056126(n)+28-2*n)`
-/

namespace A207812.P7651435901069359383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (A056126 n + 28 - (2 * n : ℤ)).toNat

end

end A207812.P7651435901069359383

/-!
# A207813: Numbers that match irreducible Zeckendorf polynomials.

The programs for A207813, there is no canonical definition to state claims against.
-/

/-! ## A207813.P15621119362579731328

`lt[0, A257000(A003714(n))]`
-/

namespace A207813.P15621119362579731328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A207813.P15621119362579731328

/-! ## A207813.P14098952805549274720

`eq[1, A257000(A003714(1+n))]+1`
-/

namespace A207813.P14098952805549274720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A003714 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A207813.P14098952805549274720

/-! ## A207813.P3047392486325124743

`eq[1, A257000(A003714(2*n-n))]`
-/

namespace A207813.P3047392486325124743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A003714 (2 * n - n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207813.P3047392486325124743

/-! ## A207813.P11110115676750620386

`lt[0, A257000(record[A090077(n)])]`
-/

namespace A207813.P11110115676750620386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A207813.P11110115676750620386

/-! ## A207813.P10078076508324419920

`eq[1, A257000(A003714(n))]%A042006(n)`
-/

namespace A207813.P10078076508324419920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A003714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A042006 n)

end

end A207813.P10078076508324419920

/-! ## A207813.P7637272150753975068

`lt[0, A257000(record[A341691(n)])]`
-/

namespace A207813.P7637272150753975068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A207813.P7637272150753975068

/-!
# A207814: Series expansion of the reciprocal of the generating function of A068432.

The programs for A207814, there is no canonical definition to state claims against.
-/

/-! ## A207814.P17277279273032603160

`A374078(2*(n+2))%A000290(A187926(2*(n+2)))`
-/

namespace A207814.P17277279273032603160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374078 (2 * (n + 2))) (A000290 (A187926 (2 * (n + 2))).toNat)

end

end A207814.P17277279273032603160

/-!
# A207815: Triangle of coefficients of Chebyshev's S(n,x-3) polynomials (exponents of x in increasing order).

The programs for A207815, the canonical program `A207815.P12303985322014570712` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207815 has offset 0).

The definition of A207815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207815.P12303985322014570712

`(-1)^(row(n)-col(n))*A125662(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207815

/-- `(-1)^(row(n)-col(n))*A125662(C(row(n)+1, 2)+col(n))` -/
def P12303985322014570712.Spec : Prop :=
  ∀ n, P12303985322014570712.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P15204167341722900115

`T(n-1,k-1)-3*T(n-1,k)-T(n-2,k)` with `a(0)=1`
-/

namespace A207815.P15204167341722900115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 3 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n

end

end A207815.P15204167341722900115

namespace A207815

/-- `T(n-1,k-1)-3*T(n-1,k)-T(n-2,k)` -/
def P15204167341722900115.Spec : Prop :=
  ∀ n, P15204167341722900115.a n = A207815 n

end A207815

/-! ## A207815.P15268994728088303265

`A126124(n+1)-T(n-1,k)` with `a(0)=1`
-/

namespace A207815.P15268994728088303265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126124 (n + 1) - SequenceMachineLib.triUp a n

end

end A207815.P15268994728088303265

namespace A207815

/-- `A126124(n+1)-T(n-1,k)` -/
def P15268994728088303265.Spec : Prop :=
  ∀ n, P15268994728088303265.a n = A207815 n

end A207815

/-! ## A207815.P1560528310687452603

`A097807(n)*A125662(n)`
-/

namespace A207815.P1560528310687452603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A125662 n

end

end A207815.P1560528310687452603

namespace A207815

/-- `A097807(n)*A125662(n)` -/
def P1560528310687452603.Spec : Prop :=
  ∀ n, P1560528310687452603.a n = A207815 n

end A207815

/-! ## A207815.P10991330263402091569

`abs(A123965(n))*A097807(n)`
-/

namespace A207815.P10991330263402091569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123965 n| * A097807 n

end

end A207815.P10991330263402091569

namespace A207815

/-- `abs(A123965(n))*A097807(n)` -/
def P10991330263402091569.Spec : Prop :=
  ∀ n, P10991330263402091569.a n = A207815 n

end A207815

/-! ## A207815.P12163962461250986397

`A033999(A003056(n))*A123965(n)`
-/

namespace A207815.P12163962461250986397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A123965 n

end

end A207815.P12163962461250986397

namespace A207815

/-- `A033999(A003056(n))*A123965(n)` -/
def P12163962461250986397.Spec : Prop :=
  ∀ n, P12163962461250986397.a n = A207815 n

end A207815

/-! ## A207815.P16694410007071497588

`A097807(A057944(n))*A123965(n)`
-/

namespace A207815.P16694410007071497588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A123965 n

end

end A207815.P16694410007071497588

namespace A207815

/-- `A097807(A057944(n))*A123965(n)` -/
def P16694410007071497588.Spec : Prop :=
  ∀ n, P16694410007071497588.a n = A207815 n

end A207815

/-! ## A207815.P8453492654192639896

`A053122(n)/A078812(n)*A125662(n)`
-/

namespace A207815.P8453492654192639896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A125662 n : ℚ)

end

end A207815.P8453492654192639896

namespace A207815

/-- `A053122(n)/A078812(n)*A125662(n)` -/
def P8453492654192639896.Spec : Prop :=
  ∀ n, P8453492654192639896.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P11209988274210236820

`A123965(n)/A124029(n)*A159764(n)`
-/

namespace A207815.P11209988274210236820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n : ℚ) / (A124029 n : ℚ) * (A159764 n : ℚ)

end

end A207815.P11209988274210236820

namespace A207815

/-- `A123965(n)/A124029(n)*A159764(n)` -/
def P11209988274210236820.Spec : Prop :=
  ∀ n, P11209988274210236820.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P1228024720820283193

`A125662(n)/A159764(n)*A207823(n)`
-/

namespace A207815.P1228024720820283193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125662 n : ℚ) / (A159764 n : ℚ) * (A207823 n : ℚ)

end

end A207815.P1228024720820283193

namespace A207815

/-- `A125662(n)/A159764(n)*A207823(n)` -/
def P1228024720820283193.Spec : Prop :=
  ∀ n, P1228024720820283193.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P9277033632176707911

`A126124(n+1)/A123971(n)*A123965(n)`
-/

namespace A207815.P9277033632176707911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126124 (n + 1) : ℚ) / (A123971 n : ℚ) * (A123965 n : ℚ)

end

end A207815.P9277033632176707911

namespace A207815

/-- `A126124(n+1)/A123971(n)*A123965(n)` -/
def P9277033632176707911.Spec : Prop :=
  ∀ n, P9277033632176707911.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P11344922979893270340

`Δ[A010751(n)]*A123965(n)`
-/

namespace A207815.P11344922979893270340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123965 n

end

end A207815.P11344922979893270340

namespace A207815

/-- `Δ[A010751(n)]*A123965(n)` -/
def P11344922979893270340.Spec : Prop :=
  ∀ n, P11344922979893270340.a n = A207815 n

end A207815

/-! ## A207815.P2479721892943415487

`A123967(n)/A207824(n)*A125662(n)`
-/

namespace A207815.P2479721892943415487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A207824 n : ℚ) * (A125662 n : ℚ)

end

end A207815.P2479721892943415487

namespace A207815

/-- `A123967(n)/A207824(n)*A125662(n)` -/
def P2479721892943415487.Spec : Prop :=
  ∀ n, P2479721892943415487.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P7411991585745819112

`A123965(n)/A033999(A003056(n)²)`
-/

namespace A207815.P7411991585745819112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n : ℚ) / (A033999 (A003056 n ^ 2).toNat : ℚ)

end

end A207815.P7411991585745819112

namespace A207815

/-- `A123965(n)/A033999(A003056(n)²)` -/
def P7411991585745819112.Spec : Prop :=
  ∀ n, P7411991585745819112.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P8837985298838451849

`A033999(A063656(n))*A125662(n)`
-/

namespace A207815.P8837985298838451849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A125662 n

end

end A207815.P8837985298838451849

namespace A207815

/-- `A033999(A063656(n))*A125662(n)` -/
def P8837985298838451849.Spec : Prop :=
  ∀ n, P8837985298838451849.a n = A207815 n

end A207815

/-! ## A207815.P10409591215724001236

`A087960(A133280(n))*A125662(n)`
-/

namespace A207815.P10409591215724001236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A133280 n).toNat * A125662 n

end

end A207815.P10409591215724001236

namespace A207815

/-- `A087960(A133280(n))*A125662(n)` -/
def P10409591215724001236.Spec : Prop :=
  ∀ n, P10409591215724001236.a n = A207815 n

end A207815

/-! ## A207815.P1251741952574502278

`A123965(n)*A124029(n)/A159764(n)`
-/

namespace A207815.P1251741952574502278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n * A124029 n : ℚ) / (A159764 n : ℚ)

end

end A207815.P1251741952574502278

namespace A207815

/-- `A123965(n)*A124029(n)/A159764(n)` -/
def P1251741952574502278.Spec : Prop :=
  ∀ n, P1251741952574502278.a n = (A207815 n : ℚ)

end A207815

/-! ## A207815.P4167976862894206968

`A123967(n)*A125662(n)/A207824(n)`
-/

namespace A207815.P4167976862894206968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n * A125662 n : ℚ) / (A207824 n : ℚ)

end

end A207815.P4167976862894206968

namespace A207815

/-- `A123967(n)*A125662(n)/A207824(n)` -/
def P4167976862894206968.Spec : Prop :=
  ∀ n, P4167976862894206968.a n = (A207815 n : ℚ)

end A207815

/-!
# A207816: Number of distinct necklaces with n red, n green, n blue and n white beads.

The programs for A207816, there is no canonical definition to state claims against.
-/

/-! ## A207816.P7511938641518400374

`A208183(A052905(n+2))`
-/

namespace A207816.P7511938641518400374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A052905 (n + 2)).toNat

end

end A207816.P7511938641518400374

/-! ## A207816.P18247830475314596134

`A208183(A056115(n)+10)`
-/

namespace A207816.P18247830475314596134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A056115 n + 10).toNat

end

end A207816.P18247830475314596134

/-! ## A207816.P4723168281199176548

`A208183(eq[4, A025581(n)])`
-/

namespace A207816.P4723168281199176548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207816.P4723168281199176548

/-! ## A207816.P4073705247580325001

`A208183(eq[5, A193739(n)])`
-/

namespace A207816.P4073705247580325001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207816.P4073705247580325001

/-! ## A207816.P13389532135216263020

`A208183(eq[9, A099375(n)])`
-/

namespace A207816.P13389532135216263020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207816.P13389532135216263020

/-!
# A207817: a(n) = (4*n)! / (n!^4 * (n+1)).

The programs for A207817, the canonical program `A207817.P16754240802910683698` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207817 has offset 0).

The definition of A207817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207817.P16754240802910683698

`(4*n)!/(n!^4*(n+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207817

/-- `(4*n)!/(n!^4*(n+1))` -/
def P16754240802910683698.Spec : Prop :=
  ∀ n, P16754240802910683698.a n = (A207817 n : ℚ)

end A207817

/-! ## A207817.P4936297100953355451

`(n+1)*A342983(n)`
-/

namespace A207817.P4936297100953355451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342983 n

end

end A207817.P4936297100953355451

namespace A207817

/-- `(n+1)*A342983(n)` -/
def P4936297100953355451.Spec : Prop :=
  ∀ n, P4936297100953355451.a n = A207817 n

end A207817

/-! ## A207817.P826069593921181285

`C(3*n, n)*C(4*n, n)*A000108(n)`
-/

namespace A207817.P826069593921181285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (4 * n) n : ℤ) * A000108 n

end

end A207817.P826069593921181285

namespace A207817

/-- `C(3*n, n)*C(4*n, n)*A000108(n)` -/
def P826069593921181285.Spec : Prop :=
  ∀ n, P826069593921181285.a n = A207817 n

end A207817

/-! ## A207817.P16617272710201229735

`C(2*n, n)/(n+1)*C(4*n, 2*n)*A000984(n)`
-/

namespace A207817.P16617272710201229735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.choose (4 * n) (2 * n) : ℚ) * (A000984 n : ℚ)

end

end A207817.P16617272710201229735

namespace A207817

/-- `C(2*n, n)/(n+1)*C(4*n, 2*n)*A000984(n)` -/
def P16617272710201229735.Spec : Prop :=
  ∀ n, P16617272710201229735.a n = (A207817 n : ℚ)

end A207817

/-! ## A207817.P16916713440209203657

`record[-((4-6/n)*a(n-1))]*A005566(2*n)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A207817.P16916713440209203657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  -((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A005566 (2 * n) : ℚ)

end

end A207817.P16916713440209203657

namespace A207817

/-- `record[-((4-6/n)*a(n-1))]*A005566(2*n)` -/
def P16916713440209203657.Spec : Prop :=
  ∀ n, P16916713440209203657.a n = (A207817 n : ℚ)

end A207817

/-!
# A207818: The sum of the second powers of the numbers of solid standard Young tableaux over all planar partitions of n.

The programs for A207818, there is no canonical definition to state claims against.
-/

/-! ## A207818.P15624037734357058475

`A195312(or(n, a(n-1))*(2*n+1))` with `a(0)=1`
-/

namespace A207818.P15624037734357058475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A195312 (Int.lor (n : ℤ) (a (n - 1)) * (2 * n + 1 : ℤ)).toNat

end

end A207818.P15624037734357058475

/-!
# A207819: Number of permutations of [n] with a fixed point and/or a succession.

The programs for A207819, there is no canonical definition to state claims against.
-/

/-! ## A207819.P17649049213917183310

`n!-A209322(n)`
-/

namespace A207819.P17649049213917183310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A209322 n

end

end A207819.P17649049213917183310

/-! ## A207819.P9345072253389875021

`A209325(n)+A002467(n)`
-/

namespace A207819.P9345072253389875021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209325 n + A002467 n

end

end A207819.P9345072253389875021

/-! ## A207819.P4571976807350821509

`A000142(n)-A209322(n)`
-/

namespace A207819.P4571976807350821509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A209322 n

end

end A207819.P4571976807350821509

/-! ## A207819.P7486320638710975811

`Δ[A003422(n)]-A209322(n)`
-/

namespace A207819.P7486320638710975811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A209322 n

end

end A207819.P7486320638710975811

/-!
# A207820: Let A = A025584. a(n) is the smallest A(m) such that the interval (A(m)*n, A(m+1)*n) contains no primes from A.

The programs for A207820, there is no canonical definition to state claims against.
-/

/-! ## A207820.P13270004633665980907

`A027746(A072905(3*(n+1))*A248329(n))`
-/

namespace A207820.P13270004633665980907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A072905 (3 * (n + 1)) * A248329 n).toNat

end

end A207820.P13270004633665980907

/-!
# A207821: Number of permutations of [n] that either have a fixed point or a succession, but not both.

The programs for A207821, there is no canonical definition to state claims against.
-/

/-! ## A207821.P9904331832320569119

`A209325(n)+A209326(n)`
-/

namespace A207821.P9904331832320569119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209325 n + A209326 n

end

end A207821.P9904331832320569119

/-! ## A207821.P389685976415014074

`A000166(n)+A209326(n)-A209322(n)`
-/

namespace A207821.P389685976415014074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A209326 n - A209322 n)

end

end A207821.P389685976415014074

/-! ## A207821.P10598518739314580092

`A207819(n)+A209326(n)-A002467(n)`
-/

namespace A207821.P10598518739314580092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207819 n + (A209326 n - A002467 n)

end

end A207821.P10598518739314580092

/-! ## A207821.P1855179275314442367

`A207819(n)-A201452(n)`
-/

namespace A207821.P1855179275314442367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207819 n - A201452 n

end

end A207821.P1855179275314442367

/-! ## A207821.P3587498837626641897

`A002467(n)+A209325(n)-A201452(n)`
-/

namespace A207821.P3587498837626641897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n + (A209325 n - A201452 n)

end

end A207821.P3587498837626641897

/-!
# A207822: Number of distinct irreducible factors of n-th Zeckendorf polynomial.

The programs for A207822, there is no canonical definition to state claims against.
-/

/-! ## A207822.P10385538108883790681

`A206719(∑[A129761(n)])`
-/

namespace A207822.P10385538108883790681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207822.P10385538108883790681

/-! ## A207822.P18239364335083187393

`A206719(A003714(n+1))`
-/

namespace A207822.P18239364335083187393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (A003714 (n + 1)).toNat

end

end A207822.P18239364335083187393

/-! ## A207822.P12457735642660844265

`A206719(eq[1, A116361(n)])`
-/

namespace A207822.P12457735642660844265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207822.P12457735642660844265

/-! ## A207822.P3490781986471097650

`A206719(eq[1, A272604(n)])`
-/

namespace A207822.P3490781986471097650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207822.P3490781986471097650

/-! ## A207822.P2075649653219705406

`A206719(eq[2, A331985(n)])`
-/

namespace A207822.P2075649653219705406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207822.P2075649653219705406

/-! ## A207822.P9618461032484174562

`A206719(record[A090077(n+1)])`
-/

namespace A207822.P9618461032484174562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207822.P9618461032484174562

/-! ## A207822.P3341115182485348185

`A206719(record[A341691(n+1)])`
-/

namespace A207822.P3341115182485348185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207822.P3341115182485348185

/-! ## A207822.P11742231381047331496

`A206719(A022340(n+1)/2)`
-/

namespace A207822.P11742231381047331496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (SequenceMachineLib.roundAway ((A022340 (n + 1) : ℚ) / 2)).toNat

end

end A207822.P11742231381047331496

/-!
# A207823: Triangle of coefficients of Chebyshev's S(n,x+4) polynomials (exponents of x in increasing order).

The programs for A207823, the canonical program `A207823.P4175695291914468751` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207823 has offset 0).

The definition of A207823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207823.P4175695291914468751

`4*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207823

/-- `4*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P4175695291914468751.Spec : Prop :=
  ∀ n, P4175695291914468751.a n = A207823 n

theorem P4175695291914468751.correct : P4175695291914468751.Spec := by
  intro n
  simp only [A207823]

end A207823

/-! ## A207823.P14195761645112998251

`abs(A124029(n))`
-/

namespace A207823.P14195761645112998251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124029 n|

end

end A207823.P14195761645112998251

namespace A207823

/-- `abs(A124029(n))` -/
def P14195761645112998251.Spec : Prop :=
  ∀ n, P14195761645112998251.a n = A207823 n

end A207823

/-! ## A207823.P5818059096121794496

`abs(A159764(n))`
-/

namespace A207823.P5818059096121794496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159764 n|

end

end A207823.P5818059096121794496

namespace A207823

/-- `abs(A159764(n))` -/
def P5818059096121794496.Spec : Prop :=
  ∀ n, P5818059096121794496.a n = A207823 n

end A207823

/-! ## A207823.P11376342860126560427

`A097807(n)*A159764(n)`
-/

namespace A207823.P11376342860126560427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A159764 n

end

end A207823.P11376342860126560427

namespace A207823

/-- `A097807(n)*A159764(n)` -/
def P11376342860126560427.Spec : Prop :=
  ∀ n, P11376342860126560427.a n = A207823 n

end A207823

/-! ## A207823.P3055914417200738027

`gcd(A000038(n), A124029(n))`
-/

namespace A207823.P3055914417200738027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124029 n)

end

end A207823.P3055914417200738027

namespace A207823

/-- `gcd(A000038(n), A124029(n))` -/
def P3055914417200738027.Spec : Prop :=
  ∀ n, (P3055914417200738027.a n : ℤ) = A207823 n

end A207823

/-! ## A207823.P7028918739707019496

`gcd(A127648(n), A159764(n))`
-/

namespace A207823.P7028918739707019496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A159764 n)

end

end A207823.P7028918739707019496

namespace A207823

/-- `gcd(A127648(n), A159764(n))` -/
def P7028918739707019496.Spec : Prop :=
  ∀ n, (P7028918739707019496.a n : ℤ) = A207823 n

end A207823

/-! ## A207823.P17855406166186836201

`lcm(A020985(n), A124029(n))`
-/

namespace A207823.P17855406166186836201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124029 n)

end

end A207823.P17855406166186836201

namespace A207823

/-- `lcm(A020985(n), A124029(n))` -/
def P17855406166186836201.Spec : Prop :=
  ∀ n, (P17855406166186836201.a n : ℤ) = A207823 n

end A207823

/-! ## A207823.P8470791917003154147

`lcm(A033999(n), A159764(n))`
-/

namespace A207823.P8470791917003154147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A159764 n)

end

end A207823.P8470791917003154147

namespace A207823

/-- `lcm(A033999(n), A159764(n))` -/
def P8470791917003154147.Spec : Prop :=
  ∀ n, (P8470791917003154147.a n : ℤ) = A207823 n

end A207823

/-! ## A207823.P8116760764506425003

`A053122(n)/A078812(n)*A159764(n)`
-/

namespace A207823.P8116760764506425003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A159764 n : ℚ)

end

end A207823.P8116760764506425003

namespace A207823

/-- `A053122(n)/A078812(n)*A159764(n)` -/
def P8116760764506425003.Spec : Prop :=
  ∀ n, P8116760764506425003.a n = (A207823 n : ℚ)

end A207823

/-! ## A207823.P5761638699950259352

`A125662(n)/A207815(n)*A159764(n)`
-/

namespace A207823.P5761638699950259352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125662 n : ℚ) / (A207815 n : ℚ) * (A159764 n : ℚ)

end

end A207823.P5761638699950259352

namespace A207823

/-- `A125662(n)/A207815(n)*A159764(n)` -/
def P5761638699950259352.Spec : Prop :=
  ∀ n, P5761638699950259352.a n = (A207823 n : ℚ)

end A207823

/-! ## A207823.P9940740163284218843

`lcm(A065357(n)*A159764(n), A065357(n))`
-/

namespace A207823.P9940740163284218843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A159764 n) (A065357 n)

end

end A207823.P9940740163284218843

namespace A207823

/-- `lcm(A065357(n)*A159764(n), A065357(n))` -/
def P9940740163284218843.Spec : Prop :=
  ∀ n, (P9940740163284218843.a n : ℤ) = A207823 n

end A207823

/-! ## A207823.P14459155325469104529

`A123967(n)/A207824(n)*A159764(n)`
-/

namespace A207823.P14459155325469104529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A207824 n : ℚ) * (A159764 n : ℚ)

end

end A207823.P14459155325469104529

namespace A207823

/-- `A123967(n)/A207824(n)*A159764(n)` -/
def P14459155325469104529.Spec : Prop :=
  ∀ n, P14459155325469104529.a n = (A207823 n : ℚ)

end A207823

/-!
# A207824: Triangle of coefficients of Chebyshev's S(n,x+5) polynomials (exponents of x in increasing order).

The programs for A207824, the canonical program `A207824.P2277268965756513403` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207824 has offset 0).

The definition of A207824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207824.P2277268965756513403

`5*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207824

/-- `5*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P2277268965756513403.Spec : Prop :=
  ∀ n, P2277268965756513403.a n = A207824 n

theorem P2277268965756513403.correct : P2277268965756513403.Spec := by
  intro n
  simp only [A207824]

end A207824

/-! ## A207824.P14922205347760558158

`abs(A123967(n))`
-/

namespace A207824.P14922205347760558158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123967 n|

end

end A207824.P14922205347760558158

namespace A207824

/-- `abs(A123967(n))` -/
def P14922205347760558158.Spec : Prop :=
  ∀ n, P14922205347760558158.a n = A207824 n

end A207824

/-! ## A207824.P12687493867501497088

`A097807(n)*A123967(n)`
-/

namespace A207824.P12687493867501497088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A123967 n

end

end A207824.P12687493867501497088

namespace A207824

/-- `A097807(n)*A123967(n)` -/
def P12687493867501497088.Spec : Prop :=
  ∀ n, P12687493867501497088.a n = A207824 n

end A207824

/-! ## A207824.P6312152198971376184

`gcd(A000038(n), A123967(n))`
-/

namespace A207824.P6312152198971376184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123967 n)

end

end A207824.P6312152198971376184

namespace A207824

/-- `gcd(A000038(n), A123967(n))` -/
def P6312152198971376184.Spec : Prop :=
  ∀ n, (P6312152198971376184.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P16366165256894158796

`lcm(A020985(n), A123967(n))`
-/

namespace A207824.P16366165256894158796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123967 n)

end

end A207824.P16366165256894158796

namespace A207824

/-- `lcm(A020985(n), A123967(n))` -/
def P16366165256894158796.Spec : Prop :=
  ∀ n, (P16366165256894158796.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P13254090662931857630

`lcm(-A123967(n), A033999(n))`
-/

namespace A207824.P13254090662931857630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A123967 n) (A033999 n)

end

end A207824.P13254090662931857630

namespace A207824

/-- `lcm(-A123967(n), A033999(n))` -/
def P13254090662931857630.Spec : Prop :=
  ∀ n, (P13254090662931857630.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P6088286739526158895

`A053122(n)/A078812(n)*A123967(n)`
-/

namespace A207824.P6088286739526158895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A123967 n : ℚ)

end

end A207824.P6088286739526158895

namespace A207824

/-- `A053122(n)/A078812(n)*A123967(n)` -/
def P6088286739526158895.Spec : Prop :=
  ∀ n, P6088286739526158895.a n = (A207824 n : ℚ)

end A207824

/-! ## A207824.P2159004301082525488

`A123967(n)/A125662(n)*A207815(n)`
-/

namespace A207824.P2159004301082525488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A125662 n : ℚ) * (A207815 n : ℚ)

end

end A207824.P2159004301082525488

namespace A207824

/-- `A123967(n)/A125662(n)*A207815(n)` -/
def P2159004301082525488.Spec : Prop :=
  ∀ n, P2159004301082525488.a n = (A207824 n : ℚ)

end A207824

/-! ## A207824.P15554992770066512879

`A123967(n)/A126126(n)*A238731(n)`
-/

namespace A207824.P15554992770066512879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A126126 n : ℚ) * (A238731 n : ℚ)

end

end A207824.P15554992770066512879

namespace A207824

/-- `A123967(n)/A126126(n)*A238731(n)` -/
def P15554992770066512879.Spec : Prop :=
  ∀ n, P15554992770066512879.a n = (A207824 n : ℚ)

end A207824

/-! ## A207824.P14712252433365316152

`A123967(n)/A159764(n)*A207823(n)`
-/

namespace A207824.P14712252433365316152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A159764 n : ℚ) * (A207823 n : ℚ)

end

end A207824.P14712252433365316152

namespace A207824

/-- `A123967(n)/A159764(n)*A207823(n)` -/
def P14712252433365316152.Spec : Prop :=
  ∀ n, P14712252433365316152.a n = (A207824 n : ℚ)

end A207824

/-! ## A207824.P670540455606598893

`abs(A179900(n))`
-/

namespace A207824.P670540455606598893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A179900 n|

end

end A207824.P670540455606598893

namespace A207824

/-- `abs(A179900(n))` -/
def P670540455606598893.Spec : Prop :=
  ∀ n, P670540455606598893.a n = A207824 n

end A207824

/-! ## A207824.P5730244937345068488

`gcd(A127648(n), A179900(n))`
-/

namespace A207824.P5730244937345068488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A179900 n)

end

end A207824.P5730244937345068488

namespace A207824

/-- `gcd(A127648(n), A179900(n))` -/
def P5730244937345068488.Spec : Prop :=
  ∀ n, (P5730244937345068488.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P6199895914787536882

`lcm(A033999(n), A179900(n))`
-/

namespace A207824.P6199895914787536882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A179900 n)

end

end A207824.P6199895914787536882

namespace A207824

/-- `lcm(A033999(n), A179900(n))` -/
def P6199895914787536882.Spec : Prop :=
  ∀ n, (P6199895914787536882.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P1448952143711770407

`lcm(A065357(n)*A179900(n), A065357(n))`
-/

namespace A207824.P1448952143711770407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A179900 n) (A065357 n)

end

end A207824.P1448952143711770407

namespace A207824

/-- `lcm(A065357(n)*A179900(n), A065357(n))` -/
def P1448952143711770407.Spec : Prop :=
  ∀ n, (P1448952143711770407.a n : ℤ) = A207824 n

end A207824

/-! ## A207824.P5514172755329336880

`lcm(A070748(n+1)*A179900(n), A070748(n+1))`
-/

namespace A207824.P5514172755329336880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070748 (n + 1) * A179900 n) (A070748 (n + 1))

end

end A207824.P5514172755329336880

namespace A207824

/-- `lcm(A070748(n+1)*A179900(n), A070748(n+1))` -/
def P5514172755329336880.Spec : Prop :=
  ∀ n, (P5514172755329336880.a n : ℤ) = A207824 n

end A207824

/-!
# A207825: Primes p such that (p+k)/(k+1) is a prime number for k = 1,...,6.

The programs for A207825, there is no canonical definition to state claims against.
-/

/-! ## A207825.P4806214895662592974

`∩[A208455(n+1), A350773(n+1)]`
-/

namespace A207825.P4806214895662592974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207825.P4806214895662592974

/-! ## A207825.P6460975714365030075

`A071369(A332027(n+1)-1)`
-/

namespace A207825.P6460975714365030075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071369 (A332027 (n + 1) - 1).toNat

end

end A207825.P6460975714365030075

/-!
# A207826: Upper right triangle: Fill columns with the smallest possible positive integers not occurring earlier and such that T(n+1,k) = |T(n,k-1)-T(n,k)| or T(n,k-1)+T(n,k). Second version (see comment).

The programs for A207826, there is no canonical definition to state claims against.
-/

/-! ## A207826.P5272368528775182565

`A207831(1+n)`
-/

namespace A207826.P5272368528775182565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207831 (1 + n)

end

end A207826.P5272368528775182565

/-! ## A207826.P12952147799799561129

`or(char[2], A207831(A008619(2*n)))`
-/

namespace A207826.P12952147799799561129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207831 (A008619 (2 * n)).toNat)

end

end A207826.P12952147799799561129

/-! ## A207826.P6564132338529059062

`or(char[2], A207831(A110514(2*n)))`
-/

namespace A207826.P6564132338529059062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207831 (A110514 (2 * n)).toNat)

end

end A207826.P6564132338529059062

/-! ## A207826.P9647767333849004977

`A207831(A110514(2*n))%A132470(n)`
-/

namespace A207826.P9647767333849004977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207831 (A110514 (2 * n)).toNat) (A132470 n)

end

end A207826.P9647767333849004977

/-! ## A207826.P9632854272058110303

`A207831(A008619(2*n))%A271408(n)`
-/

namespace A207826.P9632854272058110303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207831 (A008619 (2 * n)).toNat) (A271408 n)

end

end A207826.P9632854272058110303

/-! ## A207826.P18086455984319365307

`gcd(A000038(n), A207831(A008619(2*n)))`
-/

namespace A207826.P18086455984319365307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207831 (A008619 (2 * n)).toNat)

end

end A207826.P18086455984319365307

/-! ## A207826.P16795198543843020083

`A007318(C(2, n))*A207831(A008619(2*n))`
-/

namespace A207826.P16795198543843020083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207831 (A008619 (2 * n)).toNat

end

end A207826.P16795198543843020083

/-! ## A207826.P1421977792509124257

`A007318(C(3, n))*A207831(A110514(2*n))`
-/

namespace A207826.P1421977792509124257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A207831 (A110514 (2 * n)).toNat

end

end A207826.P1421977792509124257

/-!
# A207828: The number of unlabelled simple graphs with n nodes such that no two connected components are identical.

The programs for A207828, there is no canonical definition to state claims against.
-/

/-! ## A207828.P5054365418548295864

`A182117(n)+∑{e}[A327199(n), 2-#]`
-/

namespace A207828.P5054365418548295864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182117 n + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A207828.P5054365418548295864

/-! ## A207828.P11553230759890780020

`A182117(n)+A102679(A157016(n))`
-/

namespace A207828.P11553230759890780020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182117 n + A102679 (A157016 n).toNat

end

end A207828.P11553230759890780020

/-! ## A207828.P3691402916582408549

`A182117(n)+A056170(A248900(n))`
-/

namespace A207828.P3691402916582408549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182117 n + A056170 (A248900 n).toNat

end

end A207828.P3691402916582408549

/-!
# A207829: First line of square array such that T[n+1,k] = | T[n,k] +/ - T[n,k+1] |, filling antidiagonals with the smallest possible positive integers not occurring earlier.

The programs for A207829, there is no canonical definition to state claims against.
-/

/-! ## A207829.P1535532391777747459

`A207827(A328617(n+1))`
-/

namespace A207829.P1535532391777747459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207827 (A328617 (n + 1)).toNat

end

end A207829.P1535532391777747459

/-! ## A207829.P15971692927359427422

`A207827(A351831(n+2))`
-/

namespace A207829.P15971692927359427422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207827 (A351831 (n + 2)).toNat

end

end A207829.P15971692927359427422

/-! ## A207829.P16967765977979222935

`A207827(n+1)%A114882(n+3)²`
-/

namespace A207829.P16967765977979222935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207827 (n + 1)) (A114882 (n + 3) ^ 2)

end

end A207829.P16967765977979222935

/-! ## A207829.P2467294581147609472

`A207827(n+1)+A000007(A294609(n))`
-/

namespace A207829.P2467294581147609472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207827 (n + 1) + A000007 (A294609 n).toNat

end

end A207829.P2467294581147609472

/-! ## A207829.P16350324462109905480

`A207827(n+1)%A206585(A325534(n))`
-/

namespace A207829.P16350324462109905480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207827 (n + 1)) (A206585 (A325534 n).toNat)

end

end A207829.P16350324462109905480

/-!
# A207830: Positive multiples of 3 that contain the decimal digit 1.

The programs for A207830, there is no canonical definition to state claims against.
-/

/-! ## A207830.P12613386020953844805

`3*lt[0, A268643(3*n)]`
-/

namespace A207830.P12613386020953844805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A207830.P12613386020953844805

/-! ## A207830.P1014372343513746930

`∩[3*n, A011531(n+1)]`
-/

namespace A207830.P1014372343513746930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207830.P1014372343513746930

/-! ## A207830.P9161367288184282094

`∩[3*n, A208271(n+1)]`
-/

namespace A207830.P9161367288184282094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207830.P9161367288184282094

/-! ## A207830.P13969972091799129935

`eq[n, A381527(A064429(n))]`
-/

namespace A207830.P13969972091799129935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 (A064429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207830.P13969972091799129935

/-! ## A207830.P15112309783406775656

`eq[A079978(n), A381526(n)]`
-/

namespace A207830.P15112309783406775656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207830.P15112309783406775656

/-! ## A207830.P3806284825827527601

`eq[A138189(n), A381526(n)]`
-/

namespace A207830.P3806284825827527601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207830.P3806284825827527601

/-! ## A207830.P1990766491390268312

`eq[A140313(n), A381526(n)]`
-/

namespace A207830.P1990766491390268312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207830.P1990766491390268312

/-! ## A207830.P3504779012575279492

`eq[A145644(n), A381526(n)]`
-/

namespace A207830.P3504779012575279492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207830.P3504779012575279492

/-! ## A207830.P2153692251555056982

`eq[A349876(n), A381527(n)]`
-/

namespace A207830.P2153692251555056982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207830.P2153692251555056982

/-! ## A207830.P678237965637260195

`eq[n, A381527(A353314(n))]`
-/

namespace A207830.P678237965637260195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 (A353314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207830.P678237965637260195

/-!
# A207831: Square array such that T[n+1,k] = | T[n,k] +- T[n,k+1] |, filling antidiagonals with the smallest possible positive integers not occurring earlier.

The programs for A207831, there is no canonical definition to state claims against.
-/

/-! ## A207831.P5469571810838605626

`A207826(A261224(2*n+5)-2)`
-/

namespace A207831.P5469571810838605626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (A261224 (2 * n + 5) - 2).toNat

end

end A207831.P5469571810838605626

/-! ## A207831.P15958267200074568359

`A207826(n+1)+A151878(n+10)`
-/

namespace A207831.P15958267200074568359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (n + 1) + A151878 (n + 10)

end

end A207831.P15958267200074568359

/-! ## A207831.P7017900122481607750

`A207826(n+1)+char[A044712(n+1)]`
-/

namespace A207831.P7017900122481607750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044712 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207831.P7017900122481607750

/-! ## A207831.P10378741267434609368

`A207826(n+1)+char[A260335(n+1)]`
-/

namespace A207831.P10378741267434609368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260335 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207831.P10378741267434609368

/-! ## A207831.P16240663640084649170

`or(char[A208902(n+1)], A207826(n+1))`
-/

namespace A207831.P16240663640084649170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A207826 (n + 1))

end

end A207831.P16240663640084649170

/-! ## A207831.P5534691346654572367

`or(char[A260363(n+1)], A207826(n+1))`
-/

namespace A207831.P5534691346654572367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260363 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A207826 (n + 1))

end

end A207831.P5534691346654572367

/-! ## A207831.P5500065654506265014

`or(char[A260364(n+1)], A207826(n+1))`
-/

namespace A207831.P5500065654506265014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A207826 (n + 1))

end

end A207831.P5500065654506265014

/-! ## A207831.P10474776327724753326

`A207826(n+1)+char[A000040(n+22)]`
-/

namespace A207831.P10474776327724753326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 22)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207831.P10474776327724753326

/-! ## A207831.P14035164945144555581

`A008327(A003056(n))*A207826(n+1)`
-/

namespace A207831.P14035164945144555581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 (A003056 n).toNat * A207826 (n + 1)

end

end A207831.P14035164945144555581

/-! ## A207831.P16540808166601849429

`A007318(A069283(n))*A207826(n+1)`
-/

namespace A207831.P16540808166601849429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A069283 n).toNat * A207826 (n + 1)

end

end A207831.P16540808166601849429

/-!
# A207832: Numbers x such that 20*x^2 + 1 is a perfect square.

The programs for A207832, the canonical program `A207832.P8036040487885689871` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207832 has offset 0).

The definition of A207832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207832.P1577066491117202783

`ogf(2x/(1-18x+x^2))`
-/

namespace A207832.P1577066491117202783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -18, 1] n

end

end A207832.P1577066491117202783

namespace A207832

/-- `ogf(2x/(1-18x+x^2))` -/
def P1577066491117202783.Spec : Prop :=
  ∀ n, P1577066491117202783.a n = A207832 n

end A207832

/-! ## A207832.P8036040487885689871

`18*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207832

/-- `18*a(n-1)-a(n-2)` -/
def P8036040487885689871.Spec : Prop :=
  ∀ n, P8036040487885689871.a n = A207832 n

theorem P8036040487885689871.correct : P8036040487885689871.Spec := by
  intro n
  simp only [A207832]

end A207832

/-! ## A207832.P15346039945206874308

`2*A049660(n)`
-/

namespace A207832.P15346039945206874308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049660 n

end

end A207832.P15346039945206874308

namespace A207832

/-- `2*A049660(n)` -/
def P15346039945206874308.Spec : Prop :=
  ∀ n, P15346039945206874308.a n = A207832 n

end A207832

/-! ## A207832.P633928531411135985

`A000045(6*n)/4`
-/

namespace A207832.P633928531411135985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n) : ℚ) / 4

end

end A207832.P633928531411135985

namespace A207832

/-- `A000045(6*n)/4` -/
def P633928531411135985.Spec : Prop :=
  ∀ n, P633928531411135985.a n = (A207832 n : ℚ)

end A207832

/-! ## A207832.P3854336936264761338

`((2+sqrt(5))^(2*n)-(2-sqrt(5))^(2*n))/(4*sqrt(5))`
-/

namespace A207832.P3854336936264761338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) ^ (2 * n) - (2 - Real.sqrt (5 : ℝ)) ^ (2 * n)) / (4 * Real.sqrt (5 : ℝ))

end

end A207832.P3854336936264761338

namespace A207832

/-- `((2+sqrt(5))^(2*n)-(2-sqrt(5))^(2*n))/(4*sqrt(5))` -/
def P3854336936264761338.Spec : Prop :=
  ∀ n, P3854336936264761338.a n = (A207832 n : ℝ)

theorem P3854336936264761338.correct : P3854336936264761338.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A207832, Nat.add_sub_cancel, A207832.P3854336936264761338.a, A207832.P8036040487885689871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A207832, Nat.add_sub_cancel, A207832.P3854336936264761338.a, A207832.P8036040487885689871.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A207832

/-! ## A207832.P16799399891394904006

`A004697(6*n)`
-/

namespace A207832.P16799399891394904006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (6 * n)

end

end A207832.P16799399891394904006

namespace A207832

/-- `A004697(6*n)` -/
def P16799399891394904006.Spec : Prop :=
  ∀ n, P16799399891394904006.a n = A207832 n

end A207832

/-! ## A207832.P18038731670588859097

`A293552(6*n)`
-/

namespace A207832.P18038731670588859097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (6 * n)

end

end A207832.P18038731670588859097

namespace A207832

/-- `A293552(6*n)` -/
def P18038731670588859097.Spec : Prop :=
  ∀ n, P18038731670588859097.a n = A207832 n

end A207832

/-! ## A207832.P11189829256746226620

`A293553(6*n)`
-/

namespace A207832.P11189829256746226620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (6 * n)

end

end A207832.P11189829256746226620

namespace A207832

/-- `A293553(6*n)` -/
def P11189829256746226620.Spec : Prop :=
  ∀ n, P11189829256746226620.a n = A207832 n

end A207832

/-! ## A207832.P16502658889596872852

`A001076(n)*A001077(n)`
-/

namespace A207832.P16502658889596872852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n * A001077 n

end

end A207832.P16502658889596872852

namespace A207832

/-- `A001076(n)*A001077(n)` -/
def P16502658889596872852.Spec : Prop :=
  ∀ n, P16502658889596872852.a n = A207832 n

end A207832

/-! ## A207832.P12511281819327736227

`A001077(n)*A059973(2*n)`
-/

namespace A207832.P12511281819327736227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n * A059973 (2 * n)

end

end A207832.P12511281819327736227

namespace A207832

/-- `A001077(n)*A059973(2*n)` -/
def P12511281819327736227.Spec : Prop :=
  ∀ n, P12511281819327736227.a n = A207832 n

end A207832

/-!
# A207833: E.g.f.: T(T(x)), where T(x) is the e.g.f. for labeled rooted trees, A000169.

The programs for A207833, the canonical program `A207833.P4289927349681708183` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207833 has offset 1).

The definition of A207833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207833.P4289927349681708183

`1/(n+1)*∑{#}[n, C(n+1, #+1)*(#+1)^(#+1)*(n+1)^(n+1-(#+1))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207833

/-- `1/(n+1)*∑{#}[n, C(n+1, #+1)*(#+1)^(#+1)*(n+1)^(n+1-(#+1))]` -/
def P4289927349681708183.Spec : Prop :=
  ∀ n, P4289927349681708183.a n = (A207833 (n + 1) : ℚ)

end A207833

/-! ## A207833.P15144224066881207665

`(n+1)*A101878(n)`
-/

namespace A207833.P15144224066881207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101878 n

end

end A207833.P15144224066881207665

namespace A207833

/-- `(n+1)*A101878(n)` -/
def P15144224066881207665.Spec : Prop :=
  ∀ n, P15144224066881207665.a n = A207833 (n + 1)

end A207833

/-! ## A207833.P5751553807949182985

`A101878(n)*A135278(A000217(n))`
-/

namespace A207833.P5751553807949182985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101878 n * A135278 (A000217 n).toNat

end

end A207833.P5751553807949182985

namespace A207833

/-- `A101878(n)*A135278(A000217(n))` -/
def P5751553807949182985.Spec : Prop :=
  ∀ n, P5751553807949182985.a n = A207833 (n + 1)

end A207833

/-! ## A207833.P10903564730513649519

`A101878(n)*A110654(A103517(n))`
-/

namespace A207833.P10903564730513649519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101878 n * A110654 (A103517 n).toNat

end

end A207833.P10903564730513649519

namespace A207833

/-- `A101878(n)*A110654(A103517(n))` -/
def P10903564730513649519.Spec : Prop :=
  ∀ n, P10903564730513649519.a n = A207833 (n + 1)

end A207833

/-! ## A207833.P4878124287933915500

`A101878(n)*A226314(A001844(n))`
-/

namespace A207833.P4878124287933915500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101878 n * A226314 (A001844 n).toNat

end

end A207833.P4878124287933915500

namespace A207833

/-- `A101878(n)*A226314(A001844(n))` -/
def P4878124287933915500.Spec : Prop :=
  ∀ n, P4878124287933915500.a n = A207833 (n + 1)

end A207833

/-!
# A207834: G.f.: exp( Sum_{n>=1} 5*L(n)*x^n/n ), where L(n) = Fibonacci(n-1)^n + Fibonacci(n+1)^n.

The programs for A207834, there is no canonical definition to state claims against.
-/

/-! ## A207834.P10022141414548619754

`A227191(A090358(n))+A154638(n)`
-/

namespace A207834.P10022141414548619754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227191 (A090358 n).toNat + A154638 n

end

end A207834.P10022141414548619754

/-!
# A207836: a(n) = n*A052530(n)/2.

The programs for A207836, the canonical program `A207836.P1370741835045675661` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207836 has offset 2).

The definition of A207836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207836.P8989661149749327043

`ogf((3x-8x^2+x^3)/(1-8x+18x^2-8x^3+x^4))`
-/

namespace A207836.P8989661149749327043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -8, 1] [1, -8, 18, -8, 1] n

end

end A207836.P8989661149749327043

namespace A207836

/-- `ogf((3x-8x^2+x^3)/(1-8x+18x^2-8x^3+x^4))` -/
def P8989661149749327043.Spec : Prop :=
  ∀ n, P8989661149749327043.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P1370741835045675661

`8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=16, a(3)=75`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207836

/-- `8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` -/
def P1370741835045675661.Spec : Prop :=
  ∀ n, P1370741835045675661.a n = A207836 (n + 2)

theorem P1370741835045675661.correct : P1370741835045675661.Spec := by
  intro n
  simp only [A207836, Nat.add_sub_cancel]

end A207836

/-! ## A207836.P338260081993209754

`(n+2)*∑[4*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A207836.P338260081993209754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207836.P338260081993209754

namespace A207836

/-- `(n+2)*∑[4*a(n-1)-a(n-2)]` -/
def P338260081993209754.Spec : Prop :=
  ∀ n, P338260081993209754.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P5127725969608685391

`(2+n)*A001353(n)`
-/

namespace A207836.P5127725969608685391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + n : ℤ) * A001353 n

end

end A207836.P5127725969608685391

namespace A207836

/-- `(2+n)*A001353(n)` -/
def P5127725969608685391.Spec : Prop :=
  ∀ n, P5127725969608685391.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P12662538618713537538

`abs((n+2)*A106707(n))`
-/

namespace A207836.P12662538618713537538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A106707 n|

end

end A207836.P12662538618713537538

namespace A207836

/-- `abs((n+2)*A106707(n))` -/
def P12662538618713537538.Spec : Prop :=
  ∀ n, P12662538618713537538.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P438834313418128568

`(n+2)*Δ[A101879(n)]`
-/

namespace A207836.P438834313418128568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A207836.P438834313418128568

namespace A207836

/-- `(n+2)*Δ[A101879(n)]` -/
def P438834313418128568.Spec : Prop :=
  ∀ n, P438834313418128568.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P670819204428431152

`(n+2)*(A072110(n)-1)`
-/

namespace A207836.P670819204428431152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A072110 n - 1)

end

end A207836.P670819204428431152

namespace A207836

/-- `(n+2)*(A072110(n)-1)` -/
def P670819204428431152.Spec : Prop :=
  ∀ n, P670819204428431152.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P8416727482684160473

`(n+2)*A002530(2*n)`
-/

namespace A207836.P8416727482684160473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002530 (2 * n)

end

end A207836.P8416727482684160473

namespace A207836

/-- `(n+2)*A002530(2*n)` -/
def P8416727482684160473.Spec : Prop :=
  ∀ n, P8416727482684160473.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P10956082753550889622

`(n+2)/2*A052530(n)`
-/

namespace A207836.P10956082753550889622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A052530 n : ℚ)

end

end A207836.P10956082753550889622

namespace A207836

/-- `(n+2)/2*A052530(n)` -/
def P10956082753550889622.Spec : Prop :=
  ∀ n, P10956082753550889622.a n = (A207836 (n + 2) : ℚ)

end A207836

/-! ## A207836.P672731004125703679

`(n+2)*A249578(3*n)`
-/

namespace A207836.P672731004125703679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A249578 (3 * n)

end

end A207836.P672731004125703679

namespace A207836

/-- `(n+2)*A249578(3*n)` -/
def P672731004125703679.Spec : Prop :=
  ∀ n, P672731004125703679.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P16765654863336620233

`(n+2)/3*A005320(n)`
-/

namespace A207836.P16765654863336620233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 3 * (A005320 n : ℚ)

end

end A207836.P16765654863336620233

namespace A207836

/-- `(n+2)/3*A005320(n)` -/
def P16765654863336620233.Spec : Prop :=
  ∀ n, P16765654863336620233.a n = (A207836 (n + 2) : ℚ)

end A207836

/-! ## A207836.P9386395473939543508

`(n+2)*(∑[A001835(n)]-1)`
-/

namespace A207836.P9386395473939543508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A207836.P9386395473939543508

namespace A207836

/-- `(n+2)*(∑[A001835(n)]-1)` -/
def P9386395473939543508.Spec : Prop :=
  ∀ n, P9386395473939543508.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P5830969746247326900

`A052530(n)-n*A106707(n)`
-/

namespace A207836.P5830969746247326900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n - (n : ℤ) * A106707 n

end

end A207836.P5830969746247326900

namespace A207836

/-- `A052530(n)-n*A106707(n)` -/
def P5830969746247326900.Spec : Prop :=
  ∀ n, P5830969746247326900.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P6024892801518954043

`(n+2)*(A001075(n)-A001835(n))`
-/

namespace A207836.P6024892801518954043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A001075 n - A001835 n)

end

end A207836.P6024892801518954043

namespace A207836

/-- `(n+2)*(A001075(n)-A001835(n))` -/
def P6024892801518954043.Spec : Prop :=
  ∀ n, P6024892801518954043.a n = A207836 (n + 2)

end A207836

/-! ## A207836.P12105490738479482542

`A001353(n)*A008619(A103517(n))`
-/

namespace A207836.P12105490738479482542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A008619 (A103517 n).toNat

end

end A207836.P12105490738479482542

namespace A207836

/-- `A001353(n)*A008619(A103517(n))` -/
def P12105490738479482542.Spec : Prop :=
  ∀ n, P12105490738479482542.a n = A207836 (n + 2)

end A207836

/-!
# A207837: Primes of the form 5*k^4 + 1.

The programs for A207837, there is no canonical definition to state claims against.
-/

/-! ## A207837.P1982513374901244441

`5*A207838(n+1)^4+1`
-/

namespace A207837.P1982513374901244441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A207838 (n + 1) ^ 4 + 1

end

end A207837.P1982513374901244441

/-!
# A207839: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207839, there is no canonical definition to state claims against.
-/

/-! ## A207839.P17500352280444095523

`A207845((n+1)²+n²)`
-/

namespace A207839.P17500352280444095523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 ((n + 1) ^ 2 + n ^ 2)

end

end A207839.P17500352280444095523

/-! ## A207839.P6295869949433750508

`lcm(2, A207845(A001844(n)))`
-/

namespace A207839.P6295869949433750508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207845 (A001844 n).toNat)

end

end A207839.P6295869949433750508

/-! ## A207839.P9515632791316335654

`record[A003982(n)*A207845(n+1)]`
-/

namespace A207839.P9515632791316335654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207839.P9515632791316335654

/-! ## A207839.P10307753092224048999

`A207845(A001844(n))+A192541(n)`
-/

namespace A207839.P10307753092224048999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A001844 n).toNat + A192541 n

end

end A207839.P10307753092224048999

/-! ## A207839.P14013852803490949622

`gcd(A000038(n), A207845(A001844(n)))`
-/

namespace A207839.P14013852803490949622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207845 (A001844 n).toNat)

end

end A207839.P14013852803490949622

/-!
# A207840: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207840, the canonical program `A207840.P5446005302528712102` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207840 has offset 1).

The definition of A207840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207840.P7677969875365094613

`ogf((6+30x+12x^2-6x^3-16x^4-10x^5+6x^6-4x^7)/(1-x-4x^2-5x^3-2x^4+x^5-x^6))`
-/

namespace A207840.P7677969875365094613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 30, 12, -6, -16, -10, 6, -4] [1, -1, -4, -5, -2, 1, -1] n

end

end A207840.P7677969875365094613

namespace A207840

/-- `ogf((6+30x+12x^2-6x^3-16x^4-10x^5+6x^6-4x^7)/(1-x-4x^2-5x^3-2x^4+x^5-x^6))` -/
def P7677969875365094613.Spec : Prop :=
  ∀ n, P7677969875365094613.a n = A207840 (n + 1)

end A207840

/-! ## A207840.P5446005302528712102

`sqrt(A206981(n+1))*sqrt(A207924(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A207840

/-- `sqrt(A206981(n+1))*sqrt(A207924(n+1))` -/
def P5446005302528712102.Spec : Prop :=
  ∀ n, P5446005302528712102.a n = (A207840 (n + 1) : ℝ)

end A207840

/-! ## A207840.P3164302753329263414

`sqrt(A206981(n+1)*A207924(n+1))`
-/

namespace A207840.P3164302753329263414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A207924 (n + 1) : ℝ)

end

end A207840.P3164302753329263414

namespace A207840

/-- `sqrt(A206981(n+1)*A207924(n+1))` -/
def P3164302753329263414.Spec : Prop :=
  ∀ n, P3164302753329263414.a n = (A207840 (n + 1) : ℝ)

end A207840

/-! ## A207840.P3995667149011578241

`A208379(∑[n+2]+4)`
-/

namespace A207840.P3995667149011578241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207840.P3995667149011578241

namespace A207840

/-- `A208379(∑[n+2]+4)` -/
def P3995667149011578241.Spec : Prop :=
  ∀ n, P3995667149011578241.a n = A207840 (n + 1)

end A207840

/-! ## A207840.P16400654454132977196

`A208069(∑[n+2]+4)`
-/

namespace A207840.P16400654454132977196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207840.P16400654454132977196

namespace A207840

/-- `A208069(∑[n+2]+4)` -/
def P16400654454132977196.Spec : Prop :=
  ∀ n, P16400654454132977196.a n = A207840 (n + 1)

end A207840

/-!
# A207841: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207841, there is no canonical definition to state claims against.
-/

/-! ## A207841.P4720484319917232255

`A206981(n+1)/A207840(n+1)*A207925(n+1)`
-/

namespace A207841.P4720484319917232255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206981 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ) * (A207925 (n + 1) : ℚ)

end

end A207841.P4720484319917232255

/-! ## A207841.P12890780285330310090

`A207845(∑[n+3]+n+4)`
-/

namespace A207841.P12890780285330310090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A207841.P12890780285330310090

/-! ## A207841.P12395280287282401913

`and(-2, A207845(Δ[A006503(n)]+n+4))`
-/

namespace A207841.P12395280287282401913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A207845 (f1 (n + 1) - f1 n + (n + 4 : ℤ)).toNat)

end

end A207841.P12395280287282401913

/-! ## A207841.P8400474359604879107

`A025443(n)!*A207845(Δ[A006503(n)]+n+4)`
-/

namespace A207841.P8400474359604879107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025443 n).toNat : ℤ) * A207845 (f1 (n + 1) - f1 n + (n + 4 : ℤ)).toNat

end

end A207841.P8400474359604879107

/-! ## A207841.P12451323141585757399

`A207845(Δ[A006416(n+2)])%A222994(n+1)`
-/

namespace A207841.P12451323141585757399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207845 (f1 (n + 1) - f1 n).toNat) (A222994 (n + 1))

end

end A207841.P12451323141585757399

/-!
# A207842: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207842, there is no canonical definition to state claims against.
-/

/-! ## A207842.P1314096806229745759

`A207845(A046691(n+3))`
-/

namespace A207842.P1314096806229745759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A046691 (n + 3)).toNat

end

end A207842.P1314096806229745759

/-! ## A207842.P10579694629158067591

`A207845(Δ[A111396(n)]-1)`
-/

namespace A207842.P10579694629158067591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (f1 (n + 1) - f1 n - 1).toNat

end

end A207842.P10579694629158067591

/-! ## A207842.P9297018501047620495

`A207845(A000096(n+4)-3)`
-/

namespace A207842.P9297018501047620495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000096 (n + 4) - 3).toNat

end

end A207842.P9297018501047620495

/-! ## A207842.P15208249429857459674

`A207845(A000124(n+5)-5)`
-/

namespace A207842.P15208249429857459674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 5) - 5).toNat

end

end A207842.P15208249429857459674

/-! ## A207842.P6196721657073129196

`A207845(A167614(n+4)-7)`
-/

namespace A207842.P6196721657073129196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167614 (n + 4) - 7).toNat

end

end A207842.P6196721657073129196

/-!
# A207843: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207843, there is no canonical definition to state claims against.
-/

/-! ## A207843.P10791445973262581142

`A207845(A052905(n+3))`
-/

namespace A207843.P10791445973262581142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A052905 (n + 3)).toNat

end

end A207843.P10791445973262581142

/-! ## A207843.P2358269576245970908

`A207845(A027379(n+4)-2)`
-/

namespace A207843.P2358269576245970908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A027379 (n + 4) - 2).toNat

end

end A207843.P2358269576245970908

/-! ## A207843.P9998195521524219213

`A207845(A034856(n+5)-3)`
-/

namespace A207843.P9998195521524219213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A034856 (n + 5) - 3).toNat

end

end A207843.P9998195521524219213

/-! ## A207843.P7901307402428586832

`A207845(A000217(n+6)-5)`
-/

namespace A207843.P7901307402428586832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000217 (n + 6) - 5).toNat

end

end A207843.P7901307402428586832

/-! ## A207843.P14603407081621790715

`A207845(A000124(n+6)-6)`
-/

namespace A207843.P14603407081621790715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 6) - 6).toNat

end

end A207843.P14603407081621790715

/-!
# A207844: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207844, there is no canonical definition to state claims against.
-/

/-! ## A207844.P12762778318531588016

`A207845(A034856(n+6)-4)`
-/

namespace A207844.P12762778318531588016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A034856 (n + 6) - 4).toNat

end

end A207844.P12762778318531588016

/-! ## A207844.P7425594966665932957

`A207845(A000096(n+6)-5)`
-/

namespace A207844.P7425594966665932957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000096 (n + 6) - 5).toNat

end

end A207844.P7425594966665932957

/-! ## A207844.P2226602699368539529

`A207845(A000124(n+7)-7)`
-/

namespace A207844.P2226602699368539529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 7) - 7).toNat

end

end A207844.P2226602699368539529

/-! ## A207844.P7795970049693137759

`A207845(eq[7, A004736(n+1)]+1)`
-/

namespace A207844.P7795970049693137759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207844.P7795970049693137759

/-! ## A207844.P6644429435861364151

`A207845(A000217(n+6)+n+1)`
-/

namespace A207844.P6644429435861364151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207844.P6644429435861364151

/-!
# A207845: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207845, there is no canonical definition to state claims against.
-/

/-! ## A207845.P5673146732457295825

`A001349(A208879(n))*A208780(n+1)`
-/

namespace A207845.P5673146732457295825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A208879 n).toNat * A208780 (n + 1)

end

end A207845.P5673146732457295825

/-! ## A207845.P17845515584269910826

`A111616(A111636(n))*A208780(n+1)`
-/

namespace A207845.P17845515584269910826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A111636 n).toNat * A208780 (n + 1)

end

end A207845.P17845515584269910826

/-! ## A207845.P3112241318103649893

`A204197(n+1)+A072088(A238654(n+1))`
-/

namespace A207845.P3112241318103649893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204197 (n + 1) + A072088 (A238654 (n + 1)).toNat

end

end A207845.P3112241318103649893

/-! ## A207845.P17761988388451344944

`A072088(A206987(n+1)/2)+A072088(A238654(n+1))`
-/

namespace A207845.P17761988388451344944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (SequenceMachineLib.roundAway ((A206987 (n + 1) : ℚ) / 2)).toNat + A072088 (A238654 (n + 1)).toNat

end

end A207845.P17761988388451344944

/-! ## A207845.P14469554562598204855

`A165430(A045648(n+1))*A208780(n+1)`
-/

namespace A207845.P14469554562598204855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (A045648 (n + 1)).toNat * A208780 (n + 1)

end

end A207845.P14469554562598204855

/-!
# A207846: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207846, the canonical program `A207846.P1328752905887325932` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207846 has offset 1).

The definition of A207846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207846.P12335083501843202680

`ogf((6+24x-6x^2)/(1-2x-x^2))`
-/

namespace A207846.P12335083501843202680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, -6] [1, -2, -1] n

end

end A207846.P12335083501843202680

namespace A207846

/-- `ogf((6+24x-6x^2)/(1-2x-x^2))` -/
def P12335083501843202680.Spec : Prop :=
  ∀ n, P12335083501843202680.a n = A207846 (n + 1)

end A207846

/-! ## A207846.P1328752905887325932

`2*a(n-1)+a(n-2)` with `a(0)=6, a(1)=36, a(2)=72`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207846

/-- `2*a(n-1)+a(n-2)` -/
def P1328752905887325932.Spec : Prop :=
  ∀ n, (P1328752905887325932.a n : ℤ) = A207846 (n + 1)

theorem P1328752905887325932.correct : P1328752905887325932.Spec := by
  intro n
  simp only [A207846, Nat.add_sub_cancel]

end A207846

/-! ## A207846.P3312290171637142124

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=6, a(1)=36, a(2)=72`
-/

namespace A207846.P3312290171637142124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 36, 72] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A207846.P3312290171637142124

namespace A207846

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P3312290171637142124.Spec : Prop :=
  ∀ n, (P3312290171637142124.a n : ℤ) = A207846 (n + 1)

theorem P3312290171637142124.correct : P3312290171637142124.Spec := by
  intro n
  simp only [A207846, Nat.add_sub_cancel, A207846.P3312290171637142124.a, A207846.P1328752905887325932.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A207846

/-! ## A207846.P10841081972014690000

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=6, a(1)=36, a(2)=72`
-/

namespace A207846.P10841081972014690000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6, 36, 72] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A207846.P10841081972014690000

namespace A207846

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P10841081972014690000.Spec : Prop :=
  ∀ n, P10841081972014690000.a n = (A207846 (n + 1) : ℚ)

end A207846

/-! ## A207846.P8338019689255240178

`record[A040074(n+1)*A119016(n)]`
-/

namespace A207846.P8338019689255240178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040074 (n + 1) * A119016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207846.P8338019689255240178

namespace A207846

/-- `record[A040074(n+1)*A119016(n)]` -/
def P8338019689255240178.Spec : Prop :=
  ∀ n, P8338019689255240178.a n = A207846 (n + 1)

end A207846

/-! ## A207846.P17273434905671362402

`6*(A000007(n)+6*A000129(n))`
-/

namespace A207846.P17273434905671362402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000007 n + 6 * A000129 n)

end

end A207846.P17273434905671362402

namespace A207846

/-- `6*(A000007(n)+6*A000129(n))` -/
def P17273434905671362402.Spec : Prop :=
  ∀ n, P17273434905671362402.a n = A207846 (n + 1)

end A207846

/-! ## A207846.P9229408361442927995

`3*A284127(∑[n+3])`
-/

namespace A207846.P9229408361442927995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284127 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207846.P9229408361442927995

namespace A207846

/-- `3*A284127(∑[n+3])` -/
def P9229408361442927995.Spec : Prop :=
  ∀ n, P9229408361442927995.a n = A207846 (n + 1)

end A207846

/-!
# A207847: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207847, the canonical program `A207847.P15478962715316761628` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207847 has offset 1).

The definition of A207847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207847.P15478962715316761628

`ogf((10+90x+80x^2-70x^3+10x^4)/(1-x-6x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207847

/-- `ogf((10+90x+80x^2-70x^3+10x^4)/(1-x-6x^2-x^3+x^4))` -/
def P15478962715316761628.Spec : Prop :=
  ∀ n, P15478962715316761628.a n = A207847 (n + 1)

theorem P15478962715316761628.correct : P15478962715316761628.Spec := by
  intro n
  simp only [A207847, Nat.add_sub_cancel]

end A207847

/-! ## A207847.P3660425412775422680

`A207845(A052905(n)+9)`
-/

namespace A207847.P3660425412775422680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A052905 n + 9).toNat

end

end A207847.P3660425412775422680

namespace A207847

/-- `A207845(A052905(n)+9)` -/
def P3660425412775422680.Spec : Prop :=
  ∀ n, P3660425412775422680.a n = A207847 (n + 1)

end A207847

/-! ## A207847.P17292101244458065921

`A207845(A055999(n)+10)`
-/

namespace A207847.P17292101244458065921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A055999 n + 10).toNat

end

end A207847.P17292101244458065921

namespace A207847

/-- `A207845(A055999(n)+10)` -/
def P17292101244458065921.Spec : Prop :=
  ∀ n, P17292101244458065921.a n = A207847 (n + 1)

end A207847

/-! ## A207847.P4546731044257502846

`A207845(A167614(n+2)+1)`
-/

namespace A207847.P4546731044257502846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167614 (n + 2) + 1).toNat

end

end A207847.P4546731044257502846

namespace A207847

/-- `A207845(A167614(n+2)+1)` -/
def P4546731044257502846.Spec : Prop :=
  ∀ n, P4546731044257502846.a n = A207847 (n + 1)

end A207847

/-! ## A207847.P15481334239919641220

`A207845(A167487(n+2)-3)`
-/

namespace A207847.P15481334239919641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167487 (n + 2) - 3).toNat

end

end A207847.P15481334239919641220

namespace A207847

/-- `A207845(A167487(n+2)-3)` -/
def P15481334239919641220.Spec : Prop :=
  ∀ n, P15481334239919641220.a n = A207847 (n + 1)

end A207847

/-!
# A207848: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207848, there is no canonical definition to state claims against.
-/

/-! ## A207848.P17874286542414075837

`A207845(A167499(n+3))`
-/

namespace A207848.P17874286542414075837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167499 (n + 3)).toNat

end

end A207848.P17874286542414075837

/-! ## A207848.P9864614398488846510

`A207845(A155212(n)+13)`
-/

namespace A207848.P9864614398488846510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A155212 n + 13).toNat

end

end A207848.P9864614398488846510

/-! ## A207848.P16762021868937971216

`A207845(A253145(n+3)+5)`
-/

namespace A207848.P16762021868937971216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A253145 (n + 3) + 5).toNat

end

end A207848.P16762021868937971216

/-! ## A207848.P9271936782266378427

`A207845(A000096(n+3)+6)`
-/

namespace A207848.P9271936782266378427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000096 (n + 3) + 6).toNat

end

end A207848.P9271936782266378427

/-! ## A207848.P3930497189482270981

`A207845(A000124(n+5)-(n+1))`
-/

namespace A207848.P3930497189482270981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207848.P3930497189482270981

/-!
# A207849: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207849, there is no canonical definition to state claims against.
-/

/-! ## A207849.P638127556829046406

`A207845(Δ[A111396(n)]+9)`
-/

namespace A207849.P638127556829046406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (f1 (n + 1) - f1 n + 9).toNat

end

end A207849.P638127556829046406

/-! ## A207849.P4958901244173506548

`A207845(A000124(n+5)+5)`
-/

namespace A207849.P4958901244173506548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 5) + 5).toNat

end

end A207849.P4958901244173506548

/-! ## A207849.P5376740866404439361

`A207845(A000096(n+4)+7)`
-/

namespace A207849.P5376740866404439361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000096 (n + 4) + 7).toNat

end

end A207849.P5376740866404439361

/-! ## A207849.P11357394940126828603

`A207845(A000217(n+5)+6)`
-/

namespace A207849.P11357394940126828603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000217 (n + 5) + 6).toNat

end

end A207849.P11357394940126828603

/-! ## A207849.P11882248740179010813

`A207845(A034856(n+6)-A004273(n+3))`
-/

namespace A207849.P11882248740179010813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A034856 (n + 6) - A004273 (n + 3)).toNat

end

end A207849.P11882248740179010813

/-!
# A207850: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207850, there is no canonical definition to state claims against.
-/

/-! ## A207850.P13121432306662401275

`A207845(A167487(n+5))`
-/

namespace A207850.P13121432306662401275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167487 (n + 5)).toNat

end

end A207850.P13121432306662401275

/-! ## A207850.P16037641861415396667

`A207845(A056119(n)+28)`
-/

namespace A207850.P16037641861415396667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A056119 n + 28).toNat

end

end A207850.P16037641861415396667

/-! ## A207850.P13866816555485239191

`A207845(A167499(n+5)+2)`
-/

namespace A207850.P13866816555485239191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167499 (n + 5) + 2).toNat

end

end A207850.P13866816555485239191

/-! ## A207850.P13296939198642808319

`A207845(A167614(n+5)+4)`
-/

namespace A207850.P13296939198642808319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A167614 (n + 5) + 4).toNat

end

end A207850.P13296939198642808319

/-! ## A207850.P13001188964986133289

`A207845(A000124(n+6)+6)`
-/

namespace A207850.P13001188964986133289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207845 (A000124 (n + 6) + 6).toNat

end

end A207850.P13001188964986133289

/-!
# A207851: Number of meanders of order 2n+1 (4*n+2 crossings of the infinite line) with only central 1-1 cut (no other 1-1 cuts).

The programs for A207851, there is no canonical definition to state claims against.
-/

/-! ## A207851.P5456927776517938188

`A208358(n+2)²`
-/

namespace A207851.P5456927776517938188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208358 (n + 2) ^ 2

end

end A207851.P5456927776517938188

/-! ## A207851.P1199589693040194747

`A208358(n+2)^A014085(A143999(n+1))`
-/

namespace A207851.P1199589693040194747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208358 (n + 2) : ℚ) ^ (A014085 (A143999 (n + 1)).toNat : ℤ)

end

end A207851.P1199589693040194747

/-! ## A207851.P14227264262315801675

`A208358(n+2)^A020639(A249674(n+1))`
-/

namespace A207851.P14227264262315801675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208358 (n + 2) : ℚ) ^ (A020639 (A249674 (n + 1)).toNat : ℤ)

end

end A207851.P14227264262315801675

/-! ## A207851.P3118460350628424448

`lcm(A208358(n+2)*A208358(n+2), A033999(n))`
-/

namespace A207851.P3118460350628424448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A208358 (n + 2) * A208358 (n + 2)) (A033999 n)

end

end A207851.P3118460350628424448

/-! ## A207851.P6478114969902236661

`A033999(2*n)*A208358(n+2)*A208358(n+2)`
-/

namespace A207851.P6478114969902236661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A208358 (n + 2) * A208358 (n + 2)

end

end A207851.P6478114969902236661

/-!
# A207853: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207853, there is no canonical definition to state claims against.
-/

/-! ## A207853.P3924958437209911372

`A207858(∑[4*n]+1)`
-/

namespace A207853.P3924958437209911372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207853.P3924958437209911372

/-! ## A207853.P14924463546997918202

`record[A003982(n)*A207858(n+1)]`
-/

namespace A207853.P14924463546997918202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207853.P14924463546997918202

/-! ## A207853.P3525451429112836192

`record[gcd(A114327(n), A207858(n+1))]`
-/

namespace A207853.P3525451429112836192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207858 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207853.P3525451429112836192

/-! ## A207853.P15325936727250633335

`lcm(A033999(n), A207858(A001844(n)))`
-/

namespace A207853.P15325936727250633335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207858 (A001844 n).toNat)

end

end A207853.P15325936727250633335

/-! ## A207853.P3493987797725903043

`A207858(A001844(n))%A138721(n+1)`
-/

namespace A207853.P3493987797725903043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207858 (A001844 n).toNat) (A138721 (n + 1))

end

end A207853.P3493987797725903043

/-!
# A207854: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207854, the canonical program `A207854.P17334441881505106195` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207854 has offset 1).

The definition of A207854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207854.P13777542310371161313

`A217450(n+2)²`
-/

namespace A207854.P13777542310371161313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (n + 2) ^ 2

end

end A207854.P13777542310371161313

namespace A207854

/-- `A217450(n+2)²` -/
def P13777542310371161313.Spec : Prop :=
  ∀ n, P13777542310371161313.a n = A207854 (n + 1)

end A207854

/-! ## A207854.P6266561583062388505

`record[A217450(abs(A157128(n)))²]`
-/

namespace A207854.P6266561583062388505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 |A157128 n|.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207854.P6266561583062388505

namespace A207854

/-- `record[A217450(abs(A157128(n)))²]` -/
def P6266561583062388505.Spec : Prop :=
  ∀ n, P6266561583062388505.a n = A207854 (n + 1)

end A207854

/-! ## A207854.P3194419290409816087

`A217450(A000027(n+2))^2`
-/

namespace A207854.P3194419290409816087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (A000027 (n + 2)).toNat ^ 2

end

end A207854.P3194419290409816087

namespace A207854

/-- `A217450(A000027(n+2))^2` -/
def P3194419290409816087.Spec : Prop :=
  ∀ n, P3194419290409816087.a n = A207854 (n + 1)

end A207854

/-! ## A207854.P17334441881505106195

`(A200865(n+2)-Δ[A200865(n+2)])²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207854

/-- `(A200865(n+2)-Δ[A200865(n+2)])²` -/
def P17334441881505106195.Spec : Prop :=
  ∀ n, P17334441881505106195.a n = A207854 (n + 1)

theorem P17334441881505106195.correct : P17334441881505106195.Spec := by
  intro n
  simp only [A207854, Nat.add_sub_cancel]

end A207854

/-! ## A207854.P4461990854486594212

`A217450(n+2)^(A345942(A006530(n+1))+1)`
-/

namespace A207854.P4461990854486594212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217450 (n + 2) : ℚ) ^ (A345942 (A006530 (n + 1)).toNat + 1 : ℤ)

end

end A207854.P4461990854486594212

namespace A207854

/-- `A217450(n+2)^(A345942(A006530(n+1))+1)` -/
def P4461990854486594212.Spec : Prop :=
  ∀ n, P4461990854486594212.a n = (A207854 (n + 1) : ℚ)

end A207854

/-! ## A207854.P17730979822979573597

`A207249(n+1)/A206981(n+1)*A207249(n+1)`
-/

namespace A207854.P17730979822979573597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207249 (n + 1) : ℚ)

end

end A207854.P17730979822979573597

namespace A207854

/-- `A207249(n+1)/A206981(n+1)*A207249(n+1)` -/
def P17730979822979573597.Spec : Prop :=
  ∀ n, P17730979822979573597.a n = (A207854 (n + 1) : ℚ)

end A207854

/-! ## A207854.P15767759892126988107

`(A217450(n+2)+A000038(2*n+1))*A217450(n+2)`
-/

namespace A207854.P15767759892126988107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A217450 (n + 2) + A000038 (2 * n + 1)) * A217450 (n + 2)

end

end A207854.P15767759892126988107

namespace A207854

/-- `(A217450(n+2)+A000038(2*n+1))*A217450(n+2)` -/
def P15767759892126988107.Spec : Prop :=
  ∀ n, P15767759892126988107.a n = A207854 (n + 1)

end A207854

/-! ## A207854.P15574804344257057684

`A207946(n+1)/A207947(n+1)*A207946(n+1)`
-/

namespace A207854.P15574804344257057684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207946 (n + 1) : ℚ) / (A207947 (n + 1) : ℚ) * (A207946 (n + 1) : ℚ)

end

end A207854.P15574804344257057684

namespace A207854

/-- `A207946(n+1)/A207947(n+1)*A207946(n+1)` -/
def P15574804344257057684.Spec : Prop :=
  ∀ n, P15574804344257057684.a n = (A207854 (n + 1) : ℚ)

end A207854

/-! ## A207854.P7145552457890089329

`A207855(n+1)/A207856(n+1)*A207855(n+1)`
-/

namespace A207854.P7145552457890089329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207855 (n + 1) : ℚ) / (A207856 (n + 1) : ℚ) * (A207855 (n + 1) : ℚ)

end

end A207854.P7145552457890089329

namespace A207854

/-- `A207855(n+1)/A207856(n+1)*A207855(n+1)` -/
def P7145552457890089329.Spec : Prop :=
  ∀ n, P7145552457890089329.a n = (A207854 (n + 1) : ℚ)

end A207854

/-! ## A207854.P12341319402630679171

`A207249(n+1)²/A206981(n+1)`
-/

namespace A207854.P12341319402630679171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A207854.P12341319402630679171

namespace A207854

/-- `A207249(n+1)²/A206981(n+1)` -/
def P12341319402630679171.Spec : Prop :=
  ∀ n, P12341319402630679171.a n = (A207854 (n + 1) : ℚ)

end A207854

/-!
# A207855: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207855, there is no canonical definition to state claims against.
-/

/-! ## A207855.P7829610780611720302

`A207249(n+1)/A206981(n+1)*A207804(n+1)`
-/

namespace A207855.P7829610780611720302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207804 (n + 1) : ℚ)

end

end A207855.P7829610780611720302

/-! ## A207855.P9537009984331240736

`sqrt(A207854(n+1))*sqrt(A207856(n+1))`
-/

namespace A207855.P9537009984331240736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (n + 1) : ℝ) * Real.sqrt (A207856 (n + 1) : ℝ)

end

end A207855.P9537009984331240736

/-! ## A207855.P16420569398009699736

`sqrt(A207854(n+1)*A207856(n+1))`
-/

namespace A207855.P16420569398009699736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (n + 1) * A207856 (n + 1) : ℝ)

end

end A207855.P16420569398009699736

/-! ## A207855.P4594037216879019211

`A207858(Δ[A264443(n)])`
-/

namespace A207855.P4594037216879019211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (f1 (n + 1) - f1 n).toNat

end

end A207855.P4594037216879019211

/-! ## A207855.P14390088537195216893

`A207858(A046691(n+3))`
-/

namespace A207855.P14390088537195216893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A046691 (n + 3)).toNat

end

end A207855.P14390088537195216893

/-!
# A207856: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207856, there is no canonical definition to state claims against.
-/

/-! ## A207856.P13902234243037522995

`A207804(n+1)/A206981(n+1)*A207804(n+1)`
-/

namespace A207856.P13902234243037522995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207804 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207804 (n + 1) : ℚ)

end

end A207856.P13902234243037522995

/-! ## A207856.P9502846851436327277

`A207855(n+1)/A207854(n+1)*A207855(n+1)`
-/

namespace A207856.P9502846851436327277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207855 (n + 1) : ℚ) / (A207854 (n + 1) : ℚ) * (A207855 (n + 1) : ℚ)

end

end A207856.P9502846851436327277

/-! ## A207856.P9595528537831023048

`(A207855(n+1)/A207249(n+1))²*A206981(n+1)`
-/

namespace A207856.P9595528537831023048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207855 (n + 1) : ℚ) / (A207249 (n + 1) : ℚ)) ^ 2 * (A206981 (n + 1) : ℚ)

end

end A207856.P9595528537831023048

/-! ## A207856.P17792002979646516889

`A207804(n+1)²/A206981(n+1)`
-/

namespace A207856.P17792002979646516889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207804 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A207856.P17792002979646516889

/-! ## A207856.P100351077743865723

`A207855(n+1)²/A207854(n+1)`
-/

namespace A207856.P100351077743865723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207855 (n + 1) ^ 2 : ℚ) / (A207854 (n + 1) : ℚ)

end

end A207856.P100351077743865723

/-!
# A207857: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207857, there is no canonical definition to state claims against.
-/

/-! ## A207857.P17038036813358953605

`A207804(n+1)/A206981(n+1)*A207805(n+1)`
-/

namespace A207857.P17038036813358953605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207804 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207805 (n + 1) : ℚ)

end

end A207857.P17038036813358953605

/-! ## A207857.P11339638953717202500

`A207858(A055999(n+4))`
-/

namespace A207857.P11339638953717202500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A055999 (n + 4)).toNat

end

end A207857.P11339638953717202500

/-! ## A207857.P5743025967672737015

`A207858(eq[6, A193592(n)])`
-/

namespace A207857.P5743025967672737015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207857.P5743025967672737015

/-! ## A207857.P214536537984275081

`A207858(A166136(n+4)+2*n+1)`
-/

namespace A207857.P214536537984275081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A207857.P214536537984275081

/-! ## A207857.P2915442476346521386

`A207858(eq[7, A200370(n+1)])`
-/

namespace A207857.P2915442476346521386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207857.P2915442476346521386

/-!
# A207858: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207858, there is no canonical definition to state claims against.
-/

/-! ## A207858.P6308621434986420859

`A326292(A193958(n))+A207949(n+1)`
-/

namespace A207858.P6308621434986420859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A193958 n).toNat + A207949 (n + 1)

end

end A207858.P6308621434986420859

/-! ## A207858.P544298487970371118

`A207908(n+1)+A010894(A051455(n))`
-/

namespace A207858.P544298487970371118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (n + 1) + A010894 ((A051455 n).toNat + 21)

end

end A207858.P544298487970371118

/-! ## A207858.P16549584693737003510

`A208039(n+1)+A010894(A051455(n))`
-/

namespace A207858.P16549584693737003510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1) + A010894 ((A051455 n).toNat + 21)

end

end A207858.P16549584693737003510

/-! ## A207858.P4452721327780161461

`A207908(n+1)+A011731(A056353(n))`
-/

namespace A207858.P4452721327780161461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (n + 1) + A011731 (A056353 n).toNat

end

end A207858.P4452721327780161461

/-! ## A207858.P16677632694221093564

`A208039(n+1)+A011731(A056353(n))`
-/

namespace A207858.P16677632694221093564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1) + A011731 (A056353 n).toNat

end

end A207858.P16677632694221093564

/-!
# A207859: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207859, there is no canonical definition to state claims against.
-/

/-! ## A207859.P11390309474767218756

`A207858(∑[n+5]+5-2*n)`
-/

namespace A207859.P11390309474767218756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A207859.P11390309474767218756

/-! ## A207859.P5734769137813925407

`lcm(or(n, -1), A207858(A055999(n)+10))`
-/

namespace A207859.P5734769137813925407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A207858 (A055999 n + 10).toNat)

end

end A207859.P5734769137813925407

/-! ## A207859.P1922919751056769042

`A207858(A141214(n)+7)+A022003(∑[n])`
-/

namespace A207859.P1922919751056769042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A141214 n + 7).toNat + A022003 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207859.P1922919751056769042

/-! ## A207859.P3985571464452158012

`A207858(A141214(n)+7)+char[A000217(n+8)]`
-/

namespace A207859.P3985571464452158012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A141214 n + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207859.P3985571464452158012

/-!
# A207860: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207860, there is no canonical definition to state claims against.
-/

/-! ## A207860.P8304936963945693625

`A207858(A167499(n+3))`
-/

namespace A207860.P8304936963945693625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A167499 (n + 3)).toNat

end

end A207860.P8304936963945693625

/-! ## A207860.P11899572505138733217

`A207858(A155212(n)+13)`
-/

namespace A207860.P11899572505138733217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A155212 n + 13).toNat

end

end A207860.P11899572505138733217

/-! ## A207860.P13700235244585659506

`A207858(A056000(n)+15)`
-/

namespace A207860.P13700235244585659506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A056000 n + 15).toNat

end

end A207860.P13700235244585659506

/-! ## A207860.P11148520428061752417

`A207858(A000096(n+4)-(n-1))`
-/

namespace A207860.P11148520428061752417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A207860.P11148520428061752417

/-! ## A207860.P6745332000610185230

`A207858(A167614(n+1)+A005843(n)+9)`
-/

namespace A207860.P6745332000610185230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A167614 (n + 1) + A005843 n + 9).toNat

end

end A207860.P6745332000610185230

/-!
# A207861: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207861, there is no canonical definition to state claims against.
-/

/-! ## A207861.P10182025699820291493

`A207858(A166136(n+4))`
-/

namespace A207861.P10182025699820291493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A166136 (n + 4)).toNat

end

end A207861.P10182025699820291493

/-! ## A207861.P13838155355804512736

`A207858(Δ[A264443(n)]+10)`
-/

namespace A207861.P13838155355804512736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (f1 (n + 1) - f1 n + 10).toNat

end

end A207861.P13838155355804512736

/-! ## A207861.P16299350509949653095

`A207858(A000217(n+5)+6)`
-/

namespace A207861.P16299350509949653095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A000217 (n + 5) + 6).toNat

end

end A207861.P16299350509949653095

/-! ## A207861.P5067823934187042921

`A207858(A246172(n+1)+20)`
-/

namespace A207861.P5067823934187042921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A246172 (n + 1) + 20).toNat

end

end A207861.P5067823934187042921

/-! ## A207861.P13460025906869272834

`A207858(eq[7, A131818(n+1)])`
-/

namespace A207861.P13460025906869272834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207861.P13460025906869272834

/-!
# A207862: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207862, there is no canonical definition to state claims against.
-/

/-! ## A207862.P10480775355208263763

`A207858(A056119(n)+28)`
-/

namespace A207862.P10480775355208263763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A056119 n + 28).toNat

end

end A207862.P10480775355208263763

/-! ## A207862.P2340569716676237652

`A207858(eq[11, A066657(n)])`
-/

namespace A207862.P2340569716676237652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207862.P2340569716676237652

/-! ## A207862.P2408334507125057502

`A207858(A000096(n+5)+8)`
-/

namespace A207862.P2408334507125057502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A000096 (n + 5) + 8).toNat

end

end A207862.P2408334507125057502

/-! ## A207862.P17978936223527093846

`A207858(A000217(n+6)+7)`
-/

namespace A207862.P17978936223527093846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A000217 (n + 6) + 7).toNat

end

end A207862.P17978936223527093846

/-! ## A207862.P9366980416519624859

`A207858(eq[8, A131818(n+1)])`
-/

namespace A207862.P9366980416519624859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207862.P9366980416519624859

/-!
# A207863: Number of n X n nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207863, there is no canonical definition to state claims against.
-/

/-! ## A207863.P106984887606180400

`A207868((n+1)²+n²)`
-/

namespace A207863.P106984887606180400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 ((n + 1) ^ 2 + n ^ 2)

end

end A207863.P106984887606180400

/-!
# A207864: Number of n X 2 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207864, there is no canonical definition to state claims against.
-/

/-! ## A207864.P7155520971133791561

`A215953(2*(n+1))`
-/

namespace A207864.P7155520971133791561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215953 (2 * (n + 1))

end

end A207864.P7155520971133791561

/-! ## A207864.P4149377095305548529

`record[A215953(n+2)/A033999(n)]`
-/

namespace A207864.P4149377095305548529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215953 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207864.P4149377095305548529

/-! ## A207864.P990703042564602312

`record[gcd(A215953(n+1), A266439(n))]`
-/

namespace A207864.P990703042564602312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215953 (n + 1)) (A266439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207864.P990703042564602312

/-! ## A207864.P8053906119588526698

`record[and(A033999(n), A215953(n+1))]`
-/

namespace A207864.P8053906119588526698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A215953 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207864.P8053906119588526698

/-! ## A207864.P758878437381338921

`A215953(A103517(n))^A178334(n)`
-/

namespace A207864.P758878437381338921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215953 (A103517 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A207864.P758878437381338921

/-!
# A207865: Number of n X 3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207865, there is no canonical definition to state claims against.
-/

/-! ## A207865.P12502415897605741047

`A207868(∑[n+2]+4)`
-/

namespace A207865.P12502415897605741047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207865.P12502415897605741047

/-! ## A207865.P7278085054420735249

`lcm(2, A207868(A167614(n+1)))`
-/

namespace A207865.P7278085054420735249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207868 (A167614 (n + 1)).toNat)

end

end A207865.P7278085054420735249

/-! ## A207865.P16618816507786919523

`gcd(A000038(n), A207868(A167614(n+1)))`
-/

namespace A207865.P16618816507786919523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207868 (A167614 (n + 1)).toNat)

end

end A207865.P16618816507786919523

/-! ## A207865.P15099812905094986804

`A207868(A167614(n+1))+A000007(n+1)`
-/

namespace A207865.P15099812905094986804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A207865.P15099812905094986804

/-! ## A207865.P11643576081803811727

`A243835(2*n+3)+A207868(A167614(n+1))`
-/

namespace A207865.P11643576081803811727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 (2 * n + 3) + A207868 (A167614 (n + 1)).toNat

end

end A207865.P11643576081803811727

/-!
# A207866: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207866, there is no canonical definition to state claims against.
-/

/-! ## A207866.P7569024698315509077

`A207868(A141214(n)+7)`
-/

namespace A207866.P7569024698315509077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (A141214 n + 7).toNat

end

end A207866.P7569024698315509077

/-! ## A207866.P14030029255007439832

`A207868(A167614(n+2)+1)`
-/

namespace A207866.P14030029255007439832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (A167614 (n + 2) + 1).toNat

end

end A207866.P14030029255007439832

/-! ## A207866.P12421365146138266685

`A207868(A179865(n+4)+4)`
-/

namespace A207866.P12421365146138266685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (A179865 (n + 4) + 4).toNat

end

end A207866.P12421365146138266685

/-! ## A207866.P11253550707578153947

`A207868(eq[5, A131818(n+1)])`
-/

namespace A207866.P11253550707578153947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207866.P11253550707578153947

/-!
# A207867: Number of n X 5 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207867, there is no canonical definition to state claims against.
-/

/-! ## A207867.P8924464506849076008

`A207868(A155212(n)+13)`
-/

namespace A207867.P8924464506849076008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (A155212 n + 13).toNat

end

end A207867.P8924464506849076008

/-!
# A207868: T(n,k)=Number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207868, there is no canonical definition to state claims against.
-/

/-! ## A207868.P15650673113420021080

`A306866(A198914(n+1))`
-/

namespace A207868.P15650673113420021080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306866 (A198914 (n + 1)).toNat

end

end A207868.P15650673113420021080

/-! ## A207868.P11203369430396335513

`A198914(n+1)+A102683(A001405(n))`
-/

namespace A207868.P11203369430396335513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) + A102683 (A001405 n).toNat

end

end A207868.P11203369430396335513

/-! ## A207868.P11976448360300368607

`A198914(n+1)+A102683(A126869(n))`
-/

namespace A207868.P11976448360300368607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) + A102683 (A126869 n).toNat

end

end A207868.P11976448360300368607

/-! ## A207868.P13650894129636312282

`A198914(n+1)+A128937(A128936(n))`
-/

namespace A207868.P13650894129636312282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) + A128937 (A128936 n).toNat

end

end A207868.P13650894129636312282

/-! ## A207868.P6707867706740187960

`A198914(n+1)+A141743(A069524(n+1))`
-/

namespace A207868.P6707867706740187960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) + A141743 (A069524 (n + 1)).toNat

end

end A207868.P6707867706740187960

/-!
# A207869: a(n) = Z(n,-1), where Z(n,x) is the n-th Zeckendorf polynomial.

The programs for A207869, there is no canonical definition to state claims against.
-/

/-! ## A207869.P5967447834678288544

`A065359(lt[and(n, 2*n), atan(n)])`
-/

namespace A207869.P5967447834678288544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A207869.P5967447834678288544

/-! ## A207869.P1402836707807373683

`A065359(lt[and(n, 2*n), sin(n)²])`
-/

namespace A207869.P1402836707807373683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A207869.P1402836707807373683

/-! ## A207869.P6613136022054653733

`A065359(eq[C(2, n+2), and(n, 2*n)])`
-/

namespace A207869.P6613136022054653733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207869.P6613136022054653733

/-! ## A207869.P4115437721665022680

`A065359(lt[and(n, 2*n), n-abs(1-n)])`
-/

namespace A207869.P4115437721665022680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A207869.P4115437721665022680

/-! ## A207869.P9431663825962716925

`A065359(eq[and(2*n, -n), floor(2/acot(n))])`
-/

namespace A207869.P9431663825962716925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207869.P9431663825962716925

/-! ## A207869.P620270338041141264

`A065359(∑[A129761(n)])`
-/

namespace A207869.P620270338041141264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207869.P620270338041141264

/-! ## A207869.P5243907697932691146

`A004718(A048679(n+1))`
-/

namespace A207869.P5243907697932691146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A048679 (n + 1)).toNat

end

end A207869.P5243907697932691146

/-! ## A207869.P10271653736437226847

`A065359(A003714(n+1))`
-/

namespace A207869.P10271653736437226847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A003714 (n + 1)).toNat

end

end A207869.P10271653736437226847

/-! ## A207869.P491174385917931264

`A065364(A060140(n+1))`
-/

namespace A207869.P491174385917931264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065364 (A060140 (n + 1)).toNat

end

end A207869.P491174385917931264

/-! ## A207869.P6867211042508583948

`A065359(eq[2, A331985(n)])`
-/

namespace A207869.P6867211042508583948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207869.P6867211042508583948

/-!
# A207870: Numbers k matched to Zeckendorf polynomials divisible by x+1.

The programs for A207870, there is no canonical definition to state claims against.
-/

/-! ## A207870.P46979445235942567

`eq[A165276(n+1), A165277(n+1)]+1`
-/

namespace A207870.P46979445235942567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A207870.P46979445235942567

/-! ## A207870.P14051289220078747022

`eq[A000007(n), A004718(A048679(n))]`
-/

namespace A207870.P14051289220078747022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207870.P14051289220078747022

/-! ## A207870.P677415552181630643

`eq[A000038(n), A004718(A048679(n))]`
-/

namespace A207870.P677415552181630643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207870.P677415552181630643

/-! ## A207870.P17219162996332671086

`eq[A000007(n), A004718(A277335(n))]`
-/

namespace A207870.P17219162996332671086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A277335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207870.P17219162996332671086

/-! ## A207870.P3746544163341390176

`eq[A000038(n), A004718(A277335(n))]`
-/

namespace A207870.P3746544163341390176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A277335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207870.P3746544163341390176

/-! ## A207870.P11850342731431053733

`eq[A004718(A048679(n)), A036987(2*n)]`
-/

namespace A207870.P11850342731431053733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A048679 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207870.P11850342731431053733

/-!
# A207871: Numbers matched to Zeckendorf polynomials divisible by x^2 + 1.

The programs for A207871, there is no canonical definition to state claims against.
-/

/-! ## A207871.P8992768024262665528

`eq[A000007(n), A330714(A003714(n))]`
-/

namespace A207871.P8992768024262665528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P8992768024262665528

/-! ## A207871.P2818082066155069846

`eq[A000038(n), A330714(A003714(n))]`
-/

namespace A207871.P2818082066155069846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P2818082066155069846

/-! ## A207871.P692420361549370537

`eq[A000007(n), A330714(A022340(n))]`
-/

namespace A207871.P692420361549370537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A022340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P692420361549370537

/-! ## A207871.P13459277469096226933

`eq[A000038(n), A330714(A022340(n))]`
-/

namespace A207871.P13459277469096226933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A022340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P13459277469096226933

/-! ## A207871.P10157727525221540638

`eq[A000007(n), A330714(A277335(n))]`
-/

namespace A207871.P10157727525221540638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A277335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P10157727525221540638

/-! ## A207871.P6835082352505007688

`eq[A004018(n)%2, A330714(A022340(n))]`
-/

namespace A207871.P6835082352505007688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004018 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A022340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A207871.P6835082352505007688

/-!
# A207872: Denominator of Z(n,1/2), where Z(n,x) is the n-th Zeckendorf polynomial.

The programs for A207872, there is no canonical definition to state claims against.
-/

/-! ## A207872.P10231577726664044942

`2^floor(log((n+1)²))`
-/

namespace A207872.P10231577726664044942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ : ℤ)

end

end A207872.P10231577726664044942

/-! ## A207872.P14022907658400749487

`2*a(floor(n/ϕ))` with `a(0)=1`
-/

namespace A207872.P14022907658400749487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

end

end A207872.P14022907658400749487

/-! ## A207872.P17829642829874091895

`2/a(floor(n/ϕ))^-1` with `a(0)=1`
-/

namespace A207872.P17829642829874091895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ (-1 : ℤ)

end

end A207872.P17829642829874091895

/-! ## A207872.P14504150651828715831

`round(2*a(ceil(n/ϕ)-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A207872.P14504150651828715831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (⌈(n : ℝ) / Real.goldenRatio⌉ - 1).toNat

end

end A207872.P14504150651828715831

/-! ## A207872.P4761707081412911681

`2*floor(a(floor(ϕ*n)-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A207872.P4761707081412911681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (⌊Real.goldenRatio * (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A207872.P4761707081412911681

/-! ## A207872.P6301275457319940807

`∏[A192687(n)+1]/2`
-/

namespace A207872.P6301275457319940807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A207872.P6301275457319940807

/-! ## A207872.P134107798887137268

`∏[2-A095792(n)]/2`
-/

namespace A207872.P134107798887137268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A095792 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A207872.P134107798887137268

/-! ## A207872.P7019652945502578975

`floor(2^(A072649(n+1)-1))`
-/

namespace A207872.P7019652945502578975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A072649 (n + 1) - 1 : ℤ)⌋

end

end A207872.P7019652945502578975

/-! ## A207872.P8530657295936134599

`A000203(a(floor(n/ϕ)))+1` with `a(0)=1`
-/

namespace A207872.P8530657295936134599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat).toNat + 1

end

end A207872.P8530657295936134599

/-! ## A207872.P3415090217483692297

`A000010(2^ceil(log((n+1)²)))`
-/

namespace A207872.P3415090217483692297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.log ((n + 1) ^ 2 : ℝ)⌉ : ℤ))).toNat

end

end A207872.P3415090217483692297

/-!
# A207873: Numerator of Z(n,1/2), where Z(n,x) is the n-th Zeckendorf polynomial.

The programs for A207873, there is no canonical definition to state claims against.
-/

/-! ## A207873.P12155010745654926925

`A030101(eq[and(n, 2*n), floor(acot(n)²)])`
-/

namespace A207873.P12155010745654926925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207873.P12155010745654926925

/-! ## A207873.P17116364743883562408

`A030101(eq[C(2, n+2), and(n, 2*n)])`
-/

namespace A207873.P17116364743883562408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207873.P17116364743883562408

/-! ## A207873.P7837994282407925675

`A030101(eq[and(2*n, -n), floor(2/acot(n))])`
-/

namespace A207873.P7837994282407925675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207873.P7837994282407925675

/-! ## A207873.P13175149577583995533

`A030101(∑[A129761(n)])`
-/

namespace A207873.P13175149577583995533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207873.P13175149577583995533

/-! ## A207873.P5651853462769306127

`A030101(A003714(n+1))`
-/

namespace A207873.P5651853462769306127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A003714 (n + 1)).toNat

end

end A207873.P5651853462769306127

/-! ## A207873.P12154190130365642810

`A030101(A022340(n+1))`
-/

namespace A207873.P12154190130365642810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A022340 (n + 1)).toNat

end

end A207873.P12154190130365642810

/-! ## A207873.P15921565366872948306

`A119608(A022341(n+1))`
-/

namespace A207873.P15921565366872948306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A022341 (n + 1)).toNat

end

end A207873.P15921565366872948306

/-! ## A207873.P6708212062949018656

`A119608(A118113(n+1))`
-/

namespace A207873.P6708212062949018656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A118113 (n + 1)).toNat

end

end A207873.P6708212062949018656

/-! ## A207873.P10473861116762706065

`A003714(A349238(n+1))`
-/

namespace A207873.P10473861116762706065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A349238 (n + 1)).toNat

end

end A207873.P10473861116762706065

/-! ## A207873.P17172761183262521895

`A380443(A277335(n+1))`
-/

namespace A207873.P17172761183262521895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380443 (A277335 (n + 1)).toNat

end

end A207873.P17172761183262521895

/-!
# A207874: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207874, there is no canonical definition to state claims against.
-/

/-! ## A207874.P9504994160321186894

`A207879((n+1)²+n²)`
-/

namespace A207874.P9504994160321186894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 ((n + 1) ^ 2 + n ^ 2)

end

end A207874.P9504994160321186894

/-! ## A207874.P2894281075675111805

`lcm(2, A207879(A001844(n)))`
-/

namespace A207874.P2894281075675111805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207879 (A001844 n).toNat)

end

end A207874.P2894281075675111805

/-! ## A207874.P3438401160058513333

`A207879(A001844(n))%A195660(n+1)`
-/

namespace A207874.P3438401160058513333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207879 (A001844 n).toNat) (A195660 (n + 1))

end

end A207874.P3438401160058513333

/-! ## A207874.P5394407280720663580

`A007318(C(n, n²)!)*A207879(A001844(n))`
-/

namespace A207874.P5394407280720663580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose n (n ^ 2))) * A207879 (A001844 n).toNat

end

end A207874.P5394407280720663580

/-! ## A207874.P10518192268765510306

`A207879(A000982(2*n+1))%A207860(n+1)`
-/

namespace A207874.P10518192268765510306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207879 (A000982 (2 * n + 1)).toNat) (A207860 (n + 1))

end

end A207874.P10518192268765510306

/-!
# A207875: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207875, there is no canonical definition to state claims against.
-/

/-! ## A207875.P15047284384175992437

`A207879(A374004(n+1))`
-/

namespace A207875.P15047284384175992437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A374004 (n + 1)).toNat

end

end A207875.P15047284384175992437

/-! ## A207875.P4242097492135593072

`A207879(A052905(n)+9)`
-/

namespace A207875.P4242097492135593072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A052905 n + 9).toNat

end

end A207875.P4242097492135593072

/-! ## A207875.P18064454817440556383

`A207879(A055999(n)+10)`
-/

namespace A207875.P18064454817440556383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A055999 n + 10).toNat

end

end A207875.P18064454817440556383

/-! ## A207875.P2297143816162899962

`A207879(A167614(n+2)+1)`
-/

namespace A207875.P2297143816162899962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A167614 (n + 2) + 1).toNat

end

end A207875.P2297143816162899962

/-! ## A207875.P6400043815044691865

`A207879(Δ[A264443(n)-n²])`
-/

namespace A207875.P6400043815044691865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (f1 (n + 1) - f1 n).toNat

end

end A207875.P6400043815044691865

/-!
# A207876: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207876, there is no canonical definition to state claims against.
-/

/-! ## A207876.P16447298229249035664

`A207879(A374005(n+1))`
-/

namespace A207876.P16447298229249035664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A374005 (n + 1)).toNat

end

end A207876.P16447298229249035664

/-! ## A207876.P17986965380984895979

`A207879(A167499(n+3))`
-/

namespace A207876.P17986965380984895979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A167499 (n + 3)).toNat

end

end A207876.P17986965380984895979

/-! ## A207876.P8389287542524836365

`A207879(A000096(n+3)+6)`
-/

namespace A207876.P8389287542524836365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A000096 (n + 3) + 6).toNat

end

end A207876.P8389287542524836365

/-! ## A207876.P15129194167977939370

`A207879(A034856(n+4)-(n-2))`
-/

namespace A207876.P15129194167977939370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A207876.P15129194167977939370

/-! ## A207876.P374001852647177208

`A207879(A038722(Δ[A264443(n)]))`
-/

namespace A207876.P374001852647177208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207876.P374001852647177208

/-!
# A207877: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207877, there is no canonical definition to state claims against.
-/

/-! ## A207877.P18323274562565013114

`A207879(A374007(n+1))`
-/

namespace A207877.P18323274562565013114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A374007 (n + 1)).toNat

end

end A207877.P18323274562565013114

/-! ## A207877.P2562779626188641457

`A207879(A000217(n+5)+6)`
-/

namespace A207877.P2562779626188641457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A000217 (n + 5) + 6).toNat

end

end A207877.P2562779626188641457

/-! ## A207877.P14191711758980187275

`A207879(A034856(n+4)+8)`
-/

namespace A207877.P14191711758980187275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A034856 (n + 4) + 8).toNat

end

end A207877.P14191711758980187275

/-! ## A207877.P9538041254840801292

`A207879(A052905(n+3))`
-/

namespace A207877.P9538041254840801292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A052905 (n + 3)).toNat

end

end A207877.P9538041254840801292

/-! ## A207877.P17756508829744467727

`A207879(Δ[Δ[A006504(n+1)]])`
-/

namespace A207877.P17756508829744467727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (f1 (n + 1) - f1 n).toNat

end

end A207877.P17756508829744467727

/-!
# A207878: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207878, there is no canonical definition to state claims against.
-/

/-! ## A207878.P6509191462694607063

`A207879(A374008(n+1))`
-/

namespace A207878.P6509191462694607063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A374008 (n + 1)).toNat

end

end A207878.P6509191462694607063

/-! ## A207878.P12733342130328786407

`A207879(A000124(n+6)+6)`
-/

namespace A207878.P12733342130328786407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A000124 (n + 6) + 6).toNat

end

end A207878.P12733342130328786407

/-! ## A207878.P1426709828379107672

`A207879(A000217(n+6)+7)`
-/

namespace A207878.P1426709828379107672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A000217 (n + 6) + 7).toNat

end

end A207878.P1426709828379107672

/-! ## A207878.P12147753790617829722

`A207879(A020719(A000217(n+6)))`
-/

namespace A207878.P12147753790617829722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A020719 (A000217 (n + 6)).toNat).toNat

end

end A207878.P12147753790617829722

/-! ## A207878.P7762377325114846140

`A207879(A055999(n+4))`
-/

namespace A207878.P7762377325114846140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (A055999 (n + 4)).toNat

end

end A207878.P7762377325114846140

/-!
# A207879: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A207879, there is no canonical definition to state claims against.
-/

/-! ## A207879.P16984039751358111495

`A207682(n+1)-A126836(A267326(2*(n+1)))`
-/

namespace A207879.P16984039751358111495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (n + 1) - A126836 (A267326 (2 * (n + 1))).toNat

end

end A207879.P16984039751358111495

/-! ## A207879.P2843543777742073005

`A207682(n+1)-A014083(A244172(n+9))`
-/

namespace A207879.P2843543777742073005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (n + 1) - A014083 (A244172 (n + 9)).toNat

end

end A207879.P2843543777742073005

/-!
# A207880: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207880, there is no canonical definition to state claims against.
-/

/-! ## A207880.P2357310250686873473

`A207885((n+1)²+n²)`
-/

namespace A207880.P2357310250686873473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 ((n + 1) ^ 2 + n ^ 2)

end

end A207880.P2357310250686873473

/-! ## A207880.P17507893245278252827

`record[gcd(A165507(n+1), A207885(n+1))]`
-/

namespace A207880.P17507893245278252827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165507 (n + 1)) (A207885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207880.P17507893245278252827

/-! ## A207880.P302928834532283087

`A207885(A001844(n))+A185245(n)`
-/

namespace A207880.P302928834532283087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A001844 n).toNat + A185245 n

end

end A207880.P302928834532283087

/-! ## A207880.P721052106494694557

`gcd(A000038(n), A207885(A001844(n)))`
-/

namespace A207880.P721052106494694557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207885 (A001844 n).toNat)

end

end A207880.P721052106494694557

/-! ## A207880.P16403875381202740084

`lcm(A057077(n), A207885(A001844(n)))`
-/

namespace A207880.P16403875381202740084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A207885 (A001844 n).toNat)

end

end A207880.P16403875381202740084

/-!
# A207881: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207881, there is no canonical definition to state claims against.
-/

/-! ## A207881.P14142944801588411177

`A207885(A141214(n+1))`
-/

namespace A207881.P14142944801588411177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A141214 (n + 1)).toNat

end

end A207881.P14142944801588411177

/-! ## A207881.P12142573234022995153

`A207885(A027379(n+2))`
-/

namespace A207881.P12142573234022995153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A027379 (n + 2)).toNat

end

end A207881.P12142573234022995153

/-! ## A207881.P15161179440930794363

`A207885(A055998(n+2))`
-/

namespace A207881.P15161179440930794363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A055998 (n + 2)).toNat

end

end A207881.P15161179440930794363

/-! ## A207881.P8569340527012896490

`A207885(A056000(n)+7)`
-/

namespace A207881.P8569340527012896490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A056000 n + 7).toNat

end

end A207881.P8569340527012896490

/-! ## A207881.P16116191517990734807

`A207885(A052905(n+1)+2)`
-/

namespace A207881.P16116191517990734807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A052905 (n + 1) + 2).toNat

end

end A207881.P16116191517990734807

/-!
# A207882: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207882, there is no canonical definition to state claims against.
-/

/-! ## A207882.P14012824600322058921

`A207885(A046691(n+3))`
-/

namespace A207882.P14012824600322058921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A046691 (n + 3)).toNat

end

end A207882.P14012824600322058921

/-! ## A207882.P17107863198795470746

`A207885(A060577(n+4))`
-/

namespace A207882.P17107863198795470746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A060577 (n + 4)).toNat

end

end A207882.P17107863198795470746

/-! ## A207882.P16232418239823342878

`A207885(Δ[A023545(n+1)])`
-/

namespace A207882.P16232418239823342878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (f1 (n + 1) - f1 n).toNat

end

end A207882.P16232418239823342878

/-! ## A207882.P3826212949192243491

`A207885(A055999(n+2)+2)`
-/

namespace A207882.P3826212949192243491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A055999 (n + 2) + 2).toNat

end

end A207882.P3826212949192243491

/-! ## A207882.P17575484273158296045

`A207885(A155212(n+1)+4)`
-/

namespace A207882.P17575484273158296045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A155212 (n + 1) + 4).toNat

end

end A207882.P17575484273158296045

/-!
# A207883: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207883, there is no canonical definition to state claims against.
-/

/-! ## A207883.P12275380957429343101

`A207885(A052905(n+3))`
-/

namespace A207883.P12275380957429343101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A052905 (n + 3)).toNat

end

end A207883.P12275380957429343101

/-! ## A207883.P18306900926759404599

`A207885(A027379(n+4)-2)`
-/

namespace A207883.P18306900926759404599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A027379 (n + 4) - 2).toNat

end

end A207883.P18306900926759404599

/-! ## A207883.P14929889377510599874

`A207885(A000217(n+6)-5)`
-/

namespace A207883.P14929889377510599874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000217 (n + 6) - 5).toNat

end

end A207883.P14929889377510599874

/-! ## A207883.P12523172622202657404

`A207885(A000124(n+6)-6)`
-/

namespace A207883.P12523172622202657404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000124 (n + 6) - 6).toNat

end

end A207883.P12523172622202657404

/-! ## A207883.P9815801813342622369

`A207885(A167499(n+5)-10)`
-/

namespace A207883.P9815801813342622369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A167499 (n + 5) - 10).toNat

end

end A207883.P9815801813342622369

/-!
# A207884: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207884, there is no canonical definition to state claims against.
-/

/-! ## A207884.P8709558436786279486

`A207885(Δ[A026054(n+4)])`
-/

namespace A207884.P8709558436786279486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (f1 (n + 1) - f1 n).toNat

end

end A207884.P8709558436786279486

/-! ## A207884.P10440145620593791275

`A207885(A052905(n+4)-1)`
-/

namespace A207884.P10440145620593791275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A052905 (n + 4) - 1).toNat

end

end A207884.P10440145620593791275

/-! ## A207884.P11790372124477564840

`A207885(A000096(n+6)-5)`
-/

namespace A207884.P11790372124477564840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000096 (n + 6) - 5).toNat

end

end A207884.P11790372124477564840

/-! ## A207884.P6000543697513303730

`A207885(A000124(n+7)-7)`
-/

namespace A207884.P6000543697513303730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000124 (n + 7) - 7).toNat

end

end A207884.P6000543697513303730

/-! ## A207884.P16804237622622135460

`A207885(A000217(n+6)+n+1)`
-/

namespace A207884.P16804237622622135460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207884.P16804237622622135460

/-!
# A207885: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207885, there is no canonical definition to state claims against.
-/

/-! ## A207885.P9261288454688361398

`or(A207488(n+1), A321379(A046223(n+1)))`
-/

namespace A207885.P9261288454688361398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207488 (n + 1)) (A321379 (A046223 (n + 1)).toNat)

end

end A207885.P9261288454688361398

/-!
# A207886: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207886, there is no canonical definition to state claims against.
-/

/-! ## A207886.P14614403527820849110

`A207885(A141214(n)+7)`
-/

namespace A207886.P14614403527820849110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A141214 n + 7).toNat

end

end A207886.P14614403527820849110

/-! ## A207886.P7067828843107250799

`A207885(A052905(n)+9)`
-/

namespace A207886.P7067828843107250799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A052905 n + 9).toNat

end

end A207886.P7067828843107250799

/-! ## A207886.P8085497728918117391

`A207885(A055999(n)+10)`
-/

namespace A207886.P8085497728918117391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A055999 n + 10).toNat

end

end A207886.P8085497728918117391

/-! ## A207886.P10638888503512342348

`A207885(A167614(n+2)+1)`
-/

namespace A207886.P10638888503512342348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A167614 (n + 2) + 1).toNat

end

end A207886.P10638888503512342348

/-! ## A207886.P5373310870768993922

`A207885(Δ[A023545(n+1)-n²])`
-/

namespace A207886.P5373310870768993922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (f1 (n + 1) - f1 n).toNat

end

end A207886.P5373310870768993922

/-!
# A207887: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207887, there is no canonical definition to state claims against.
-/

/-! ## A207887.P15750245685815808357

`A207885(A167499(n+3))`
-/

namespace A207887.P15750245685815808357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A167499 (n + 3)).toNat

end

end A207887.P15750245685815808357

/-! ## A207887.P3219995061775810742

`A207885(A155212(n)+13)`
-/

namespace A207887.P3219995061775810742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A155212 n + 13).toNat

end

end A207887.P3219995061775810742

/-! ## A207887.P1230936048442329795

`A207885(A167614(n+3)+2)`
-/

namespace A207887.P1230936048442329795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A167614 (n + 3) + 2).toNat

end

end A207887.P1230936048442329795

/-! ## A207887.P935225607261466938

`A207885(A000124(n+4)+4)`
-/

namespace A207887.P935225607261466938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000124 (n + 4) + 4).toNat

end

end A207887.P935225607261466938

/-! ## A207887.P8127012330799096975

`A207885(A008619(Δ[A026046(n+6)]))`
-/

namespace A207887.P8127012330799096975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207887.P8127012330799096975

/-!
# A207888: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207888, there is no canonical definition to state claims against.
-/

/-! ## A207888.P13093195686130099387

`A207885(A000217(n+5)+6)`
-/

namespace A207888.P13093195686130099387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000217 (n + 5) + 6).toNat

end

end A207888.P13093195686130099387

/-! ## A207888.P6115715157107257131

`A207885(A027379(n+3)+9)`
-/

namespace A207888.P6115715157107257131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A027379 (n + 3) + 9).toNat

end

end A207888.P6115715157107257131

/-! ## A207888.P8398150963805759133

`A207885(A055998(n+3)+9)`
-/

namespace A207888.P8398150963805759133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A055998 (n + 3) + 9).toNat

end

end A207888.P8398150963805759133

/-! ## A207888.P3655801413028214011

`A207885(A046691(n+3)+10)`
-/

namespace A207888.P3655801413028214011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A046691 (n + 3) + 10).toNat

end

end A207888.P3655801413028214011

/-! ## A207888.P11924030891716778968

`A207885(Δ[A023545(n+1)]+10)`
-/

namespace A207888.P11924030891716778968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (f1 (n + 1) - f1 n + 10).toNat

end

end A207888.P11924030891716778968

/-!
# A207889: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207889, there is no canonical definition to state claims against.
-/

/-! ## A207889.P16383483503050194161

`A207885(A133263(n+6)+5)`
-/

namespace A207889.P16383483503050194161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A133263 (n + 6) + 5).toNat

end

end A207889.P16383483503050194161

/-! ## A207889.P2667887766885683376

`A207885(A000217(n+6)+7)`
-/

namespace A207889.P2667887766885683376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A000217 (n + 6) + 7).toNat

end

end A207889.P2667887766885683376

/-! ## A207889.P7162571290372704830

`A207885(A034856(n+5)+9)`
-/

namespace A207889.P7162571290372704830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A034856 (n + 5) + 9).toNat

end

end A207889.P7162571290372704830

/-! ## A207889.P5544820298871655582

`A207885(A052905(n+3)+12)`
-/

namespace A207889.P5544820298871655582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (A052905 (n + 3) + 12).toNat

end

end A207889.P5544820298871655582

/-! ## A207889.P4779440794402970761

`A207885(eq[7, A025581(n)]-2*n)`
-/

namespace A207889.P4779440794402970761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A207889.P4779440794402970761

/-!
# A207890: a(0)=1; for n>=1,- the minimal increasing sequence, such that, for n>=1, the row sums of Pascal-like triangle with left side {1,1,1,...} and right side {a(0), a(1), a(2),...} form an increasing sequence of primes.

The programs for A207890, there is no canonical definition to state claims against.
-/

/-! ## A207890.P1109989537081637905

`lt[n, A163963(n+1)]+1-n`
-/

namespace A207890.P1109989537081637905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A207890.P1109989537081637905

/-! ## A207890.P4837314195907724344

`A163469(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A207890.P4837314195907724344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A163469 (n - 1) + a (n - 1)

end

end A207890.P4837314195907724344

/-! ## A207890.P2879531798700605110

`lt[n, A163963(n+1)]-A023443(n)`
-/

namespace A207890.P2879531798700605110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A023443 n

end

end A207890.P2879531798700605110

/-! ## A207890.P17455329503100753992

`eq[A080735(n+1), A163963(n+1)]+1-n`
-/

namespace A207890.P17455329503100753992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A207890.P17455329503100753992

/-! ## A207890.P3099309124321778772

`eq[A080735(n+1), A163963(n+1)]-A023443(n)`
-/

namespace A207890.P3099309124321778772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A023443 n

end

end A207890.P3099309124321778772

/-!
# A207891: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207891, there is no canonical definition to state claims against.
-/

/-! ## A207891.P5451936800490620228

`A207895(∑[4*n]+1)`
-/

namespace A207891.P5451936800490620228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207891.P5451936800490620228

/-! ## A207891.P5605565442109633392

`record[A003982(n)*A207895(n+1)]`
-/

namespace A207891.P5605565442109633392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207891.P5605565442109633392

/-! ## A207891.P8668600488820904447

`record[gcd(A003987(n), A207895(n+1))]`
-/

namespace A207891.P8668600488820904447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A207895 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207891.P8668600488820904447

/-! ## A207891.P12246959194136285896

`A207895(A001844(n))+A184955(n)`
-/

namespace A207891.P12246959194136285896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A001844 n).toNat + A184955 n

end

end A207891.P12246959194136285896

/-! ## A207891.P15493649913378993083

`A207895(A001844(n))+A185284(n)`
-/

namespace A207891.P15493649913378993083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A001844 n).toNat + A185284 n

end

end A207891.P15493649913378993083

/-!
# A207892: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207892, there is no canonical definition to state claims against.
-/

/-! ## A207892.P10865662688956910656

`A207895(Δ[A264443(n)])`
-/

namespace A207892.P10865662688956910656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n).toNat

end

end A207892.P10865662688956910656

/-! ## A207892.P11890483534459377656

`A207895(A046691(n+3))`
-/

namespace A207892.P11890483534459377656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A046691 (n + 3)).toNat

end

end A207892.P11890483534459377656

/-! ## A207892.P687731648869110861

`A207895(Δ[A023545(n+1)])`
-/

namespace A207892.P687731648869110861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n).toNat

end

end A207892.P687731648869110861

/-! ## A207892.P15261261824021784061

`A207895(A052905(n+2)+1)`
-/

namespace A207892.P15261261824021784061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A052905 (n + 2) + 1).toNat

end

end A207892.P15261261824021784061

/-! ## A207892.P9414548789864040185

`A207895(A000096(n+4)-3)`
-/

namespace A207892.P9414548789864040185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A000096 (n + 4) - 3).toNat

end

end A207892.P9414548789864040185

/-!
# A207893: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207893, there is no canonical definition to state claims against.
-/

/-! ## A207893.P16588378528540385690

`A207895(A052905(n+3))`
-/

namespace A207893.P16588378528540385690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A052905 (n + 3)).toNat

end

end A207893.P16588378528540385690

/-! ## A207893.P8199094273273466469

`A207895(A000124(n+6)-6)`
-/

namespace A207893.P8199094273273466469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A000124 (n + 6) - 6).toNat

end

end A207893.P8199094273273466469

/-! ## A207893.P16367507956564876387

`A207895(Δ[A264443(n+1)]-1)`
-/

namespace A207893.P16367507956564876387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n - 1).toNat

end

end A207893.P16367507956564876387

/-! ## A207893.P1815334948615209915

`A207895(Δ[A023545(n+2)]-1)`
-/

namespace A207893.P1815334948615209915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n - 1).toNat

end

end A207893.P1815334948615209915

/-! ## A207893.P7384890896730256540

`A207895(Δ[A026054(n+3)]+1)`
-/

namespace A207893.P7384890896730256540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n + 1).toNat

end

end A207893.P7384890896730256540

/-!
# A207894: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207894, there is no canonical definition to state claims against.
-/

/-! ## A207894.P12060368213412837890

`A207895(A055999(n+4))`
-/

namespace A207894.P12060368213412837890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A055999 (n + 4)).toNat

end

end A207894.P12060368213412837890

/-! ## A207894.P8333382262444138797

`A207895(Δ[A026054(n+4)])`
-/

namespace A207894.P8333382262444138797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n).toNat

end

end A207894.P8333382262444138797

/-! ## A207894.P16086124971548084962

`A207895(A052905(n+4)-1)`
-/

namespace A207894.P16086124971548084962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A052905 (n + 4) - 1).toNat

end

end A207894.P16086124971548084962

/-! ## A207894.P11959510969800986042

`A207895(A027379(n+5)-3)`
-/

namespace A207894.P11959510969800986042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A027379 (n + 5) - 3).toNat

end

end A207894.P11959510969800986042

/-! ## A207894.P11621073777298584927

`A207895(A000124(n+7)-7)`
-/

namespace A207894.P11621073777298584927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A000124 (n + 7) - 7).toNat

end

end A207894.P11621073777298584927

/-!
# A207895: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207895, there is no canonical definition to state claims against.
-/

/-! ## A207895.P3838717117673145177

`A207346(n+1)+A184955(n)%3`
-/

namespace A207895.P3838717117673145177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) + Int.tmod (A184955 n) 3

end

end A207895.P3838717117673145177

/-! ## A207895.P3605151863377712891

`A207346(n+1)+A055641(A005246(n))`
-/

namespace A207895.P3605151863377712891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) + A055641 (A005246 n).toNat

end

end A207895.P3605151863377712891

/-! ## A207895.P4647275483015355155

`A207346(n+1)+A102683(A001629(n))`
-/

namespace A207895.P4647275483015355155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) + A102683 (A001629 n).toNat

end

end A207895.P4647275483015355155

/-! ## A207895.P6865285517093289157

`A207346(n+1)+A102683(A030239(n))`
-/

namespace A207895.P6865285517093289157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) + A102683 (A030239 n).toNat

end

end A207895.P6865285517093289157

/-! ## A207895.P13561239236172537879

`A207346(n+1)+A101637(A046630(n))`
-/

namespace A207895.P13561239236172537879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207346 (n + 1) + A101637 (A046630 n).toNat

end

end A207895.P13561239236172537879

/-!
# A207896: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207896, the canonical program `A207896.P900139024858495004` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207896 has offset 1).

The definition of A207896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207896.P900139024858495004

`ogf((6+30x+36x^2+30x^3+18x^4+12x^5)/(1-x-2x^2-2x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207896

/-- `ogf((6+30x+36x^2+30x^3+18x^4+12x^5)/(1-x-2x^2-2x^3-x^4-x^5))` -/
def P900139024858495004.Spec : Prop :=
  ∀ n, P900139024858495004.a n = A207896 (n + 1)

theorem P900139024858495004.correct : P900139024858495004.Spec := by
  intro n
  simp only [A207896, Nat.add_sub_cancel]

end A207896

/-! ## A207896.P1145841404211145199

`A207895(∑[n+2]+4)`
-/

namespace A207896.P1145841404211145199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207896.P1145841404211145199

namespace A207896

/-- `A207895(∑[n+2]+4)` -/
def P1145841404211145199.Spec : Prop :=
  ∀ n, P1145841404211145199.a n = A207896 (n + 1)

end A207896

/-! ## A207896.P15902130961545981898

`lcm(2, A207895(A167614(n+1)))`
-/

namespace A207896.P15902130961545981898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207895 (A167614 (n + 1)).toNat)

end

end A207896.P15902130961545981898

namespace A207896

/-- `lcm(2, A207895(A167614(n+1)))` -/
def P15902130961545981898.Spec : Prop :=
  ∀ n, (P15902130961545981898.a n : ℤ) = A207896 (n + 1)

end A207896

/-! ## A207896.P2210386615201996336

`A207895(A046691(n)+7)%(8*5^n)`
-/

namespace A207896.P2210386615201996336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207895 (A046691 n + 7).toNat) (8 * 5 ^ n : ℤ)

end

end A207896.P2210386615201996336

namespace A207896

/-- `A207895(A046691(n)+7)%(8*5^n)` -/
def P2210386615201996336.Spec : Prop :=
  ∀ n, P2210386615201996336.a n = A207896 (n + 1)

end A207896

/-! ## A207896.P6887818297577387783

`A207895(A055998(n)+6)+A008683(8*(n+1))`
-/

namespace A207896.P6887818297577387783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A055998 n + 6).toNat + A008683 (8 * (n + 1))

end

end A207896.P6887818297577387783

namespace A207896

/-- `A207895(A055998(n)+6)+A008683(8*(n+1))` -/
def P6887818297577387783.Spec : Prop :=
  ∀ n, P6887818297577387783.a n = A207896 (n + 1)

end A207896

/-!
# A207897: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207897, there is no canonical definition to state claims against.
-/

/-! ## A207897.P2660706154474446521

`A207895(A141214(n)+7)`
-/

namespace A207897.P2660706154474446521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A141214 n + 7).toNat

end

end A207897.P2660706154474446521

/-! ## A207897.P7992348817983855715

`A207895(A052905(n)+9)`
-/

namespace A207897.P7992348817983855715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A052905 n + 9).toNat

end

end A207897.P7992348817983855715

/-! ## A207897.P15507354883067308854

`A207895(A055999(n)+10)`
-/

namespace A207897.P15507354883067308854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A055999 n + 10).toNat

end

end A207897.P15507354883067308854

/-! ## A207897.P3325202682921878902

`A207895(Δ[A008778(n)]+6)`
-/

namespace A207897.P3325202682921878902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (f1 (n + 1) - f1 n + 6).toNat

end

end A207897.P3325202682921878902

/-! ## A207897.P15343159978904496841

`A207895(A167614(n+2)+1)`
-/

namespace A207897.P15343159978904496841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A167614 (n + 2) + 1).toNat

end

end A207897.P15343159978904496841

/-!
# A207898: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207898, there is no canonical definition to state claims against.
-/

/-! ## A207898.P11767116258361744995

`A207895(∑[n+3]+n+12)`
-/

namespace A207898.P11767116258361744995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A207898.P11767116258361744995

/-! ## A207898.P14831698615930408946

`lcm(2, A207895(A167499(n+3)))`
-/

namespace A207898.P14831698615930408946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207895 (A167499 (n + 3)).toNat)

end

end A207898.P14831698615930408946

/-! ## A207898.P6881052581370876420

`(20/2-9)*A207895(A000124(n+4)+4)`
-/

namespace A207898.P6881052581370876420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 : ℚ) / 2 - 9) * (A207895 (A000124 (n + 4) + 4).toNat : ℚ)

end

end A207898.P6881052581370876420

/-! ## A207898.P5381937389651580858

`A207895(A167499(n+3))%A001353(n+5)`
-/

namespace A207898.P5381937389651580858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207895 (A167499 (n + 3)).toNat) (A001353 (n + 5))

end

end A207898.P5381937389651580858

/-!
# A207899: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207899, there is no canonical definition to state claims against.
-/

/-! ## A207899.P12507157025637063725

`A207895(A056115(n)+21)`
-/

namespace A207899.P12507157025637063725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A056115 n + 21).toNat

end

end A207899.P12507157025637063725

/-! ## A207899.P14853036896941925752

`A207895(A167499(n+4)+1)`
-/

namespace A207899.P14853036896941925752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A167499 (n + 4) + 1).toNat

end

end A207899.P14853036896941925752

/-! ## A207899.P16604725302584612965

`A207895(A133263(n+5)+4)`
-/

namespace A207899.P16604725302584612965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A133263 (n + 5) + 4).toNat

end

end A207899.P16604725302584612965

/-! ## A207899.P5991815425007367422

`A207895(A000096(n+4)+7)`
-/

namespace A207899.P5991815425007367422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A000096 (n + 4) + 7).toNat

end

end A207899.P5991815425007367422

/-! ## A207899.P270654455683567360

`A207895(A000217(n+5)+6)`
-/

namespace A207899.P270654455683567360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A000217 (n + 5) + 6).toNat

end

end A207899.P270654455683567360

