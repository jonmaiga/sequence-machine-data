import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A121700: Numbers n such that floor((prime(n+1)/prime(n))^n) is prime.

The programs for A121700, there is no canonical definition to state claims against.
-/

/-! ## A121700.P16676349975889295570

`lt[A249746(A249778(2*(n+2))), A249778(2*(n+2))]`
-/

namespace A121700.P16676349975889295570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249746 (A249778 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249778 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121700.P16676349975889295570

/-!
# A121701: Lexicographically earliest sequence such that a(m)<>a(n) for all m with m<>n except either for m=2*n or n=2*m.

The programs for A121701, there is no canonical definition to state claims against.
-/

/-! ## A121701.P12026522945803872795

`ceil(A065037(n+1)/2)`
-/

namespace A121701.P12026522945803872795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065037 (n + 1) : ℚ) / 2⌉

end

end A121701.P12026522945803872795

/-! ## A121701.P2252703574156733991

`round(A065037((n+2+n)/2)/2)`
-/

namespace A121701.P2252703574156733991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065037 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat : ℚ) / 2)

end

end A121701.P2252703574156733991

/-! ## A121701.P1135107431267008087

`A050292(gcd(n+1, val(n+1, 2)*∑[n]))`
-/

namespace A121701.P1135107431267008087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A121701.P1135107431267008087

/-! ## A121701.P16513485528151267573

`A050292((n+1)/and(n+1, -(n+1))%3)`
-/

namespace A121701.P16513485528151267573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3 : ℚ))).toNat

end

end A121701.P16513485528151267573

/-! ## A121701.P11251714415235489054

`A065033(A065037(n+1))`
-/

namespace A121701.P11251714415235489054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065037 (n + 1)).toNat

end

end A121701.P11251714415235489054

/-! ## A121701.P16219393715732275880

`A050292(A214682(n+1))`
-/

namespace A121701.P16219393715732275880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A214682 (n + 1)).toNat

end

end A121701.P16219393715732275880

/-! ## A121701.P7415049096547956883

`A004526(A065037(n+1)+1)`
-/

namespace A121701.P7415049096547956883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065037 (n + 1) + 1).toNat

end

end A121701.P7415049096547956883

/-! ## A121701.P15169521018445943487

`A008619(A065037(n+1)-1)`
-/

namespace A121701.P15169521018445943487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A065037 (n + 1) - 1).toNat

end

end A121701.P15169521018445943487

/-! ## A121701.P13204032310670245981

`A246552(2*A065037(n+1))`
-/

namespace A121701.P13204032310670245981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * A065037 (n + 1)).toNat

end

end A121701.P13204032310670245981

/-! ## A121701.P9294900919974680556

`A123087(2*A214682(n+1))`
-/

namespace A121701.P9294900919974680556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * A214682 (n + 1)).toNat

end

end A121701.P9294900919974680556

/-!
# A121702: 

The programs for A121702, there is no canonical definition to state claims against.
-/

/-! ## A121702.P14130178607797224783

`2^(Δ[∑[n]²]-1)`
-/

namespace A121702.P14130178607797224783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℤ)

end

end A121702.P14130178607797224783

/-!
# A121703: Number of alternating separable permutations.

The programs for A121703, there is no canonical definition to state claims against.
-/

/-! ## A121703.P1806556266253771802

`A036453(n+1)*A137842(n)`
-/

namespace A121703.P1806556266253771802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A137842 n

end

end A121703.P1806556266253771802

/-! ## A121703.P15100654211748152627

`(A057427(n)+1)*A137842(n)`
-/

namespace A121703.P15100654211748152627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A137842 n

end

end A121703.P15100654211748152627

/-!
# A121704: Number of separable involutions.

The programs for A121704, there is no canonical definition to state claims against.
-/

/-! ## A121704.P10753939877582345069

`A108954(A081881(n+1)*A274206(n+1))`
-/

namespace A121704.P10753939877582345069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A081881 (n + 1) * A274206 (n + 1)).toNat

end

end A121704.P10753939877582345069

/-! ## A121704.P15620147345334997725

`A034973(A072855(n+1))+A000009(2*n)`
-/

namespace A121704.P15620147345334997725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A072855 (n + 1)).toNat + A000009 (2 * n)

end

end A121704.P15620147345334997725

/-! ## A121704.P8626914709540758066

`A161655(A161655(n+1)+A155020(n))-A161655(n+1)`
-/

namespace A121704.P8626914709540758066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A161655 (n + 1) + A155020 n).toNat - A161655 (n + 1)

end

end A121704.P8626914709540758066

/-!
# A121706: a(n) = Sum_{k=1..n-1} k^n.

The programs for A121706, there is no canonical definition to state claims against.
-/

/-! ## A121706.P5887738547516716236

`A031971(n+1)-A000312(n+1)`
-/

namespace A121706.P5887738547516716236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) - A000312 (n + 1)

end

end A121706.P5887738547516716236

/-! ## A121706.P13559795675290700740

`record[A391310(n)]`
-/

namespace A121706.P13559795675290700740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121706.P13559795675290700740

/-! ## A121706.P4970672030273138482

`A391310(∑[n+1])`
-/

namespace A121706.P4970672030273138482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121706.P4970672030273138482

/-! ## A121706.P16420977947671191309

`A215083(∑[n+1]+n)`
-/

namespace A121706.P16420977947671191309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A121706.P16420977947671191309

/-! ## A121706.P10304005067791172648

`A031971(n+1)-Δ[A001923(n)]`
-/

namespace A121706.P10304005067791172648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) - (f1 (n + 1) - f1 n)

end

end A121706.P10304005067791172648

/-! ## A121706.P6225914105367828002

`A031971(n+1)-Δ[A062970(n)]`
-/

namespace A121706.P6225914105367828002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) - (f1 (n + 1) - f1 n)

end

end A121706.P6225914105367828002

/-! ## A121706.P2607561933823436099

`Δ[A001923(n)]-A341331(n+1)`
-/

namespace A121706.P2607561933823436099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341331 (n + 1)

end

end A121706.P2607561933823436099

/-! ## A121706.P915022832177977528

`A000312(n+1)-A341331(n+1)`
-/

namespace A121706.P915022832177977528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A341331 (n + 1)

end

end A121706.P915022832177977528

/-! ## A121706.P10315512092679763820

`A031971(n+1)+A001923(n)-A001923(n+1)`
-/

namespace A121706.P10315512092679763820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1) + (A001923 n - A001923 (n + 1))

end

end A121706.P10315512092679763820

/-! ## A121706.P15894941015531283422

`A000169(n+2)-(A191686(n+2)+A000312(n+1))`
-/

namespace A121706.P15894941015531283422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 2) - (A191686 (n + 2) + A000312 (n + 1))

end

end A121706.P15894941015531283422

/-!
# A121707: Numbers n > 1 such that n^3 divides Sum_{k=1..n-1} k^n = A121706(n).

The programs for A121707, there is no canonical definition to state claims against.
-/

/-! ## A121707.P17570593051707701481

`filter[A191677(n+1), A324908(#)]`
-/

namespace A121707.P17570593051707701481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A121707.P17570593051707701481

/-! ## A121707.P5243978112218923228

`filter[A191677(n+1), A355450(#)]`
-/

namespace A121707.P5243978112218923228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A121707.P5243978112218923228

/-! ## A121707.P11239461376724820753

`∩[A038179(n+1), A191677(n+1)]`
-/

namespace A121707.P11239461376724820753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P11239461376724820753

/-! ## A121707.P2427542351937665886

`∩[A038509(n+1), A191677(n+1)]`
-/

namespace A121707.P2427542351937665886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P2427542351937665886

/-! ## A121707.P15137791659029648991

`∩[A061346(n+1), A191677(n+1)]`
-/

namespace A121707.P15137791659029648991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P15137791659029648991

/-! ## A121707.P844658969481178953

`∩[A071904(n+1), A191677(n+1)]`
-/

namespace A121707.P844658969481178953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P844658969481178953

/-! ## A121707.P5078950955823220712

`∩[A082686(n+1), A191677(n+1)]`
-/

namespace A121707.P5078950955823220712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P5078950955823220712

/-! ## A121707.P4309477428782116753

`∩[A191677(n+1), A192489(n+1)]`
-/

namespace A121707.P4309477428782116753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P4309477428782116753

/-! ## A121707.P2353157817977527170

`∩[A191677(n+1), A226025(n+1)]`
-/

namespace A121707.P2353157817977527170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P2353157817977527170

/-! ## A121707.P15798462921591962809

`∩[A191677(n+1), A257521(n+1)]`
-/

namespace A121707.P15798462921591962809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P15798462921591962809

/-! ## A121707.P3186015795744395115

`∩[A191677(n+1), A340269(n+1)]`
-/

namespace A121707.P3186015795744395115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P3186015795744395115

/-! ## A121707.P2001425319075975120

`∩[A390467(n+1), A191677(n+1)]`
-/

namespace A121707.P2001425319075975120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P2001425319075975120

/-! ## A121707.P10133149328424905137

`∩[A014076(n+1), A191677(n+2)]`
-/

namespace A121707.P10133149328424905137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P10133149328424905137

/-! ## A121707.P14473421162509687610

`∩[A191677(n+1), A327922(n+1)]`
-/

namespace A121707.P14473421162509687610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P14473421162509687610

/-! ## A121707.P5185268364638065898

`∩[A191677(n+1), A216848(n+1)]`
-/

namespace A121707.P5185268364638065898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P5185268364638065898

/-! ## A121707.P10771410886967619602

`∩[A106571(n+1), A191677(n+1)]`
-/

namespace A121707.P10771410886967619602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P10771410886967619602

/-! ## A121707.P15801651665509416991

`∩[A191677(n+1), A256387(n+1)]`
-/

namespace A121707.P15801651665509416991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P15801651665509416991

/-! ## A121707.P1144063485027564332

`∩[A088828(n+1), A191677(n+1)]`
-/

namespace A121707.P1144063485027564332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P1144063485027564332

/-! ## A121707.P4316226660351879387

`∩[A191677(n+1), A020742(n)]`
-/

namespace A121707.P4316226660351879387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121707.P4316226660351879387

/-!
# A121708: Numerator of Sum/Product of first n Fibonacci numbers A000045[n].

The programs for A121708, there is no canonical definition to state claims against.
-/

/-! ## A121708.P7215018164508881328

`Δ[A001924(n)]/A239740(n+1)`
-/

namespace A121708.P7215018164508881328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P7215018164508881328

/-! ## A121708.P14245614322262641346

`A000071(n+3)/A239740(n+1)`
-/

namespace A121708.P14245614322262641346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 3) : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P14245614322262641346

/-! ## A121708.P6424292681513229100

`∑[∑[A212804(n)]]/A239740(n+1)`
-/

namespace A121708.P6424292681513229100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P6424292681513229100

/-! ## A121708.P18001297133240660331

`∑[A000045(n+1)]/A239740(n+1)`
-/

namespace A121708.P18001297133240660331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P18001297133240660331

/-! ## A121708.P14612301483101224042

`Δ[A000126(n+1)]/A239740(n+1)`
-/

namespace A121708.P14612301483101224042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P14612301483101224042

/-! ## A121708.P16835325448937658107

`(A000045(n+3)-1)/A239740(n+1)`
-/

namespace A121708.P16835325448937658107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) - 1 : ℚ) / (A239740 (n + 1) : ℚ)

end

end A121708.P16835325448937658107

/-!
# A121709: Numerator of Sum/Product of first n Lucas numbers A000032[n].

The programs for A121709, there is no canonical definition to state claims against.
-/

/-! ## A121709.P6283196522564710672

`A027961(n+1)/A239799(n+1)`
-/

namespace A121709.P6283196522564710672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027961 (n + 1) : ℚ) / (A239799 (n + 1) : ℚ)

end

end A121709.P6283196522564710672

/-! ## A121709.P6062088882803479101

`∑[abs(A075193(n))]/A239799(n+1)`
-/

namespace A121709.P6062088882803479101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239799 (n + 1) : ℚ)

end

end A121709.P6062088882803479101

/-! ## A121709.P4956708578212645891

`∑[A000032(n+1)]/A239799(n+1)`
-/

namespace A121709.P4956708578212645891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239799 (n + 1) : ℚ)

end

end A121709.P4956708578212645891

/-! ## A121709.P13569723999859835740

`∑[A000204(n+1)]/A239799(n+1)`
-/

namespace A121709.P13569723999859835740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239799 (n + 1) : ℚ)

end

end A121709.P13569723999859835740

/-! ## A121709.P18114653492721222677

`∑[A000045(n+2)+A000045(n)]/A239799(n+1)`
-/

namespace A121709.P18114653492721222677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A239799 (n + 1) : ℚ)

end

end A121709.P18114653492721222677

/-!
# A121711: Lexicographically earliest permutation of the natural numbers such that gcd(s(k-1)+1, a(k)) greater than gcd(s(k-1), a(k)+1), where s is the sum of preceding terms (A121712); a(1)=1.

The programs for A121711, there is no canonical definition to state claims against.
-/

/-! ## A121711.P16705447166096192475

`A121713(A121714(n+1))`
-/

namespace A121711.P16705447166096192475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121713 (A121714 (n + 1)).toNat

end

end A121711.P16705447166096192475

/-! ## A121711.P1418390669243162287

`A121714(A121713(ϕ²-(ϕ-n)))`
-/

namespace A121711.P1418390669243162287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121714 (A121713 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A121711.P1418390669243162287

/-!
# A121712: Partial sums of A121711.

The programs for A121712, there is no canonical definition to state claims against.
-/

/-! ## A121712.P16685373970295689934

`∑[A121711(n+1)]`
-/

namespace A121712.P16685373970295689934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121712.P16685373970295689934

/-! ## A121712.P322810880846424747

`A121711(abs(1-n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A121712.P322810880846424747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121711 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A121712.P322810880846424747

/-! ## A121712.P9021027507424543062

`∑[A121713(A121714(n+1))]`
-/

namespace A121712.P9021027507424543062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121713 (A121714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121712.P9021027507424543062

/-! ## A121712.P9119485953146732114

`A121711(n+1)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A121712.P9119485953146732114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121711 (n + 1) + A028310 (a (n - 1)).toNat

end

end A121712.P9119485953146732114

/-! ## A121712.P15124761438071797479

`A121711(n+1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A121712.P15124761438071797479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121711 (n + 1) - (A000007 n - a (n - 1))

end

end A121712.P15124761438071797479

/-! ## A121712.P9295133115283361686

`a(n-1)+1-(A008835(A046368(n+1))-A121711(n+1))` with `a(0)=1`
-/

namespace A121712.P9295133115283361686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A008835 (A046368 (n + 1)).toNat - A121711 (n + 1))

end

end A121712.P9295133115283361686

/-!
# A121713: Inverse permutation to A121711.

The programs for A121713, there is no canonical definition to state claims against.
-/

/-! ## A121713.P4076074265984531303

`A121715(A121711(n+1))`
-/

namespace A121713.P4076074265984531303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121715 (A121711 (n + 1)).toNat

end

end A121713.P4076074265984531303

/-!
# A121714: A121711(A121711(n)).

The programs for A121714, there is no canonical definition to state claims against.
-/

/-! ## A121714.P5723746372858052089

`A121711(A121711(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121714.P5723746372858052089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121711 (A121711 (n + 1)).toNat

end

end A121714.P5723746372858052089

/-!
# A121715: A121713(A121713(n)).

The programs for A121715, there is no canonical definition to state claims against.
-/

/-! ## A121715.P9224788503745119823

`A121713(A121713(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121715.P9224788503745119823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121713 (A121713 (n + 1)).toNat

end

end A121715.P9224788503745119823

/-!
# A121717: Numbers m such that A121711(m) <= m.

The programs for A121717, there is no canonical definition to state claims against.
-/

/-! ## A121717.P9204006417662383281

`lt[A121711(n+1), n+2]+1`
-/

namespace A121717.P9204006417662383281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121711 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A121717.P9204006417662383281

/-!
# A121718: Write 0, 1, ..., n in base 3 and add as if they were decimal numbers.

The programs for A121718, the canonical program `A121718.P14571265844613409242` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121718 has offset 0).

The definition of A121718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121718.P6457556260384346949

`∑[A007089(n)]`
-/

namespace A121718.P6457556260384346949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P6457556260384346949

namespace A121718

/-- `∑[A007089(n)]` -/
def P6457556260384346949.Spec : Prop :=
  ∀ n, P6457556260384346949.a n = A121718 n

end A121718

/-! ## A121718.P5497531117864482556

`∑[A343810(n)/4]`
-/

namespace A121718.P5497531117864482556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P5497531117864482556

namespace A121718

/-- `∑[A343810(n)/4]` -/
def P5497531117864482556.Spec : Prop :=
  ∀ n, P5497531117864482556.a n = (A121718 n : ℚ)

end A121718

/-! ## A121718.P111257740877087952

`∑[∪[A277964(n+1), A007088(n)]]`
-/

namespace A121718.P111257740877087952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P111257740877087952

namespace A121718

/-- `∑[∪[A277964(n+1), A007088(n)]]` -/
def P111257740877087952.Spec : Prop :=
  ∀ n, (P111257740877087952.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P15608888497090582232

`∑[∪[A277964(n+1), A109827(n)]]`
-/

namespace A121718.P15608888497090582232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P15608888497090582232

namespace A121718

/-- `∑[∪[A277964(n+1), A109827(n)]]` -/
def P15608888497090582232.Spec : Prop :=
  ∀ n, (P15608888497090582232.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P14367391188966395354

`∑[∪[A277964(n+1), A169683(n)]]`
-/

namespace A121718.P14367391188966395354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P14367391188966395354

namespace A121718

/-- `∑[∪[A277964(n+1), A169683(n)]]` -/
def P14367391188966395354.Spec : Prop :=
  ∀ n, (P14367391188966395354.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P3550626592650204128

`∑[∪[A277964(n+1), A265747(n)]]`
-/

namespace A121718.P3550626592650204128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P3550626592650204128

namespace A121718

/-- `∑[∪[A277964(n+1), A265747(n)]]` -/
def P3550626592650204128.Spec : Prop :=
  ∀ n, (P3550626592650204128.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P11308128799590720527

`∑[∪[A277964(n+1), A317204(n)]]`
-/

namespace A121718.P11308128799590720527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317204 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P11308128799590720527

namespace A121718

/-- `∑[∪[A277964(n+1), A317204(n)]]` -/
def P11308128799590720527.Spec : Prop :=
  ∀ n, (P11308128799590720527.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P14571265844613409242

`∑[A024635(2*n)/2]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121718

/-- `∑[A024635(2*n)/2]` -/
def P14571265844613409242.Spec : Prop :=
  ∀ n, P14571265844613409242.a n = (A121718 n : ℚ)

end A121718

/-! ## A121718.P1166788186611137901

`∑[A024651(3*n)/3]`
-/

namespace A121718.P1166788186611137901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024651 (3 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P1166788186611137901

namespace A121718

/-- `∑[A024651(3*n)/3]` -/
def P1166788186611137901.Spec : Prop :=
  ∀ n, P1166788186611137901.a n = (A121718 n : ℚ)

end A121718

/-! ## A121718.P14694449572209873618

`∑[A007090(A023717(n))]`
-/

namespace A121718.P14694449572209873618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P14694449572209873618

namespace A121718

/-- `∑[A007090(A023717(n))]` -/
def P14694449572209873618.Spec : Prop :=
  ∀ n, P14694449572209873618.a n = A121718 n

end A121718

/-! ## A121718.P11557159268303964608

`∑[A007090(eq[0, A292373(n)])]`
-/

namespace A121718.P11557159268303964608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P11557159268303964608

namespace A121718

/-- `∑[A007090(eq[0, A292373(n)])]` -/
def P11557159268303964608.Spec : Prop :=
  ∀ n, P11557159268303964608.a n = A121718 n

end A121718

/-! ## A121718.P4117928223237655198

`∑[A007091(record[A309991(n)])]`
-/

namespace A121718.P4117928223237655198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P4117928223237655198

namespace A121718

/-- `∑[A007091(record[A309991(n)])]` -/
def P4117928223237655198.Spec : Prop :=
  ∀ n, P4117928223237655198.a n = A121718 n

end A121718

/-! ## A121718.P10428128442756622439

`∑[A007092(A037454(n))]`
-/

namespace A121718.P10428128442756622439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037454 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P10428128442756622439

namespace A121718

/-- `∑[A007092(A037454(n))]` -/
def P10428128442756622439.Spec : Prop :=
  ∀ n, P10428128442756622439.a n = A121718 n

end A121718

/-! ## A121718.P1281752807646279825

`∑[eq[1, A181061(n)]]`
-/

namespace A121718.P1281752807646279825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P1281752807646279825

namespace A121718

/-- `∑[eq[1, A181061(n)]]` -/
def P1281752807646279825.Spec : Prop :=
  ∀ n, (P1281752807646279825.a n : ℤ) = A121718 n

end A121718

/-! ## A121718.P3839735011080456784

`∑[A007093(A037455(n))]`
-/

namespace A121718.P3839735011080456784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A037455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P3839735011080456784

namespace A121718

/-- `∑[A007093(A037455(n))]` -/
def P3839735011080456784.Spec : Prop :=
  ∀ n, P3839735011080456784.a n = A121718 n

end A121718

/-! ## A121718.P17550279735503787301

`∑[A007094(A037456(n))]`
-/

namespace A121718.P17550279735503787301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P17550279735503787301

namespace A121718

/-- `∑[A007094(A037456(n))]` -/
def P17550279735503787301.Spec : Prop :=
  ∀ n, P17550279735503787301.a n = A121718 n

end A121718

/-! ## A121718.P3095954780830620241

`∑[A007095(A037314(n))]`
-/

namespace A121718.P3095954780830620241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121718.P3095954780830620241

namespace A121718

/-- `∑[A007095(A037314(n))]` -/
def P3095954780830620241.Spec : Prop :=
  ∀ n, P3095954780830620241.a n = A121718 n

end A121718

/-!
# A121720: a(n) = 4*a(n-2) - 2*a(n-4).

The programs for A121720, the canonical program `A121720.P4971787196179316548` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121720 has offset 1).

The definition of A121720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-2*a(n-4)` (program `A121720.P4971787196179316548`, by `A121720.P4971787196179316548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121720.P4971787196179316548

`4*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121720

/-- `4*a(n-2)-2*a(n-4)` -/
def P4971787196179316548.Spec : Prop :=
  ∀ n, P4971787196179316548.a n = A121720 (n + 1)

theorem P4971787196179316548.correct : P4971787196179316548.Spec := by
  intro n
  simp only [A121720, Nat.add_sub_cancel]

end A121720

/-! ## A121720.P6191030351120124067

`ogf((x+x^2-x^3)/(1-4x^2+2x^4))`
-/

namespace A121720.P6191030351120124067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -4, 0, 2] n

end

end A121720.P6191030351120124067

namespace A121720

/-- `ogf((x+x^2-x^3)/(1-4x^2+2x^4))` -/
def P6191030351120124067.Spec : Prop :=
  ∀ n, P6191030351120124067.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P16067506383379653813

`a(n-1)+a(n-2)/2^-n%2` with `a(0)=0, a(1)=1`
-/

namespace A121720.P16067506383379653813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) / (2 : ℚ) ^ (-((n % 2 : ℕ) : ℤ) : ℤ)

end

end A121720.P16067506383379653813

namespace A121720

/-- `a(n-1)+a(n-2)/2^-n%2` -/
def P16067506383379653813.Spec : Prop :=
  ∀ n, P16067506383379653813.a n = (A121720 (n + 1) : ℚ)

end A121720

/-! ## A121720.P15539320002348396632

`Δ[A030436(n)]`
-/

namespace A121720.P15539320002348396632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121720.P15539320002348396632

namespace A121720

/-- `Δ[A030436(n)]` -/
def P15539320002348396632.Spec : Prop :=
  ∀ n, P15539320002348396632.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P6086765979368410808

`A030436(n+1)-A030436(n)`
-/

namespace A121720.P6086765979368410808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 1) - A030436 n

end

end A121720.P6086765979368410808

namespace A121720

/-- `A030436(n+1)-A030436(n)` -/
def P6086765979368410808.Spec : Prop :=
  ∀ n, P6086765979368410808.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P17356241140979659200

`Δ[A030435(n)/2]`
-/

namespace A121720.P17356241140979659200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030435 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121720.P17356241140979659200

namespace A121720

/-- `Δ[A030435(n)/2]` -/
def P17356241140979659200.Spec : Prop :=
  ∀ n, P17356241140979659200.a n = (A121720 (n + 1) : ℚ)

end A121720

/-! ## A121720.P16533447050508197037

`A007068(n+1)-A062113(n)`
-/

namespace A121720.P16533447050508197037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (n + 1) - A062113 n

end

end A121720.P16533447050508197037

namespace A121720

/-- `A007068(n+1)-A062113(n)` -/
def P16533447050508197037.Spec : Prop :=
  ∀ n, P16533447050508197037.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P11903141906356145267

`A062113(n)-A062112(n+1)`
-/

namespace A121720.P11903141906356145267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n - A062112 (n + 1)

end

end A121720.P11903141906356145267

namespace A121720

/-- `A062113(n)-A062112(n+1)` -/
def P11903141906356145267.Spec : Prop :=
  ∀ n, P11903141906356145267.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P3104845140551811180

`A062112(n+3)-A001882(n+1)`
-/

namespace A121720.P3104845140551811180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 3) - A001882 (n + 1)

end

end A121720.P3104845140551811180

namespace A121720

/-- `A062112(n+3)-A001882(n+1)` -/
def P3104845140551811180.Spec : Prop :=
  ∀ n, P3104845140551811180.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P10887622000382752701

`2*A062113(n)-A001882(n+1)`
-/

namespace A121720.P10887622000382752701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062113 n - A001882 (n + 1)

end

end A121720.P10887622000382752701

namespace A121720

/-- `2*A062113(n)-A001882(n+1)` -/
def P10887622000382752701.Spec : Prop :=
  ∀ n, P10887622000382752701.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P12001277337624016580

`(A217730(n)-A062112(n+1))/A000034(n+1)`
-/

namespace A121720.P12001277337624016580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217730 n - A062112 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A121720.P12001277337624016580

namespace A121720

/-- `(A217730(n)-A062112(n+1))/A000034(n+1)` -/
def P12001277337624016580.Spec : Prop :=
  ∀ n, P12001277337624016580.a n = (A121720 (n + 1) : ℚ)

end A121720

/-! ## A121720.P1441137717899743300

`A007068(n+1)+A217730(n)-A217730(n+1)`
-/

namespace A121720.P1441137717899743300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (n + 1) + (A217730 n - A217730 (n + 1))

end

end A121720.P1441137717899743300

namespace A121720

/-- `A007068(n+1)+A217730(n)-A217730(n+1)` -/
def P1441137717899743300.Spec : Prop :=
  ∀ n, P1441137717899743300.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P1826010399078098152

`A217730(n+1)-(A217730(n)+A062112(n+1))`
-/

namespace A121720.P1826010399078098152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (n + 1) - (A217730 n + A062112 (n + 1))

end

end A121720.P1826010399078098152

namespace A121720

/-- `A217730(n+1)-(A217730(n)+A062112(n+1))` -/
def P1826010399078098152.Spec : Prop :=
  ∀ n, P1826010399078098152.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P8460313526711076264

`A062113(n+1)-A000034(n+1)*A062113(n)`
-/

namespace A121720.P8460313526711076264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (n + 1) - A000034 (n + 1) * A062113 n

end

end A121720.P8460313526711076264

namespace A121720

/-- `A062113(n+1)-A000034(n+1)*A062113(n)` -/
def P8460313526711076264.Spec : Prop :=
  ∀ n, P8460313526711076264.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P12136603126100582031

`A001882(n+3)%A062113(n)`
-/

namespace A121720.P12136603126100582031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001882 (n + 3)) (A062113 n)

end

end A121720.P12136603126100582031

namespace A121720

/-- `A001882(n+3)%A062113(n)` -/
def P12136603126100582031.Spec : Prop :=
  ∀ n, P12136603126100582031.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P11667104441655622425

`A228405(A007590(n+1))`
-/

namespace A121720.P11667104441655622425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A007590 (n + 1)).toNat

end

end A121720.P11667104441655622425

namespace A121720

/-- `A228405(A007590(n+1))` -/
def P11667104441655622425.Spec : Prop :=
  ∀ n, P11667104441655622425.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P15690315958561268667

`A228405(A000982(n)+n)`
-/

namespace A121720.P15690315958561268667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A000982 n + (n : ℤ)).toNat

end

end A121720.P15690315958561268667

namespace A121720

/-- `A228405(A000982(n)+n)` -/
def P15690315958561268667.Spec : Prop :=
  ∀ n, P15690315958561268667.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P17283478256980145361

`A228405(∑[A109613(n+1)-1])`
-/

namespace A121720.P17283478256980145361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121720.P17283478256980145361

namespace A121720

/-- `A228405(∑[A109613(n+1)-1])` -/
def P17283478256980145361.Spec : Prop :=
  ∀ n, P17283478256980145361.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P14310333268547456936

`A228405(A052928(A000982(A008619(2*n))))`
-/

namespace A121720.P14310333268547456936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A052928 (A000982 (A008619 (2 * n)).toNat).toNat).toNat

end

end A121720.P14310333268547456936

namespace A121720

/-- `A228405(A052928(A000982(A008619(2*n))))` -/
def P14310333268547456936.Spec : Prop :=
  ∀ n, P14310333268547456936.a n = A121720 (n + 1)

end A121720

/-! ## A121720.P13812648638102097176

`A228405(A052928(A008619((n+1)²)))`
-/

namespace A121720.P13812648638102097176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A052928 (A008619 ((n + 1) ^ 2)).toNat).toNat

end

end A121720.P13812648638102097176

namespace A121720

/-- `A228405(A052928(A008619((n+1)²)))` -/
def P13812648638102097176.Spec : Prop :=
  ∀ n, P13812648638102097176.a n = A121720 (n + 1)

end A121720

/-!
# A121722: Triangle T(n,k) = 1 + k*n*(n+1)/2, read by rows.

The programs for A121722, the canonical program `A121722.P5688937638399416928` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121722 has offset 0).

The definition of A121722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121722.P5688937638399416928

`A002262(n)*A057944(n)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121722

/-- `A002262(n)*A057944(n)+1` -/
def P5688937638399416928.Spec : Prop :=
  ∀ n, P5688937638399416928.a n = A121722 n

theorem P5688937638399416928.correct : P5688937638399416928.Spec := by
  intro n
  simp only [A121722]

end A121722

/-! ## A121722.P12238819242255205064

`A000217(A003056(n))*A002262(n)+1`
-/

namespace A121722.P12238819242255205064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat * A002262 n + 1

end

end A121722.P12238819242255205064

namespace A121722

/-- `A000217(A003056(n))*A002262(n)+1` -/
def P12238819242255205064.Spec : Prop :=
  ∀ n, P12238819242255205064.a n = A121722 n

end A121722

/-! ## A121722.P9417799921552257029

`A000124(A003056(n))*A002260(n+1)-n`
-/

namespace A121722.P9417799921552257029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003056 n).toNat * A002260 (n + 1) - (n : ℤ)

end

end A121722.P9417799921552257029

namespace A121722

/-- `A000124(A003056(n))*A002260(n+1)-n` -/
def P9417799921552257029.Spec : Prop :=
  ∀ n, P9417799921552257029.a n = A121722 n

end A121722

/-! ## A121722.P7266221440818068385

`A000027((n-A002262(n))*A002262(n)+1)`
-/

namespace A121722.P7266221440818068385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((n : ℤ) - A002262 n) * A002262 n + 1).toNat

end

end A121722.P7266221440818068385

namespace A121722

/-- `A000027((n-A002262(n))*A002262(n)+1)` -/
def P7266221440818068385.Spec : Prop :=
  ∀ n, P7266221440818068385.a n = A121722 n

end A121722

/-! ## A121722.P7577250576653991796

`A101321(A245300(n))`
-/

namespace A121722.P7577250576653991796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 (A245300 n).toNat

end

end A121722.P7577250576653991796

namespace A121722

/-- `A101321(A245300(n))` -/
def P7577250576653991796.Spec : Prop :=
  ∀ n, P7577250576653991796.a n = A121722 n

end A121722

/-! ## A121722.P17729871584858782987

`A077028(A057944(n)+∑[n])`
-/

namespace A121722.P17729871584858782987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A057944 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A121722.P17729871584858782987

namespace A121722

/-- `A077028(A057944(n)+∑[n])` -/
def P17729871584858782987.Spec : Prop :=
  ∀ n, P17729871584858782987.a n = A121722 n

end A121722

/-! ## A121722.P6373762678255030727

`A077028(A002262(n)+A000217(n))`
-/

namespace A121722.P6373762678255030727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A002262 n + A000217 n).toNat

end

end A121722.P6373762678255030727

namespace A121722

/-- `A077028(A002262(n)+A000217(n))` -/
def P6373762678255030727.Spec : Prop :=
  ∀ n, P6373762678255030727.a n = A121722 n

end A121722

/-! ## A121722.P14539059929933005269

`A077028(n-(A002262(n)-A000217(n)))`
-/

namespace A121722.P14539059929933005269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 ((n : ℤ) - (A002262 n - A000217 n)).toNat

end

end A121722.P14539059929933005269

namespace A121722

/-- `A077028(n-(A002262(n)-A000217(n)))` -/
def P14539059929933005269.Spec : Prop :=
  ∀ n, P14539059929933005269.a n = A121722 n

end A121722

/-! ## A121722.P1949496406695715550

`A077028(A000096(n)+1-A002260(n+1))`
-/

namespace A121722.P1949496406695715550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A000096 n + (1 - A002260 (n + 1))).toNat

end

end A121722.P1949496406695715550

namespace A121722

/-- `A077028(A000096(n)+1-A002260(n+1))` -/
def P1949496406695715550.Spec : Prop :=
  ∀ n, P1949496406695715550.a n = A121722 n

end A121722

/-! ## A121722.P15816258074481355010

`A077028(A002260(n+1)+A000124(n)-2)`
-/

namespace A121722.P15816258074481355010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A002260 (n + 1) + (A000124 n - 2)).toNat

end

end A121722.P15816258074481355010

namespace A121722

/-- `A077028(A002260(n+1)+A000124(n)-2)` -/
def P15816258074481355010.Spec : Prop :=
  ∀ n, P15816258074481355010.a n = A121722 n

end A121722

/-! ## A121722.P9576671080804378258

`A003991(A002260(n+1)+A000217(n))-n`
-/

namespace A121722.P9576671080804378258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A002260 (n + 1) + A000217 n).toNat - (n : ℤ)

end

end A121722.P9576671080804378258

namespace A121722

/-- `A003991(A002260(n+1)+A000217(n))-n` -/
def P9576671080804378258.Spec : Prop :=
  ∀ n, P9576671080804378258.a n = A121722 n

end A121722

/-!
# A121723: a(n) = A098916(n+2) + (1-n) * A067318(n).

The programs for A121723, the canonical program `A121723.P6925570740188186703` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121723 has offset 1).

The definition of A121723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121723.P6925570740188186703

`A098916(n+3)+(1-(n+1))*A067318(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121723

/-- `A098916(n+3)+(1-(n+1))*A067318(n+1)` -/
def P6925570740188186703.Spec : Prop :=
  ∀ n, P6925570740188186703.a n = A121723 (n + 1)

theorem P6925570740188186703.correct : P6925570740188186703.Spec := by
  intro n
  simp only [A121723, Nat.add_sub_cancel]

end A121723

/-! ## A121723.P12194909245038931524

`n*Δ[A097422(n)]`
-/

namespace A121723.P12194909245038931524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A121723.P12194909245038931524

namespace A121723

/-- `n*Δ[A097422(n)]` -/
def P12194909245038931524.Spec : Prop :=
  ∀ n, P12194909245038931524.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P15339957490312994026

`n*A000254(n+1)`
-/

namespace A121723.P15339957490312994026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000254 (n + 1)

end

end A121723.P15339957490312994026

namespace A121723

/-- `n*A000254(n+1)` -/
def P15339957490312994026.Spec : Prop :=
  ∀ n, P15339957490312994026.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P10329934997012077843

`n*record[Δ[A067176(n)]]`
-/

namespace A121723.P10329934997012077843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121723.P10329934997012077843

namespace A121723

/-- `n*record[Δ[A067176(n)]]` -/
def P10329934997012077843.Spec : Prop :=
  ∀ n, P10329934997012077843.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P10280052542519138961

`abs(n*A081048(n+1))`
-/

namespace A121723.P10280052542519138961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081048 (n + 1)|

end

end A121723.P10280052542519138961

namespace A121723

/-- `abs(n*A081048(n+1))` -/
def P10280052542519138961.Spec : Prop :=
  ∀ n, P10280052542519138961.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P657507516906556949

`n*A067176(∑[n+1])`
-/

namespace A121723.P657507516906556949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121723.P657507516906556949

namespace A121723

/-- `n*A067176(∑[n+1])` -/
def P657507516906556949.Spec : Prop :=
  ∀ n, P657507516906556949.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P13402021932665277214

`n*record[A067176(n+1)]`
-/

namespace A121723.P13402021932665277214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121723.P13402021932665277214

namespace A121723

/-- `n*record[A067176(n+1)]` -/
def P13402021932665277214.Spec : Prop :=
  ∀ n, P13402021932665277214.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P14286889183718530841

`n*record[A256589(n+1)]`
-/

namespace A121723.P14286889183718530841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121723.P14286889183718530841

namespace A121723

/-- `n*record[A256589(n+1)]` -/
def P14286889183718530841.Spec : Prop :=
  ∀ n, P14286889183718530841.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P14963166598770221559

`n*A094638(A000096(n+1))`
-/

namespace A121723.P14963166598770221559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094638 (A000096 (n + 1)).toNat

end

end A121723.P14963166598770221559

namespace A121723

/-- `n*A094638(A000096(n+1))` -/
def P14963166598770221559.Spec : Prop :=
  ∀ n, P14963166598770221559.a n = A121723 (n + 1)

end A121723

/-! ## A121723.P10621267467539348509

`n*A130534(A000124(n+1))`
-/

namespace A121723.P10621267467539348509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130534 (A000124 (n + 1)).toNat

end

end A121723.P10621267467539348509

namespace A121723

/-- `n*A130534(A000124(n+1))` -/
def P10621267467539348509.Spec : Prop :=
  ∀ n, P10621267467539348509.a n = A121723 (n + 1)

end A121723

/-!
# A121725: Generalized central coefficients for k=3.

The programs for A121725, there is no canonical definition to state claims against.
-/

/-! ## A121725.P15141563055776908873

`Δ[A169983(record[A035435(n)])]`
-/

namespace A121725.P15141563055776908873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035435 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169983 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121725.P15141563055776908873

/-! ## A121725.P9106811983916580180

`Δ[A169983(record[A063265(n)])]`
-/

namespace A121725.P9106811983916580180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169983 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121725.P9106811983916580180

/-!
# A121726: Sum sequence A000522 then subtract 0,1,2,3,4,5,...

The programs for A121726, the canonical program `A121726.P8348806351701603211` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121726 has offset 1).

The definition of A121726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121726.P5865076626947681122

`A006231(n+1)+1`
-/

namespace A121726.P5865076626947681122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006231 (n + 1) + 1

end

end A121726.P5865076626947681122

namespace A121726

/-- `A006231(n+1)+1` -/
def P5865076626947681122.Spec : Prop :=
  ∀ n, P5865076626947681122.a n = A121726 (n + 1)

end A121726

/-! ## A121726.P8348806351701603211

`A002104(n+1)-n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121726

/-- `A002104(n+1)-n` -/
def P8348806351701603211.Spec : Prop :=
  ∀ n, P8348806351701603211.a n = A121726 (n + 1)

theorem P8348806351701603211.correct : P8348806351701603211.Spec := by
  intro n
  simp only [A121726, Nat.add_sub_cancel]

end A121726

/-! ## A121726.P8939415582160226768

`∑[n*(a(n-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A121726.P8939415582160226768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P8939415582160226768

namespace A121726

/-- `∑[n*(a(n-1)+1)]` -/
def P8939415582160226768.Spec : Prop :=
  ∀ n, (P8939415582160226768.a n : ℤ) = A121726 (n + 1)

end A121726

/-! ## A121726.P4810284520217134478

`∑[lcm(n, a(n-1))+n]` with `a(0)=1, a(1)=1`
-/

namespace A121726.P4810284520217134478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P4810284520217134478

namespace A121726

/-- `∑[lcm(n, a(n-1))+n]` -/
def P4810284520217134478.Spec : Prop :=
  ∀ n, (P4810284520217134478.a n : ℤ) = A121726 (n + 1)

end A121726

/-! ## A121726.P12747066027046438370

`∑[n!*∑[n/n!]]+1`
-/

namespace A121726.P12747066027046438370
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121726.P12747066027046438370

namespace A121726

/-- `∑[n!*∑[n/n!]]+1` -/
def P12747066027046438370.Spec : Prop :=
  ∀ n, P12747066027046438370.a n = (A121726 (n + 1) : ℚ)

end A121726

/-! ## A121726.P1049628272224058544

`1-∑[n*(a(n-1)-1)]` with `a(0)=0`
-/

namespace A121726.P1049628272224058544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P1049628272224058544

namespace A121726

/-- `1-∑[n*(a(n-1)-1)]` -/
def P1049628272224058544.Spec : Prop :=
  ∀ n, P1049628272224058544.a n = A121726 (n + 1)

end A121726

/-! ## A121726.P5018904047386161267

`∑[(a(n-1)+1)/n^(-1)]` with `a(0)=1, a(1)=1`
-/

namespace A121726.P5018904047386161267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (f1 (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P5018904047386161267

namespace A121726

/-- `∑[(a(n-1)+1)/n^(-1)]` -/
def P5018904047386161267.Spec : Prop :=
  ∀ n, P5018904047386161267.a n = (A121726 (n + 1) : ℚ)

end A121726

/-! ## A121726.P10204097397914720749

`∑[n!*∑[1/n!]-ceil(sin(n)²)]`
-/

namespace A121726.P10204097397914720749
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j) - (⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P10204097397914720749

namespace A121726

/-- `∑[n!*∑[1/n!]-ceil(sin(n)²)]` -/
def P10204097397914720749.Spec : Prop :=
  ∀ n, P10204097397914720749.a n = (A121726 (n + 1) : ℚ)

end A121726

/-! ## A121726.P16148885633078589278

`∑[(n!*∑[n/n!])^ceil(sin(n)²)]`
-/

namespace A121726.P16148885633078589278
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121726.P16148885633078589278

namespace A121726

/-- `∑[(n!*∑[n/n!])^ceil(sin(n)²)]` -/
def P16148885633078589278.Spec : Prop :=
  ∀ n, P16148885633078589278.a n = (A121726 (n + 1) : ℚ)

end A121726

/-! ## A121726.P13374788342360192074

`a(n-1)+n*(a(n-1)+1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A121726.P13374788342360192074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (n : ℤ) * (a (n - 1) + (1 - a (n - 2)))

end

end A121726.P13374788342360192074

namespace A121726

/-- `a(n-1)+n*(a(n-1)+1-a(n-2))` -/
def P13374788342360192074.Spec : Prop :=
  ∀ n, P13374788342360192074.a n = A121726 (n + 1)

end A121726

/-!
# A121727: Hypotenuse of primitive Pythagorean triangles sorted on area (A024406), then on hypotenuse.

The programs for A121727, there is no canonical definition to state claims against.
-/

/-! ## A121727.P1734206680631128145

`A094183(n+1)-A024406(n+1)/A094183(n+1)`
-/

namespace A121727.P1734206680631128145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094183 (n + 1) : ℚ) - (A024406 (n + 1) : ℚ) / (A094183 (n + 1) : ℚ)

end

end A121727.P1734206680631128145

/-! ## A121727.P5843496092615964140

`A094183(n+1)+A094183(n+1)-(A121729(n+1)+A121728(n+1))`
-/

namespace A121727.P5843496092615964140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094183 (n + 1) + (A094183 (n + 1) - (A121729 (n + 1) + A121728 (n + 1)))

end

end A121727.P5843496092615964140

/-! ## A121727.P4003484145802516207

`A088511(A121731(n+1)^A043562(n))`
-/

namespace A121727.P4003484145802516207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088511 (SequenceMachineLib.roundAway ((A121731 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A121727.P4003484145802516207

/-! ## A121727.P2005602654097697317

`A088511(A121731(n+1)%A095637(n))`
-/

namespace A121727.P2005602654097697317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088511 (Int.tmod (A121731 (n + 1)) (A095637 n)).toNat

end

end A121727.P2005602654097697317

/-! ## A121727.P179053664136858446

`A088511(C(A121731(n+1), A043562(n)))`
-/

namespace A121727.P179053664136858446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088511 (Nat.choose (A121731 (n + 1)).toNat (A043562 n).toNat)

end

end A121727.P179053664136858446

/-!
# A121728: Middle side (or long leg) of primitive Pythagorean triangle corresponding to hypotenuse A121727.

The programs for A121728, there is no canonical definition to state claims against.
-/

/-! ## A121728.P14702796159847756252

`2*A024406(n+1)/A121729(n+1)`
-/

namespace A121728.P14702796159847756252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A024406 (n + 1) : ℚ) / (A121729 (n + 1) : ℚ))

end

end A121728.P14702796159847756252

/-! ## A121728.P1423775994806953516

`A008594(A020885(n+1))/A121729(n+1)`
-/

namespace A121728.P1423775994806953516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A020885 (n + 1)).toNat : ℚ) / (A121729 (n + 1) : ℚ)

end

end A121728.P1423775994806953516

/-! ## A121728.P6825496034373285886

`A005843(A024406(n+1))/A121729(n+1)`
-/

namespace A121728.P6825496034373285886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A024406 (n + 1)).toNat : ℚ) / (A121729 (n + 1) : ℚ)

end

end A121728.P6825496034373285886

/-! ## A121728.P1360294020678759201

`A005843(6*A020885(n+1))/A121729(n+1)`
-/

namespace A121728.P1360294020678759201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (6 * A020885 (n + 1)).toNat : ℚ) / (A121729 (n + 1) : ℚ)

end

end A121728.P1360294020678759201

/-! ## A121728.P3723345481081652726

`A088510(A121731(n+1)^A043562(n))`
-/

namespace A121728.P3723345481081652726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (SequenceMachineLib.roundAway ((A121731 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A121728.P3723345481081652726

/-!
# A121729: Shortest side (or short leg) of primitive Pythagorean triangle corresponding to hypotenuse A121727.

The programs for A121729, there is no canonical definition to state claims against.
-/

/-! ## A121729.P16224546960910443837

`2*A024406(n+1)/A121728(n+1)`
-/

namespace A121729.P16224546960910443837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A024406 (n + 1) : ℚ) / (A121728 (n + 1) : ℚ))

end

end A121729.P16224546960910443837

/-! ## A121729.P15495904175211044490

`A008594(A020885(n+1))/A121728(n+1)`
-/

namespace A121729.P15495904175211044490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A020885 (n + 1)).toNat : ℚ) / (A121728 (n + 1) : ℚ)

end

end A121729.P15495904175211044490

/-! ## A121729.P8239853514033771951

`A005843(A024406(n+1))/A121728(n+1)`
-/

namespace A121729.P8239853514033771951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A024406 (n + 1)).toNat : ℚ) / (A121728 (n + 1) : ℚ)

end

end A121729.P8239853514033771951

/-! ## A121729.P1617111406942187662

`A005843(6*A020885(n+1))/A121728(n+1)`
-/

namespace A121729.P1617111406942187662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (6 * A020885 (n + 1)).toNat : ℚ) / (A121728 (n + 1) : ℚ)

end

end A121729.P1617111406942187662

/-!
# A121731: Inverse permutation to sequence A121730.

The programs for A121731, there is no canonical definition to state claims against.
-/

/-! ## A121731.P4708359242662582446

`Δ[A025907(A187829(n+1))]+1+n`
-/

namespace A121731.P4708359242662582446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A121731.P4708359242662582446

/-! ## A121731.P7522833791484008641

`Δ[A248639(A101919(n+2))]+n+1`
-/

namespace A121731.P7522833791484008641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A101919 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A121731.P7522833791484008641

/-! ## A121731.P6763451942797136654

`A364019(n+1)+A353859(A364034(n+1))`
-/

namespace A121731.P6763451942797136654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364019 (n + 1) + A353859 (A364034 (n + 1)).toNat

end

end A121731.P6763451942797136654

/-! ## A121731.P16484783934212190140

`A127287(A350348(n+1)%A123142(2*n+3))`
-/

namespace A121731.P16484783934212190140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A350348 (n + 1)) (A123142 (2 * n + 3 + 64))).toNat

end

end A121731.P16484783934212190140

/-!
# A121734: Ramanujan tau numbers such that A000594(k) == A000594(k+1) mod 691, or A046694(k) = A046694(k+1).

The programs for A121734, there is no canonical definition to state claims against.
-/

/-! ## A121734.P18270326219337131183

`A046694(A121733(n+1))`
-/

namespace A121734.P18270326219337131183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046694 (A121733 (n + 1)).toNat

end

end A121734.P18270326219337131183

/-!
# A121735: Real term generated from a complex product operation.

The programs for A121735, there is no canonical definition to state claims against.
-/

/-! ## A121735.P14204469470693412420

`(n+1)!/A061347(A027379(n))`
-/

namespace A121735.P14204469470693412420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A061347 (A027379 n).toNat : ℚ)

end

end A121735.P14204469470693412420

/-! ## A121735.P13370139841943246902

`record[A129116(n+1)]/A061347(A027379(n))`
-/

namespace A121735.P13370139841943246902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A061347 (A027379 n).toNat : ℚ)

end

end A121735.P13370139841943246902

/-! ## A121735.P16778953700008508641

`record[A143965(n)]/A114284(n)`
-/

namespace A121735.P16778953700008508641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A114284 n : ℚ)

end

end A121735.P16778953700008508641

/-! ## A121735.P9310063627137203956

`A303369(n+1)!/A114284(n)`
-/

namespace A121735.P9310063627137203956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A303369 (n + 1)).toNat : ℚ) / (A114284 n : ℚ)

end

end A121735.P9310063627137203956

/-!
# A121737: Dimensions of the irreducible representations of the simple Lie algebra of type E6 over the complex numbers, listed in increasing order.

The programs for A121737, there is no canonical definition to state claims against.
-/

/-! ## A121737.P1551166530427882895

`A214482(record[A214561(n)])`
-/

namespace A121737.P1551166530427882895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121737.P1551166530427882895

/-! ## A121737.P9329119149722604404

`A214482(A214561(2*n+1))`
-/

namespace A121737.P9329119149722604404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214482 (A214561 (2 * n + 1)).toNat

end

end A121737.P9329119149722604404

/-!
# A121738: Dimensions of the irreducible representations of the simple Lie algebra of type F4 over the complex numbers, listed in increasing order.

The programs for A121738, there is no canonical definition to state claims against.
-/

/-! ## A121738.P9073722788327467169

`A214476(∑[A032742(n+1)!])`
-/

namespace A121738.P9073722788327467169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121738.P9073722788327467169

/-! ## A121738.P4736481515431856526

`A214476(∑[A246277(n+1)!])`
-/

namespace A121738.P4736481515431856526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A246277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121738.P4736481515431856526

/-! ## A121738.P5884590812351062279

`A214476(∑[A213074(n+2)!])`
-/

namespace A121738.P5884590812351062279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A213074 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121738.P5884590812351062279

/-!
# A121739: Dimensions of the irreducible representations of the simple Lie algebra of type D4 over the complex numbers, listed in increasing order.

The programs for A121739, there is no canonical definition to state claims against.
-/

/-! ## A121739.P842051813095473133

`and(A158171(A158197(n)), A158204(n+1))`
-/

namespace A121739.P842051813095473133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158171 (A158197 n).toNat) (A158204 (n + 1))

end

end A121739.P842051813095473133

/-! ## A121739.P12938891364284006234

`xor(A004016(A174249(n)), A158204(n+1))`
-/

namespace A121739.P12938891364284006234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A174249 n).toNat) (A158204 (n + 1))

end

end A121739.P12938891364284006234

/-!
# A121740: Solutions to the Pell equation x^2 - 17y^2 = 1 (y values).

The programs for A121740, the canonical program `A121740.P6665479030683415209` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121740 has offset 1).

The definition of A121740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121740.P6665479030683415209

`66*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121740

/-- `66*a(n-1)-a(n-2)` -/
def P6665479030683415209.Spec : Prop :=
  ∀ n, P6665479030683415209.a n = A121740 (n + 1)

theorem P6665479030683415209.correct : P6665479030683415209.Spec := by
  intro n
  simp only [A121740, Nat.add_sub_cancel]

end A121740

/-! ## A121740.P561123671163153332

`((33+8*sqrt(17))^n-(33-8*sqrt(17))^n)/(2*sqrt(17))`
-/

namespace A121740.P561123671163153332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((33 + 8 * Real.sqrt (17 : ℝ)) ^ n - (33 - 8 * Real.sqrt (17 : ℝ)) ^ n) / (2 * Real.sqrt (17 : ℝ))

end

end A121740.P561123671163153332

namespace A121740

/-- `((33+8*sqrt(17))^n-(33-8*sqrt(17))^n)/(2*sqrt(17))` -/
def P561123671163153332.Spec : Prop :=
  ∀ n, P561123671163153332.a n = (A121740 (n + 1) : ℝ)

end A121740

/-! ## A121740.P6996412509383107748

`record[A041025(C(n, a(n-1)))]` with `a(0)=0`
-/

namespace A121740.P6996412509383107748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A041025 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121740.P6996412509383107748

namespace A121740

/-- `record[A041025(C(n, a(n-1)))]` -/
def P6996412509383107748.Spec : Prop :=
  ∀ n, P6996412509383107748.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P6822726363267484519

`record[A000035(n)*A041025(n)]`
-/

namespace A121740.P6822726363267484519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121740.P6822726363267484519

namespace A121740

/-- `record[A000035(n)*A041025(n)]` -/
def P6822726363267484519.Spec : Prop :=
  ∀ n, P6822726363267484519.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P8963375452960457103

`record[A041025(n)*A062157(n)]`
-/

namespace A121740.P8963375452960457103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 n * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121740.P8963375452960457103

namespace A121740

/-- `record[A041025(n)*A062157(n)]` -/
def P8963375452960457103.Spec : Prop :=
  ∀ n, P8963375452960457103.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P15212519757446421080

`A041025(A004273(n))-A000007(n)`
-/

namespace A121740.P15212519757446421080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (A004273 n).toNat - A000007 n

end

end A121740.P15212519757446421080

namespace A121740

/-- `A041025(A004273(n))-A000007(n)` -/
def P15212519757446421080.Spec : Prop :=
  ∀ n, P15212519757446421080.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P17124007275140960150

`A041025(A004273(n))%A099370(n)`
-/

namespace A121740.P17124007275140960150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041025 (A004273 n).toNat) (A099370 n)

end

end A121740.P17124007275140960150

namespace A121740

/-- `A041025(A004273(n))%A099370(n)` -/
def P17124007275140960150.Spec : Prop :=
  ∀ n, P17124007275140960150.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P10508418585846667885

`lcm(A041025(A004273(n)), A324672(n))`
-/

namespace A121740.P10508418585846667885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041025 (A004273 n).toNat) (A324672 n)

end

end A121740.P10508418585846667885

namespace A121740

/-- `lcm(A041025(A004273(n)), A324672(n))` -/
def P10508418585846667885.Spec : Prop :=
  ∀ n, (P10508418585846667885.a n : ℤ) = A121740 (n + 1)

end A121740

/-! ## A121740.P15074771820649768588

`record[A041025(n)*A124625(A124625(n))]`
-/

namespace A121740.P15074771820649768588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 n * A124625 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121740.P15074771820649768588

namespace A121740

/-- `record[A041025(n)*A124625(A124625(n))]` -/
def P15074771820649768588.Spec : Prop :=
  ∀ n, P15074771820649768588.a n = A121740 (n + 1)

end A121740

/-! ## A121740.P16651363420457753614

`A015454(2*n+1)-A041025(2*n)`
-/

namespace A121740.P16651363420457753614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015454 (2 * n + 1) - A041025 (2 * n)

end

end A121740.P16651363420457753614

namespace A121740

/-- `A015454(2*n+1)-A041025(2*n)` -/
def P16651363420457753614.Spec : Prop :=
  ∀ n, P16651363420457753614.a n = A121740 (n + 1)

end A121740

/-!
# A121741: Dimensions of the irreducible representations of the simple Lie algebra of type A2 (equivalently, the group SL3) over the complex numbers, listed in increasing order.

The programs for A121741, the canonical program `A121741.P7108714844468851530` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121741 has offset 1).

The definition of A121741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121741.P13072021799087032263

`A088915(n+2)/2`
-/

namespace A121741.P13072021799087032263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088915 (n + 2) : ℚ) / 2

end

end A121741.P13072021799087032263

namespace A121741

/-- `A088915(n+2)/2` -/
def P13072021799087032263.Spec : Prop :=
  ∀ n, P13072021799087032263.a n = (A121741 (n + 1) : ℚ)

end A121741

/-! ## A121741.P7108714844468851530

`∑[A001281(Δ[A088915(n+1)])]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A121741

/-- `∑[A001281(Δ[A088915(n+1)])]` -/
def P7108714844468851530.Spec : Prop :=
  ∀ n, P7108714844468851530.a n = A121741 (n + 1)

theorem P7108714844468851530.correct : P7108714844468851530.Spec := by
  intro n
  simp only [A121741, Nat.add_sub_cancel]

end A121741

/-! ## A121741.P9184210022633007716

`∑[A004525(Δ[A088915(n+1)])]`
-/

namespace A121741.P9184210022633007716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P9184210022633007716

namespace A121741

/-- `∑[A004525(Δ[A088915(n+1)])]` -/
def P9184210022633007716.Spec : Prop :=
  ∀ n, P9184210022633007716.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P13036154779422445710

`∑[A004526(Δ[A088915(n+1)])]`
-/

namespace A121741.P13036154779422445710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P13036154779422445710

namespace A121741

/-- `∑[A004526(Δ[A088915(n+1)])]` -/
def P13036154779422445710.Spec : Prop :=
  ∀ n, P13036154779422445710.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P5189446777731918877

`∑[A025480(Δ[A088915(n+1)])]`
-/

namespace A121741.P5189446777731918877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P5189446777731918877

namespace A121741

/-- `∑[A025480(Δ[A088915(n+1)])]` -/
def P5189446777731918877.Spec : Prop :=
  ∀ n, P5189446777731918877.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P6099995080957985317

`∑[A026741(Δ[A088915(n+1)])]`
-/

namespace A121741.P6099995080957985317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P6099995080957985317

namespace A121741

/-- `∑[A026741(Δ[A088915(n+1)])]` -/
def P6099995080957985317.Spec : Prop :=
  ∀ n, P6099995080957985317.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P13067303075446218400

`∑[A029578(Δ[A088915(n+1)])]`
-/

namespace A121741.P13067303075446218400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P13067303075446218400

namespace A121741

/-- `∑[A029578(Δ[A088915(n+1)])]` -/
def P13067303075446218400.Spec : Prop :=
  ∀ n, P13067303075446218400.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P15898352501833212486

`∑[A123108(Δ[A088915(n+1)])]`
-/

namespace A121741.P15898352501833212486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121741.P15898352501833212486

namespace A121741

/-- `∑[A123108(Δ[A088915(n+1)])]` -/
def P15898352501833212486.Spec : Prop :=
  ∀ n, P15898352501833212486.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P16033783014776332173

`lt[0, char[A107985(n)]]`
-/

namespace A121741.P16033783014776332173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121741.P16033783014776332173

namespace A121741

/-- `lt[0, char[A107985(n)]]` -/
def P16033783014776332173.Spec : Prop :=
  ∀ n, (P16033783014776332173.a n : ℤ) = A121741 (n + 1)

end A121741

/-! ## A121741.P11747342630203092380

`A001281(A088915(n+2))`
-/

namespace A121741.P11747342630203092380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088915 (n + 2)).toNat

end

end A121741.P11747342630203092380

namespace A121741

/-- `A001281(A088915(n+2))` -/
def P11747342630203092380.Spec : Prop :=
  ∀ n, P11747342630203092380.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P7792507514475327247

`A004526(A088915(n+2)+1)`
-/

namespace A121741.P7792507514475327247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088915 (n + 2) + 1).toNat

end

end A121741.P7792507514475327247

namespace A121741

/-- `A004526(A088915(n+2)+1)` -/
def P7792507514475327247.Spec : Prop :=
  ∀ n, P7792507514475327247.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P16734158873948433500

`A123108(A088915(n+2)+1)`
-/

namespace A121741.P16734158873948433500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A088915 (n + 2) + 1).toNat

end

end A121741.P16734158873948433500

namespace A121741

/-- `A123108(A088915(n+2)+1)` -/
def P16734158873948433500.Spec : Prop :=
  ∀ n, P16734158873948433500.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P758454859633299431

`A025480(A088915(n+1)+Δ[A088915(n+1)])`
-/

namespace A121741.P758454859633299431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A088915 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A121741.P758454859633299431

namespace A121741

/-- `A025480(A088915(n+1)+Δ[A088915(n+1)])` -/
def P758454859633299431.Spec : Prop :=
  ∀ n, P758454859633299431.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P9110483336262867300

`A026741(A088915(n+1)+Δ[A088915(n+1)])`
-/

namespace A121741.P9110483336262867300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A088915 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A121741.P9110483336262867300

namespace A121741

/-- `A026741(A088915(n+1)+Δ[A088915(n+1)])` -/
def P9110483336262867300.Spec : Prop :=
  ∀ n, P9110483336262867300.a n = A121741 (n + 1)

end A121741

/-! ## A121741.P12762270535940082546

`A029578(A088915(n+1)+Δ[A088915(n+1)])`
-/

namespace A121741.P12762270535940082546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A088915 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A121741.P12762270535940082546

namespace A121741

/-- `A029578(A088915(n+1)+Δ[A088915(n+1)])` -/
def P12762270535940082546.Spec : Prop :=
  ∀ n, P12762270535940082546.a n = A121741 (n + 1)

end A121741

/-!
# A121744: Numbers n such that (1 + Sum[Prime[k],{k,1,n}]) = (1 + A007504[n]) divides primorial number p(n)# = Product[Prime[k],{k,1,n}] = A002110[n].

The programs for A121744, there is no canonical definition to state claims against.
-/

/-! ## A121744.P11593407026913106744

`eq[1, A120291(n+1)]+1`
-/

namespace A121744.P11593407026913106744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121744.P11593407026913106744

/-! ## A121744.P1762835994928878864

`record[(n+2)/A120291(n+2)]`
-/

namespace A121744.P1762835994928878864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A120291 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121744.P1762835994928878864

/-! ## A121744.P179788657216754959

`eq[1, A120291(floor(2/acot(n))-n)]`
-/

namespace A121744.P179788657216754959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120291 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121744.P179788657216754959

/-! ## A121744.P6224037498407838846

`eq[1, A120291(A028310(n))]`
-/

namespace A121744.P6224037498407838846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120291 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121744.P6224037498407838846

/-! ## A121744.P334568834782879473

`A020725(eq[1, A120291(n+1)])`
-/

namespace A121744.P334568834782879473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121744.P334568834782879473

/-!
# A121745: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n and having k columns of odd length (0<=k<=n). A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121745, there is no canonical definition to state claims against.
-/

/-! ## A121745.P1544477888167979482

`A260803(A318881(2*n+5)+A298533(n+1))`
-/

namespace A121745.P1544477888167979482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260803 (A318881 (2 * n + 5) + A298533 (n + 1)).toNat

end

end A121745.P1544477888167979482

/-!
# A121746: Number of deco polyominoes of height n, consisting only of columns of even length. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121746, there is no canonical definition to state claims against.
-/

/-! ## A121746.P10459734344396005943

`abs(∑[A111942(n+1)])`
-/

namespace A121746.P10459734344396005943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A121746.P10459734344396005943

/-! ## A121746.P16003410007155658509

`A010551(n)-a(n-1)` with `a(0)=1`
-/

namespace A121746.P16003410007155658509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010551 n - a (n - 1)

end

end A121746.P16003410007155658509

/-! ## A121746.P17252351005924458530

`∏[A065033(n)]-a(n-1)` with `a(0)=1`
-/

namespace A121746.P17252351005924458530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A121746.P17252351005924458530

/-! ## A121746.P9908527188778104061

`(a(n-1)+a(n-2))*A110654(n)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A121746.P9908527188778104061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * A110654 n - a (n - 1)

end

end A121746.P9908527188778104061

/-! ## A121746.P3150651312394540641

`abs(∑[A111941(A000217(n+1))])`
-/

namespace A121746.P3150651312394540641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111941 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A121746.P3150651312394540641

/-!
# A121747: Number of columns of odd length in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121747, there is no canonical definition to state claims against.
-/

/-! ## A121747.P15329899986618679474

`A121586(n+1)-A121750(n+1)`
-/

namespace A121747.P15329899986618679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 1) - A121750 (n + 1)

end

end A121747.P15329899986618679474

/-! ## A121747.P16975077992687765147

`A121752(n+1)+A121754(n+1)-A121750(n+1)`
-/

namespace A121747.P16975077992687765147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121752 (n + 1) + (A121754 (n + 1) - A121750 (n + 1))

end

end A121747.P16975077992687765147

/-!
# A121749: Number of deco polyominoes of height n, consisting only of columns of odd length. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121749, the canonical program `A121749.P7101254516370523714` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121749 has offset 1).

The definition of A121749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121749.P7101254516370523714

`floor((n+1)/2)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121749

/-- `floor((n+1)/2)*(a(n-1)+a(n-2))` -/
def P7101254516370523714.Spec : Prop :=
  ∀ n, P7101254516370523714.a n = A121749 (n + 1)

theorem P7101254516370523714.correct : P7101254516370523714.Spec := by
  intro n
  simp only [A121749, Nat.add_sub_cancel]

end A121749

/-! ## A121749.P7496282522729435808

`(a(n-1)+a(n-2))*ceil(n/2)` with `a(0)=1, a(1)=1`
-/

namespace A121749.P7496282522729435808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * ⌈(n : ℚ) / 2⌉

end

end A121749.P7496282522729435808

namespace A121749

/-- `(a(n-1)+a(n-2))*ceil(n/2)` -/
def P7496282522729435808.Spec : Prop :=
  ∀ n, P7496282522729435808.a n = A121749 (n + 1)

end A121749

/-! ## A121749.P7481150454644905577

`(a(n-1)-floor(-a(n-2)))*ceil(n/2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A121749.P7481150454644905577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ⌈(n : ℚ) / 2⌉

end

end A121749.P7481150454644905577

namespace A121749

/-- `(a(n-1)-floor(-a(n-2)))*ceil(n/2)` -/
def P7481150454644905577.Spec : Prop :=
  ∀ n, P7481150454644905577.a n = A121749 (n + 1)

end A121749

/-! ## A121749.P1134390607126978384

`(a(n-1)-ceil(-a(n-2)))*ceil(n/2)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A121749.P1134390607126978384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ⌈(n : ℚ) / 2⌉

end

end A121749.P1134390607126978384

namespace A121749

/-- `(a(n-1)-ceil(-a(n-2)))*ceil(n/2)` -/
def P1134390607126978384.Spec : Prop :=
  ∀ n, P1134390607126978384.a n = A121749 (n + 1)

end A121749

/-! ## A121749.P2846253668847716366

`(1-floor(1-a(n-1)-a(n-2)))*ceil(n/2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A121749.P2846253668847716366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (1 - a (n - 1) - a (n - 2))) * ⌈(n : ℚ) / 2⌉

end

end A121749.P2846253668847716366

namespace A121749

/-- `(1-floor(1-a(n-1)-a(n-2)))*ceil(n/2)` -/
def P2846253668847716366.Spec : Prop :=
  ∀ n, P2846253668847716366.a n = A121749 (n + 1)

end A121749

/-! ## A121749.P8434207722202457591

`A065033(n)!*A056922(n)`
-/

namespace A121749.P8434207722202457591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A065033 n).toNat : ℤ) * A056922 n

end

end A121749.P8434207722202457591

namespace A121749

/-- `A065033(n)!*A056922(n)` -/
def P8434207722202457591.Spec : Prop :=
  ∀ n, P8434207722202457591.a n = A121749 (n + 1)

end A121749

/-!
# A121750: Number of columns of even length in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121750, there is no canonical definition to state claims against.
-/

/-! ## A121750.P4573084246784997557

`A121586(n+1)-A121747(n+1)`
-/

namespace A121750.P4573084246784997557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 1) - A121747 (n + 1)

end

end A121750.P4573084246784997557

/-! ## A121750.P16235807199680437367

`A121586(A291769(n))%A121747(n+1)`
-/

namespace A121750.P16235807199680437367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121586 (A291769 n).toNat) (A121747 (n + 1))

end

end A121750.P16235807199680437367

/-! ## A121750.P6143671128895293905

`A121752(n+1)+A121754(n+1)-A121747(n+1)`
-/

namespace A121750.P6143671128895293905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121752 (n + 1) + (A121754 (n + 1) - A121747 (n + 1))

end

end A121750.P6143671128895293905

/-! ## A121750.P1035203292038953241

`A121586(n+1)%A121747(A161953(n+1))`
-/

namespace A121750.P1035203292038953241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121586 (n + 1)) (A121747 (A161953 (n + 1)).toNat)

end

end A121750.P1035203292038953241

/-!
# A121751: Number of deco polyominoes of height n in which all columns end at an even level. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121751, there is no canonical definition to state claims against.
-/

/-! ## A121751.P13754900439071682527

`A121697(∑[n+1])`
-/

namespace A121751.P13754900439071682527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121751.P13754900439071682527

/-! ## A121751.P15950587332843539968

`record[A121697(A025810(n))]`
-/

namespace A121751.P15950587332843539968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 (A025810 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121751.P15950587332843539968

/-! ## A121751.P11491065869789403248

`record[A121697(A130270(n+1))]`
-/

namespace A121751.P11491065869789403248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121751.P11491065869789403248

/-! ## A121751.P647176640551369090

`record[A121697(A286159(n+1))]`
-/

namespace A121751.P647176640551369090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 (A286159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121751.P647176640551369090

/-! ## A121751.P2614430395750840378

`record[A121697(n)-A241981(n)]`
-/

namespace A121751.P2614430395750840378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121697 n - A241981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121751.P2614430395750840378

/-!
# A121752: Number of columns ending at an odd level in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121752, there is no canonical definition to state claims against.
-/

/-! ## A121752.P11500469076576765775

`A121586(n+1)-A121754(n+1)`
-/

namespace A121752.P11500469076576765775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 1) - A121754 (n + 1)

end

end A121752.P11500469076576765775

/-! ## A121752.P16223803023281871236

`A121747(n+1)+A121750(n+1)-A121754(n+1)`
-/

namespace A121752.P16223803023281871236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121747 (n + 1) + (A121750 (n + 1) - A121754 (n + 1))

end

end A121752.P16223803023281871236

/-!
# A121753: Number of deco polyominoes of height n in which all columns end at an odd level. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121753, there is no canonical definition to state claims against.
-/

/-! ## A121753.P15909564908782060714

`A121698(∑[n]+1)`
-/

namespace A121753.P15909564908782060714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121753.P15909564908782060714

/-! ## A121753.P18397213956821455837

`A121698(A000124(n))+char[10]`
-/

namespace A121753.P18397213956821455837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121698 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121753.P18397213956821455837

/-! ## A121753.P4446814848379479724

`A326680(n)+A121698(A000124(n))`
-/

namespace A121753.P4446814848379479724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A121698 (A000124 n).toNat

end

end A121753.P4446814848379479724

/-! ## A121753.P9099335616883280473

`A053632(n)*A121698(A000124(n))`
-/

namespace A121753.P9099335616883280473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n * A121698 (A000124 n).toNat

end

end A121753.P9099335616883280473

/-! ## A121753.P4379577494528381825

`A055642(n)*A121698(A000124(n))`
-/

namespace A121753.P4379577494528381825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A121698 (A000124 n).toNat

end

end A121753.P4379577494528381825

/-!
# A121754: Number of columns ending at an even level in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121754, there is no canonical definition to state claims against.
-/

/-! ## A121754.P12300976323276206840

`A121586(n+1)-A121752(n+1)`
-/

namespace A121754.P12300976323276206840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 1) - A121752 (n + 1)

end

end A121754.P12300976323276206840

/-! ## A121754.P11975075545708870710

`A121747(n+1)+A121750(n+1)-A121752(n+1)`
-/

namespace A121754.P11975075545708870710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121747 (n + 1) + (A121750 (n + 1) - A121752 (n + 1))

end

end A121754.P11975075545708870710

/-! ## A121754.P15484196483188803666

`A121586(n+1)%A121752(A161953(n+1))`
-/

namespace A121754.P15484196483188803666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121586 (n + 1)) (A121752 (A161953 (n + 1)).toNat)

end

end A121754.P15484196483188803666

/-!
# A121755: Numerator of Sum/Product of first n primes = Numerator[ A007504[n] / A002110[n] ].

The programs for A121755, there is no canonical definition to state claims against.
-/

/-! ## A121755.P15793867916644543395

`A007504(n+1)/A132995(n+1)`
-/

namespace A121755.P15793867916644543395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A132995 (n + 1) : ℚ)

end

end A121755.P15793867916644543395

/-! ## A121755.P8103849657740587276

`∑[A000040(n+1)]/A132995(n+1)`
-/

namespace A121755.P8103849657740587276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A132995 (n + 1) : ℚ)

end

end A121755.P8103849657740587276

/-! ## A121755.P14825135627515411564

`∑[A008578(n+2)]/A132995(n+1)`
-/

namespace A121755.P14825135627515411564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A132995 (n + 1) : ℚ)

end

end A121755.P14825135627515411564

/-! ## A121755.P813547798397670090

`∑[p?[A003277(n+1)]]/A132995(n+1)`
-/

namespace A121755.P813547798397670090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A132995 (n + 1) : ℚ)

end

end A121755.P813547798397670090

/-! ## A121755.P1358220005916017740

`A007504(n+1)/gcd(A002110(n+1), A007504(n+1))`
-/

namespace A121755.P1358220005916017740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (Int.gcd (A002110 (n + 1)) (A007504 (n + 1)) : ℚ)

end

end A121755.P1358220005916017740

/-!
# A121756: Primes p such that sum of first p primes divides product of first p primes.

The programs for A121756, there is no canonical definition to state claims against.
-/

/-! ## A121756.P15014377832814509084

`p?[A051838(n+1)]`
-/

namespace A121756.P15014377832814509084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121756.P15014377832814509084

/-! ## A121756.P17006570786954219486

`p?[(n+1)*(2-A121755(n+1))]`
-/

namespace A121756.P17006570786954219486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A121755 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121756.P17006570786954219486

/-! ## A121756.P15554123760462953552

`record[A006530(A051838(n+2))]`
-/

namespace A121756.P15554123760462953552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121756.P15554123760462953552

/-! ## A121756.P4939368881327973090

`p?[A061395(A140761(n+1))]`
-/

namespace A121756.P4939368881327973090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A140761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121756.P4939368881327973090

/-! ## A121756.P12145927102559919255

`filter[A051838(n+1), A010051(#)]`
-/

namespace A121756.P12145927102559919255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A121756.P12145927102559919255

/-!
# A121757: Triangle read by rows: multiply Pascal's triangle by 1,2,6,24,120,720,... = A000142.

The programs for A121757, the canonical program `A121757.P7134877423279458193` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121757 has offset 0).

The definition of A121757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121757.P10195516785842114924

`A324224(A063656(n)+1)`
-/

namespace A121757.P10195516785842114924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324224 (A063656 n + 1).toNat

end

end A121757.P10195516785842114924

namespace A121757

/-- `A324224(A063656(n)+1)` -/
def P10195516785842114924.Spec : Prop :=
  ∀ n, P10195516785842114924.a n = A121757 n

end A121757

/-! ## A121757.P11903636496975597923

`A103406(n)*A233543(n)`
-/

namespace A121757.P11903636496975597923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n * A233543 n

end

end A121757.P11903636496975597923

namespace A121757

/-- `A103406(n)*A233543(n)` -/
def P11903636496975597923.Spec : Prop :=
  ∀ n, P11903636496975597923.a n = A121757 n

end A121757

/-! ## A121757.P7134877423279458193

`A002260(n+1)*A008279(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121757

/-- `A002260(n+1)*A008279(n)` -/
def P7134877423279458193.Spec : Prop :=
  ∀ n, P7134877423279458193.a n = A121757 n

theorem P7134877423279458193.correct : P7134877423279458193.Spec := by
  intro n
  simp only [A121757]

end A121757

/-! ## A121757.P10548567809239319566

`(A002262(n)+1)*A008279(n)`
-/

namespace A121757.P10548567809239319566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008279 n

end

end A121757.P10548567809239319566

namespace A121757

/-- `(A002262(n)+1)*A008279(n)` -/
def P10548567809239319566.Spec : Prop :=
  ∀ n, P10548567809239319566.a n = A121757 n

end A121757

/-! ## A121757.P15573738026249005332

`A007318(n)*A166350(n+1)`
-/

namespace A121757.P15573738026249005332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166350 (n + 1)

end

end A121757.P15573738026249005332

namespace A121757

/-- `A007318(n)*A166350(n+1)` -/
def P15573738026249005332.Spec : Prop :=
  ∀ n, P15573738026249005332.a n = A121757 n

end A121757

/-! ## A121757.P8943880063971599299

`A007318(n)*A233543(comp[∑[n]])`
-/

namespace A121757.P8943880063971599299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A233543 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A121757.P8943880063971599299

namespace A121757

/-- `A007318(n)*A233543(comp[∑[n]])` -/
def P8943880063971599299.Spec : Prop :=
  ∀ n, P8943880063971599299.a n = A121757 n

end A121757

/-! ## A121757.P11607537835312439376

`A002260(n+1)!*A007318(n)`
-/

namespace A121757.P11607537835312439376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A007318 n

end

end A121757.P11607537835312439376

namespace A121757

/-- `A002260(n+1)!*A007318(n)` -/
def P11607537835312439376.Spec : Prop :=
  ∀ n, P11607537835312439376.a n = A121757 n

end A121757

/-! ## A121757.P1149661191816661725

`A002260(n+1)!*ceil(A134059(n)/3)`
-/

namespace A121757.P1149661191816661725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A121757.P1149661191816661725

namespace A121757

/-- `A002260(n+1)!*ceil(A134059(n)/3)` -/
def P1149661191816661725.Spec : Prop :=
  ∀ n, P1149661191816661725.a n = A121757 n

end A121757

/-! ## A121757.P4262718543892034459

`A002260(n+1)*A094587(A061579(n))`
-/

namespace A121757.P4262718543892034459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A094587 (A061579 n).toNat

end

end A121757.P4262718543892034459

namespace A121757

/-- `A002260(n+1)*A094587(A061579(n))` -/
def P4262718543892034459.Spec : Prop :=
  ∀ n, P4262718543892034459.a n = A121757 n

end A121757

/-! ## A121757.P17565863381376551072

`A068424(n+1)/A135278(n)*A007318(n)`
-/

namespace A121757.P17565863381376551072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A135278 n : ℚ) * (A007318 n : ℚ)

end

end A121757.P17565863381376551072

namespace A121757

/-- `A068424(n+1)/A135278(n)*A007318(n)` -/
def P17565863381376551072.Spec : Prop :=
  ∀ n, P17565863381376551072.a n = (A121757 n : ℚ)

end A121757

/-! ## A121757.P744663283012405030

`A002260(n+1)!*A193554(lt[1, A193588(n)])`
-/

namespace A121757.P744663283012405030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121757.P744663283012405030

namespace A121757

/-- `A002260(n+1)!*A193554(lt[1, A193588(n)])` -/
def P744663283012405030.Spec : Prop :=
  ∀ n, P744663283012405030.a n = A121757 n

end A121757

/-! ## A121757.P16715102930716726258

`A002260(n+1)!*C(A003056(n), A002262(n))`
-/

namespace A121757.P16715102930716726258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A121757.P16715102930716726258

namespace A121757

/-- `A002260(n+1)!*C(A003056(n), A002262(n))` -/
def P16715102930716726258.Spec : Prop :=
  ∀ n, (P16715102930716726258.a n : ℤ) = A121757 n

end A121757

/-! ## A121757.P13069159987522176441

`A002260(n+1)!*C(A003056(n), A025581(n))`
-/

namespace A121757.P13069159987522176441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat * Nat.choose (A003056 n).toNat (A025581 n).toNat

end

end A121757.P13069159987522176441

namespace A121757

/-- `A002260(n+1)!*C(A003056(n), A025581(n))` -/
def P13069159987522176441.Spec : Prop :=
  ∀ n, (P13069159987522176441.a n : ℤ) = A121757 n

end A121757

/-! ## A121757.P2623018185717291594

`(A003057(n+2)-A004736(n+1))*A008279(n)`
-/

namespace A121757.P2623018185717291594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A004736 (n + 1)) * A008279 n

end

end A121757.P2623018185717291594

namespace A121757

/-- `(A003057(n+2)-A004736(n+1))*A008279(n)` -/
def P2623018185717291594.Spec : Prop :=
  ∀ n, P2623018185717291594.a n = A121757 n

end A121757

/-! ## A121757.P10152840332176276072

`A002260(n+1)/A002024(n+1)*A068424(n+1)`
-/

namespace A121757.P10152840332176276072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A068424 (n + 1) : ℚ)

end

end A121757.P10152840332176276072

namespace A121757

/-- `A002260(n+1)/A002024(n+1)*A068424(n+1)` -/
def P10152840332176276072.Spec : Prop :=
  ∀ n, P10152840332176276072.a n = (A121757 n : ℚ)

end A121757

/-! ## A121757.P6337753144750347232

`A162608(n)/A119502(n)`
-/

namespace A121757.P6337753144750347232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 n : ℚ) / (A119502 n : ℚ)

end

end A121757.P6337753144750347232

namespace A121757

/-- `A162608(n)/A119502(n)` -/
def P6337753144750347232.Spec : Prop :=
  ∀ n, P6337753144750347232.a n = (A121757 n : ℚ)

end A121757

/-! ## A121757.P10802726035950447467

`A132159(A061579(n))`
-/

namespace A121757.P10802726035950447467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 (A061579 n).toNat

end

end A121757.P10802726035950447467

namespace A121757

/-- `A132159(A061579(n))` -/
def P10802726035950447467.Spec : Prop :=
  ∀ n, P10802726035950447467.a n = A121757 n

end A121757

/-! ## A121757.P11558788977060451923

`A019538(n+1)/A028246(n+1)*A008279(n)`
-/

namespace A121757.P11558788977060451923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A121757.P11558788977060451923

namespace A121757

/-- `A019538(n+1)/A028246(n+1)*A008279(n)` -/
def P11558788977060451923.Spec : Prop :=
  ∀ n, P11558788977060451923.a n = (A121757 n : ℚ)

end A121757

/-! ## A121757.P6842922419282954189

`A199673(n+1)/A089944(n)`
-/

namespace A121757.P6842922419282954189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A089944 n : ℚ)

end

end A121757.P6842922419282954189

namespace A121757

/-- `A199673(n+1)/A089944(n)` -/
def P6842922419282954189.Spec : Prop :=
  ∀ n, P6842922419282954189.a n = (A121757 n : ℚ)

end A121757

/-! ## A121757.P4267981709438976268

`A156992(n+1)/A173333(n+1)`
-/

namespace A121757.P4267981709438976268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A173333 (n + 1) : ℚ)

end

end A121757.P4267981709438976268

namespace A121757

/-- `A156992(n+1)/A173333(n+1)` -/
def P4267981709438976268.Spec : Prop :=
  ∀ n, P4267981709438976268.a n = (A121757 n : ℚ)

end A121757

/-!
# A121758: In decimal number system, take odd digits of n with negative sign.

The programs for A121758, there is no canonical definition to state claims against.
-/

/-! ## A121758.P5714915919851056967

`-A121759(n+1)`
-/

namespace A121758.P5714915919851056967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121759 (n + 1)

end

end A121758.P5714915919851056967

/-! ## A121758.P12232273212826557073

`char[A216900(n+2)]-A121759(n+1)`
-/

namespace A121758.P12232273212826557073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216900 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A121759 (n + 1)

end

end A121758.P12232273212826557073

/-! ## A121758.P17466289108674267641

`char[A225220(n+4)]-A121759(n+1)`
-/

namespace A121758.P17466289108674267641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225220 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A121759 (n + 1)

end

end A121758.P17466289108674267641

/-! ## A121758.P12208617247982788433

`round(n/A005899(n)-A121759(n+1))`
-/

namespace A121758.P12208617247982788433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A005899 n : ℚ) - (A121759 (n + 1) : ℚ))

end

end A121758.P12208617247982788433

/-! ## A121758.P11416026354914754286

`A008624(gcd(n, n+1))-A121759(n+1)`
-/

namespace A121758.P11416026354914754286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Nat.gcd n (n + 1)) - A121759 (n + 1)

end

end A121758.P11416026354914754286

/-! ## A121758.P14248574091940998305

`A000641(C(n, n+1))-A121759(n+1)`
-/

namespace A121758.P14248574091940998305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000641 (Nat.choose n (n + 1)) - A121759 (n + 1)

end

end A121758.P14248574091940998305

/-! ## A121758.P11957616927027324276

`A069940(C(n, n+1))-A121759(n+1)`
-/

namespace A121758.P11957616927027324276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069940 (Nat.choose n (n + 1)) - A121759 (n + 1)

end

end A121758.P11957616927027324276

/-! ## A121758.P11258422972178281327

`C(n, A207954(n+1))-A121759(n+1)`
-/

namespace A121758.P11258422972178281327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A207954 (n + 1)).toNat : ℤ) - A121759 (n + 1)

end

end A121758.P11258422972178281327

/-! ## A121758.P12211067546138446806

`A024000(A024000(n)+n)-A121759(n+1)`
-/

namespace A121758.P12211067546138446806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A024000 n + (n : ℤ)).toNat - A121759 (n + 1)

end

end A121758.P12211067546138446806

/-! ## A121758.P11822140824986743601

`A000035(n-A000035(n))-A121759(n+1)`
-/

namespace A121758.P11822140824986743601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A000035 n).toNat - A121759 (n + 1)

end

end A121758.P11822140824986743601

/-! ## A121758.P6170847134584519180

`char[A160534(A160534(n)²)]-A121759(n+1)`
-/

namespace A121758.P6170847134584519180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160534 (A160534 n ^ 2).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A121759 (n + 1)

end

end A121758.P6170847134584519180

/-! ## A121758.P8226402677487388431

`A014963(n+1)-(A121759(n+1)+A014963(A014963(n+1)))`
-/

namespace A121758.P8226402677487388431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - (A121759 (n + 1) + A014963 (A014963 (n + 1)).toNat)

end

end A121758.P8226402677487388431

/-! ## A121758.P17343960378731410713

`A000035(2*n)-A121759(n+1)`
-/

namespace A121758.P17343960378731410713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A121759 (n + 1)

end

end A121758.P17343960378731410713

/-! ## A121758.P3845042132062571811

`A010681(2*n)-A121759(n+1)`
-/

namespace A121758.P3845042132062571811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 (2 * n) - A121759 (n + 1)

end

end A121758.P3845042132062571811

/-! ## A121758.P3247798733298679087

`A196564(A130335(3*n+5))-A121759(n+1)`
-/

namespace A121758.P3247798733298679087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A130335 (3 * n + 5)).toNat - A121759 (n + 1)

end

end A121758.P3247798733298679087

/-! ## A121758.P11533544680710632262

`A196563(A014261(n+1))-A121759(n+1)`
-/

namespace A121758.P11533544680710632262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A014261 (n + 1)).toNat - A121759 (n + 1)

end

end A121758.P11533544680710632262

/-! ## A121758.P5968844976641897367

`A196564(A045926(n+1))-A121759(n+1)`
-/

namespace A121758.P5968844976641897367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A045926 (n + 1)).toNat - A121759 (n + 1)

end

end A121758.P5968844976641897367

/-! ## A121758.P8901849148643313189

`A196563(A066640(n+1))-A121759(n+1)`
-/

namespace A121758.P8901849148643313189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A066640 (n + 1)).toNat - A121759 (n + 1)

end

end A121758.P8901849148643313189

/-! ## A121758.P325538282198079603

`A196563(A061829(n+1))-A121759(n+1)`
-/

namespace A121758.P325538282198079603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A061829 (n + 1)).toNat - A121759 (n + 1)

end

end A121758.P325538282198079603

/-! ## A121758.P12945045281199995377

`A196563(A061808(n+1))-A121759(n+1)`
-/

namespace A121758.P12945045281199995377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A061808 (n + 1)).toNat - A121759 (n + 1)

end

end A121758.P12945045281199995377

/-!
# A121759: In decimal number system, take even digits of n with negative sign.

The programs for A121759, there is no canonical definition to state claims against.
-/

/-! ## A121759.P185647814265111266

`-A121758(n+1)`
-/

namespace A121759.P185647814265111266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121758 (n + 1)

end

end A121759.P185647814265111266

/-! ## A121759.P3358957495518164341

`n*A000007(n)-A121758(n+1)`
-/

namespace A121759.P3358957495518164341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A121758 (n + 1)

end

end A121759.P3358957495518164341

/-! ## A121759.P6574142155861483761

`(A023443(n)-n)*A121758(n+1)`
-/

namespace A121759.P6574142155861483761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023443 n - (n : ℤ)) * A121758 (n + 1)

end

end A121759.P6574142155861483761

/-! ## A121759.P6056628039583842823

`∑[n]-(A121758(n+1)+A000217(n))`
-/

namespace A121759.P6056628039583842823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A121758 (n + 1) + A000217 n)

end

end A121759.P6056628039583842823

/-! ## A121759.P13150202443461562955

`floor(1/A074223(n+1)-A121758(n+1))`
-/

namespace A121759.P13150202443461562955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A074223 (n + 1) : ℚ) - (A121758 (n + 1) : ℚ)⌋

end

end A121759.P13150202443461562955

/-! ## A121759.P373507110237553814

`A010051(A008579(n))-A121758(n+1)`
-/

namespace A121759.P373507110237553814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008579 n).toNat - A121758 (n + 1)

end

end A121759.P373507110237553814

/-! ## A121759.P13654705685770010485

`A063524(A005843(n))-A121758(n+1)`
-/

namespace A121759.P13654705685770010485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A005843 n).toNat - A121758 (n + 1)

end

end A121759.P13654705685770010485

/-! ## A121759.P12114749221318791942

`A000007(A000265(n+1))-A121758(n+1)`
-/

namespace A121759.P12114749221318791942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000265 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P12114749221318791942

/-! ## A121759.P9996466926010867641

`A000007(A327513(n+1))-A121758(n+1)`
-/

namespace A121759.P9996466926010867641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A327513 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P9996466926010867641

/-! ## A121759.P10934679484148200180

`A000035(n-A000035(n))-A121758(n+1)`
-/

namespace A121759.P10934679484148200180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A000035 n).toNat - A121758 (n + 1)

end

end A121759.P10934679484148200180

/-! ## A121759.P10750811332708440897

`A023443(n-A023443(n))-A121758(n+1)`
-/

namespace A121759.P10750811332708440897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A023443 n).toNat - A121758 (n + 1)

end

end A121759.P10750811332708440897

/-! ## A121759.P10590536899761756893

`A238343(A000040(gcd(n, n+1)))-A121758(n+1)`
-/

namespace A121759.P10590536899761756893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000040 (Nat.gcd n (n + 1))).toNat - A121758 (n + 1)

end

end A121759.P10590536899761756893

/-! ## A121759.P12089443875817805244

`A053645(n-A053645(n+1)+1)-A121758(n+1)`
-/

namespace A121759.P12089443875817805244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 ((n : ℤ) - A053645 (n + 1) + 1).toNat - A121758 (n + 1)

end

end A121759.P12089443875817805244

/-! ## A121759.P285898507373360626

`A000035(2*n)-A121758(n+1)`
-/

namespace A121759.P285898507373360626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A121758 (n + 1)

end

end A121759.P285898507373360626

/-! ## A121759.P6573595656296385184

`A196564(A130335(3*n+5))-A121758(n+1)`
-/

namespace A121759.P6573595656296385184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A130335 (3 * n + 5)).toNat - A121758 (n + 1)

end

end A121759.P6573595656296385184

/-! ## A121759.P15915542905718448844

`A196563(A014261(n+1))-A121758(n+1)`
-/

namespace A121759.P15915542905718448844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A014261 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P15915542905718448844

/-! ## A121759.P8758471403576944024

`A196564(A045926(n+1))-A121758(n+1)`
-/

namespace A121759.P8758471403576944024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A045926 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P8758471403576944024

/-! ## A121759.P6043090258910521348

`A010051(A121758(n+1)²)-A121758(n+1)`
-/

namespace A121759.P6043090258910521348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A121758 (n + 1) ^ 2).toNat - A121758 (n + 1)

end

end A121759.P6043090258910521348

/-! ## A121759.P11653115129837823137

`A196563(A066640(n+1))-A121758(n+1)`
-/

namespace A121759.P11653115129837823137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A066640 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P11653115129837823137

/-! ## A121759.P17066565334823946312

`A196563(A061829(n+1))-A121758(n+1)`
-/

namespace A121759.P17066565334823946312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A061829 (n + 1)).toNat - A121758 (n + 1)

end

end A121759.P17066565334823946312

/-!
# A121760: In decimal number system, take negative power of 10 at odd digits of n. Sequence gives numerators of result.

The programs for A121760, there is no canonical definition to state claims against.
-/

/-! ## A121760.P13236707777678837529

`∑{e}[2^(n+1), A004086(#)]`
-/

namespace A121760.P13236707777678837529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A004086 (Nat.factorization (f1 n) p)

end

end A121760.P13236707777678837529

/-! ## A121760.P9172745966020854103

`A004086(∑[C(∑{digits}[n, #], 9)!])`
-/

namespace A121760.P9172745966020854103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121760.P9172745966020854103

/-! ## A121760.P17584129866376015446

`∑{e}[2^(n+1), #-A056965(#)]`
-/

namespace A121760.P17584129866376015446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - A056965 (Nat.factorization (f1 n) p))

end

end A121760.P17584129866376015446

/-! ## A121760.P11243508801633064487

`A004151(A061479(n)+1)`
-/

namespace A121760.P11243508801633064487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A061479 n + 1).toNat

end

end A121760.P11243508801633064487

/-! ## A121760.P11679138484228753192

`A004719(A061479(n)+1)`
-/

namespace A121760.P11679138484228753192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A061479 n + 1).toNat

end

end A121760.P11679138484228753192

/-!
# A121762: Single (or isolated or non-twin) primes of form 6n-1.

The programs for A121762, the canonical program `A121762.P7258193871153872247` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121762 has offset 1).

The definition of A121762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121762.P7258193871153872247

`p?[A107472(n+1)-2]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121762

/-- `p?[A107472(n+1)-2]` -/
def P7258193871153872247.Spec : Prop :=
  ∀ n, P7258193871153872247.a n = A121762 (n + 1)

theorem P7258193871153872247.correct : P7258193871153872247.Spec := by
  intro n
  simp only [A121762, Nat.add_sub_cancel]

end A121762

/-! ## A121762.P17302110759050032090

`∩[A134797(n+1), A007528(n+1)]`
-/

namespace A121762.P17302110759050032090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P17302110759050032090

namespace A121762

/-- `∩[A134797(n+1), A007528(n+1)]` -/
def P17302110759050032090.Spec : Prop :=
  ∀ n, (P17302110759050032090.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P7178496902834004214

`∩[A007510(n+1), A007528(n+1)]`
-/

namespace A121762.P7178496902834004214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P7178496902834004214

namespace A121762

/-- `∩[A007510(n+1), A007528(n+1)]` -/
def P7178496902834004214.Spec : Prop :=
  ∀ n, (P7178496902834004214.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P15693953318999800383

`∩[A007510(n+1), A045410(n+1)]`
-/

namespace A121762.P15693953318999800383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P15693953318999800383

namespace A121762

/-- `∩[A007510(n+1), A045410(n+1)]` -/
def P15693953318999800383.Spec : Prop :=
  ∀ n, (P15693953318999800383.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P15708334920678066108

`∩[A007510(n+1), A056955(n+1)]`
-/

namespace A121762.P15708334920678066108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P15708334920678066108

namespace A121762

/-- `∩[A007510(n+1), A056955(n+1)]` -/
def P15708334920678066108.Spec : Prop :=
  ∀ n, (P15708334920678066108.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P826335072818930644

`∩[A003627(n+1), A007510(n+2)]`
-/

namespace A121762.P826335072818930644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P826335072818930644

namespace A121762

/-- `∩[A003627(n+1), A007510(n+2)]` -/
def P826335072818930644.Spec : Prop :=
  ∀ n, (P826335072818930644.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P201501749011475404

`∩[A003627(n+1), A049591(n+1)]`
-/

namespace A121762.P201501749011475404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P201501749011475404

namespace A121762

/-- `∩[A003627(n+1), A049591(n+1)]` -/
def P201501749011475404.Spec : Prop :=
  ∀ n, (P201501749011475404.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P7570551374965151983

`∩[A007528(n+1), A049591(n+1)]`
-/

namespace A121762.P7570551374965151983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P7570551374965151983

namespace A121762

/-- `∩[A007528(n+1), A049591(n+1)]` -/
def P7570551374965151983.Spec : Prop :=
  ∀ n, (P7570551374965151983.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P14054182902454495907

`∩[A045309(n+1), A049591(n+1)]`
-/

namespace A121762.P14054182902454495907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P14054182902454495907

namespace A121762

/-- `∩[A045309(n+1), A049591(n+1)]` -/
def P14054182902454495907.Spec : Prop :=
  ∀ n, (P14054182902454495907.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P8588091111582208985

`∩[A049591(n+1), A056955(n+1)]`
-/

namespace A121762.P8588091111582208985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P8588091111582208985

namespace A121762

/-- `∩[A049591(n+1), A056955(n+1)]` -/
def P8588091111582208985.Spec : Prop :=
  ∀ n, (P8588091111582208985.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P10406539053601854617

`∩[A007528(n+1), A067774(n+1)]`
-/

namespace A121762.P10406539053601854617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P10406539053601854617

namespace A121762

/-- `∩[A007528(n+1), A067774(n+1)]` -/
def P10406539053601854617.Spec : Prop :=
  ∀ n, (P10406539053601854617.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P4737684614132625222

`∩[A007510(n+1), A259548(n+1)]`
-/

namespace A121762.P4737684614132625222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P4737684614132625222

namespace A121762

/-- `∩[A007510(n+1), A259548(n+1)]` -/
def P4737684614132625222.Spec : Prop :=
  ∀ n, (P4737684614132625222.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P16573966271020526738

`p?[A091300(n+1)-2]`
-/

namespace A121762.P16573966271020526738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P16573966271020526738

namespace A121762

/-- `p?[A091300(n+1)-2]` -/
def P16573966271020526738.Spec : Prop :=
  ∀ n, P16573966271020526738.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P16203534820182522645

`∩[A134797(n+1), A167409(n+1)]`
-/

namespace A121762.P16203534820182522645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121762.P16203534820182522645

namespace A121762

/-- `∩[A134797(n+1), A167409(n+1)]` -/
def P16203534820182522645.Spec : Prop :=
  ∀ n, (P16203534820182522645.a n : ℤ) = A121762 (n + 1)

end A121762

/-! ## A121762.P5106642180980438899

`filter[A003627(n+1), A283265(#)]`
-/

namespace A121762.P5106642180980438899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A121762.P5106642180980438899

namespace A121762

/-- `filter[A003627(n+1), A283265(#)]` -/
def P5106642180980438899.Spec : Prop :=
  ∀ n, P5106642180980438899.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P9478423896852525546

`filter[A007528(n+1), A283265(#)]`
-/

namespace A121762.P9478423896852525546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A121762.P9478423896852525546

namespace A121762

/-- `filter[A007528(n+1), A283265(#)]` -/
def P9478423896852525546.Spec : Prop :=
  ∀ n, P9478423896852525546.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P11616787657215229100

`filter[A045309(n+1), A283265(#)]`
-/

namespace A121762.P11616787657215229100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A121762.P11616787657215229100

namespace A121762

/-- `filter[A045309(n+1), A283265(#)]` -/
def P11616787657215229100.Spec : Prop :=
  ∀ n, P11616787657215229100.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P12504482993652486860

`filter[A045410(n+1), A283265(#)]`
-/

namespace A121762.P12504482993652486860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A121762.P12504482993652486860

namespace A121762

/-- `filter[A045410(n+1), A283265(#)]` -/
def P12504482993652486860.Spec : Prop :=
  ∀ n, P12504482993652486860.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P7623681213815415067

`p?[A054775(n+1)-1]`
-/

namespace A121762.P7623681213815415067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P7623681213815415067

namespace A121762

/-- `p?[A054775(n+1)-1]` -/
def P7623681213815415067.Spec : Prop :=
  ∀ n, P7623681213815415067.a n = A121762 (n + 1)

end A121762

/-! ## A121762.P419298137082240479

`A107745(A121763(n+1))`
-/

namespace A121762.P419298137082240479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107745 (A121763 (n + 1)).toNat

end

end A121762.P419298137082240479

namespace A121762

/-- `A107745(A121763(n+1))` -/
def P419298137082240479.Spec : Prop :=
  ∀ n, P419298137082240479.a n = A121762 (n + 1)

end A121762

/-!
# A121763: Numbers k such that 6*k-1 is prime while 6*k+1 is composite.

The programs for A121763, the canonical program `A121763.P355992002445267932` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121763 has offset 1).

The definition of A121763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121763.P355992002445267932

`ceil(A121762(n+1)/6)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A121763

/-- `ceil(A121762(n+1)/6)` -/
def P355992002445267932.Spec : Prop :=
  ∀ n, P355992002445267932.a n = A121763 (n + 1)

theorem P355992002445267932.correct : P355992002445267932.Spec := by
  intro n
  simp only [A121763, Nat.add_sub_cancel]

end A121763

/-! ## A121763.P16358061084585766721

`A121765(n+1)-A172054(n+1)`
-/

namespace A121763.P16358061084585766721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1) - A172054 (n + 1)

end

end A121763.P16358061084585766721

namespace A121763

/-- `A121765(n+1)-A172054(n+1)` -/
def P16358061084585766721.Spec : Prop :=
  ∀ n, P16358061084585766721.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P3712313728918551591

`A172055(n+1)-A121765(n+1)`
-/

namespace A121763.P3712313728918551591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172055 (n + 1) - A121765 (n + 1)

end

end A121763.P3712313728918551591

namespace A121763

/-- `A172055(n+1)-A121765(n+1)` -/
def P3712313728918551591.Spec : Prop :=
  ∀ n, P3712313728918551591.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P10907083175954405737

`A172055(A000290(n+1)/(n+1))%A121765(n+1)`
-/

namespace A121763.P10907083175954405737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172055 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat) (A121765 (n + 1))

end

end A121763.P10907083175954405737

namespace A121763

/-- `A172055(A000290(n+1)/(n+1))%A121765(n+1)` -/
def P10907083175954405737.Spec : Prop :=
  ∀ n, P10907083175954405737.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P9023324969005396422

`filter[A392113(n+1), A161996(#)]`
-/

namespace A121763.P9023324969005396422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A121763.P9023324969005396422

namespace A121763

/-- `filter[A392113(n+1), A161996(#)]` -/
def P9023324969005396422.Spec : Prop :=
  ∀ n, P9023324969005396422.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P3739963363413135886

`∩[A024898(n+1), A392113(n+1)]`
-/

namespace A121763.P3739963363413135886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P3739963363413135886

namespace A121763

/-- `∩[A024898(n+1), A392113(n+1)]` -/
def P3739963363413135886.Spec : Prop :=
  ∀ n, (P3739963363413135886.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P16470968043994114048

`filter[A107747(n+1), A161996(#)]`
-/

namespace A121763.P16470968043994114048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A121763.P16470968043994114048

namespace A121763

/-- `filter[A107747(n+1), A161996(#)]` -/
def P16470968043994114048.Spec : Prop :=
  ∀ n, P16470968043994114048.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P14234301614642363670

`∩[A024898(n+1), A107747(n+1)]`
-/

namespace A121763.P14234301614642363670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P14234301614642363670

namespace A121763

/-- `∩[A024898(n+1), A107747(n+1)]` -/
def P14234301614642363670.Spec : Prop :=
  ∀ n, (P14234301614642363670.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P3229219832622900741

`∩[A107747(n+1), A377540(n+1)]`
-/

namespace A121763.P3229219832622900741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P3229219832622900741

namespace A121763

/-- `∩[A107747(n+1), A377540(n+1)]` -/
def P3229219832622900741.Spec : Prop :=
  ∀ n, (P3229219832622900741.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P14999530253968182620

`∩[A377540(n+1), A392113(n+1)]`
-/

namespace A121763.P14999530253968182620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P14999530253968182620

namespace A121763

/-- `∩[A377540(n+1), A392113(n+1)]` -/
def P14999530253968182620.Spec : Prop :=
  ∀ n, (P14999530253968182620.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P14792283695656918629

`filter[A046954(n+2), A161996(#)]`
-/

namespace A121763.P14792283695656918629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A121763.P14792283695656918629

namespace A121763

/-- `filter[A046954(n+2), A161996(#)]` -/
def P14792283695656918629.Spec : Prop :=
  ∀ n, P14792283695656918629.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P15410753079893508633

`∩[A024898(n+1), A046954(n+1)]`
-/

namespace A121763.P15410753079893508633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P15410753079893508633

namespace A121763

/-- `∩[A024898(n+1), A046954(n+1)]` -/
def P15410753079893508633.Spec : Prop :=
  ∀ n, (P15410753079893508633.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P18304636982467156214

`∩[A046954(n+1), A377540(n+1)]`
-/

namespace A121763.P18304636982467156214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P18304636982467156214

namespace A121763

/-- `∩[A046954(n+1), A377540(n+1)]` -/
def P18304636982467156214.Spec : Prop :=
  ∀ n, (P18304636982467156214.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P5603658718203972840

`∩[A024898(n+1), A067611(n+1)]`
-/

namespace A121763.P5603658718203972840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121763.P5603658718203972840

namespace A121763

/-- `∩[A024898(n+1), A067611(n+1)]` -/
def P5603658718203972840.Spec : Prop :=
  ∀ n, (P5603658718203972840.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P2228558861131533944

`filter[A067611(n+1), A167020(#)]`
-/

namespace A121763.P2228558861131533944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A121763.P2228558861131533944

namespace A121763

/-- `filter[A067611(n+1), A167020(#)]` -/
def P2228558861131533944.Spec : Prop :=
  ∀ n, P2228558861131533944.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P5129400760522442877

`filter[A107747(n+1), A167020(#)]`
-/

namespace A121763.P5129400760522442877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A121763.P5129400760522442877

namespace A121763

/-- `filter[A107747(n+1), A167020(#)]` -/
def P5129400760522442877.Spec : Prop :=
  ∀ n, P5129400760522442877.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P2481458342527087322

`filter[A392113(n+1), A167020(#)]`
-/

namespace A121763.P2481458342527087322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A121763.P2481458342527087322

namespace A121763

/-- `filter[A392113(n+1), A167020(#)]` -/
def P2481458342527087322.Spec : Prop :=
  ∀ n, P2481458342527087322.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P326670069481847894

`filter[A046954(n+2), A167020(#)]`
-/

namespace A121763.P326670069481847894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A121763.P326670069481847894

namespace A121763

/-- `filter[A046954(n+2), A167020(#)]` -/
def P326670069481847894.Spec : Prop :=
  ∀ n, P326670069481847894.a n = A121763 (n + 1)

end A121763

/-! ## A121763.P4974132461891730612

`eq[A133387(n+1)+2, A016921(n)]`
-/

namespace A121763.P4974132461891730612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121763.P4974132461891730612

namespace A121763

/-- `eq[A133387(n+1)+2, A016921(n)]` -/
def P4974132461891730612.Spec : Prop :=
  ∀ n, (P4974132461891730612.a n : ℤ) = A121763 (n + 1)

end A121763

/-! ## A121763.P16711936011344128951

`eq[A101328(n+2), A133387(n+1)]`
-/

namespace A121763.P16711936011344128951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121763.P16711936011344128951

namespace A121763

/-- `eq[A101328(n+2), A133387(n+1)]` -/
def P16711936011344128951.Spec : Prop :=
  ∀ n, (P16711936011344128951.a n : ℤ) = A121763 (n + 1)

end A121763

/-!
# A121764: Single (or isolated or non-twin) primes of form 6n + 1.

The programs for A121764, the canonical program `A121764.P18179720075456038304` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121764 has offset 1).

The definition of A121764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121764.P18179720075456038304

`p?[A107472(n+1)+2]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121764

/-- `p?[A107472(n+1)+2]` -/
def P18179720075456038304.Spec : Prop :=
  ∀ n, P18179720075456038304.a n = A121764 (n + 1)

theorem P18179720075456038304.correct : P18179720075456038304.Spec := by
  intro n
  simp only [A121764, Nat.add_sub_cancel]

end A121764

/-! ## A121764.P1586157169016442171

`∩[A002476(n+1), A007510(n+1)]`
-/

namespace A121764.P1586157169016442171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121764.P1586157169016442171

namespace A121764

/-- `∩[A002476(n+1), A007510(n+1)]` -/
def P1586157169016442171.Spec : Prop :=
  ∀ n, (P1586157169016442171.a n : ℤ) = A121764 (n + 1)

end A121764

/-! ## A121764.P15803643787879997548

`filter[A007510(n+1), A070563(#)]`
-/

namespace A121764.P15803643787879997548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A121764.P15803643787879997548

namespace A121764

/-- `filter[A007510(n+1), A070563(#)]` -/
def P15803643787879997548.Spec : Prop :=
  ∀ n, P15803643787879997548.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P15448446324853677487

`filter[A134100(n+1), A070563(#)]`
-/

namespace A121764.P15448446324853677487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A121764.P15448446324853677487

namespace A121764

/-- `filter[A134100(n+1), A070563(#)]` -/
def P15448446324853677487.Spec : Prop :=
  ∀ n, P15448446324853677487.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P6744466049014822831

`filter[A134797(n+1), A070563(#)]`
-/

namespace A121764.P6744466049014822831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A121764.P6744466049014822831

namespace A121764

/-- `filter[A134797(n+1), A070563(#)]` -/
def P6744466049014822831.Spec : Prop :=
  ∀ n, P6744466049014822831.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P11893839494787584948

`filter[A319673(n+1), A070563(#)]`
-/

namespace A121764.P11893839494787584948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A121764.P11893839494787584948

namespace A121764

/-- `filter[A319673(n+1), A070563(#)]` -/
def P11893839494787584948.Spec : Prop :=
  ∀ n, P11893839494787584948.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P14824208947789476127

`filter[A025584(n+1), A070563(#)]`
-/

namespace A121764.P14824208947789476127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A121764.P14824208947789476127

namespace A121764

/-- `filter[A025584(n+1), A070563(#)]` -/
def P14824208947789476127.Spec : Prop :=
  ∀ n, P14824208947789476127.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P7369481953545482749

`∩[A002476(n+1), A025584(n+1)]`
-/

namespace A121764.P7369481953545482749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121764.P7369481953545482749

namespace A121764

/-- `∩[A002476(n+1), A025584(n+1)]` -/
def P7369481953545482749.Spec : Prop :=
  ∀ n, (P7369481953545482749.a n : ℤ) = A121764 (n + 1)

end A121764

/-! ## A121764.P10101346692816962283

`∩[A004611(n+1), A007510(n+1)]`
-/

namespace A121764.P10101346692816962283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121764.P10101346692816962283

namespace A121764

/-- `∩[A004611(n+1), A007510(n+1)]` -/
def P10101346692816962283.Spec : Prop :=
  ∀ n, (P10101346692816962283.a n : ℤ) = A121764 (n + 1)

end A121764

/-! ## A121764.P155581764806234648

`p?[(3*n+4)%A000203(3*n+2)]`
-/

namespace A121764.P155581764806234648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n + 4 : ℤ) (A000203 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121764.P155581764806234648

namespace A121764

/-- `p?[(3*n+4)%A000203(3*n+2)]` -/
def P155581764806234648.Spec : Prop :=
  ∀ n, P155581764806234648.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P2702225358829194698

`filter[A007510(n+1), A353815(#)]`
-/

namespace A121764.P2702225358829194698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A121764.P2702225358829194698

namespace A121764

/-- `filter[A007510(n+1), A353815(#)]` -/
def P2702225358829194698.Spec : Prop :=
  ∀ n, P2702225358829194698.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P16433831908536119486

`filter[A007510(n+1), A353816(#)]`
-/

namespace A121764.P16433831908536119486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A121764.P16433831908536119486

namespace A121764

/-- `filter[A007510(n+1), A353816(#)]` -/
def P16433831908536119486.Spec : Prop :=
  ∀ n, P16433831908536119486.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P5126671000877067165

`filter[A007510(n+1), A354982(#)]`
-/

namespace A121764.P5126671000877067165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A121764.P5126671000877067165

namespace A121764

/-- `filter[A007510(n+1), A354982(#)]` -/
def P5126671000877067165.Spec : Prop :=
  ∀ n, P5126671000877067165.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P6794118133620625548

`filter[A025584(n+1), A354982(#)]`
-/

namespace A121764.P6794118133620625548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A121764.P6794118133620625548

namespace A121764

/-- `filter[A025584(n+1), A354982(#)]` -/
def P6794118133620625548.Spec : Prop :=
  ∀ n, P6794118133620625548.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P13919753926835519346

`filter[A134100(n+1), A353815(#)]`
-/

namespace A121764.P13919753926835519346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A121764.P13919753926835519346

namespace A121764

/-- `filter[A134100(n+1), A353815(#)]` -/
def P13919753926835519346.Spec : Prop :=
  ∀ n, P13919753926835519346.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P9044476404976012182

`filter[A134100(n+1), A353816(#)]`
-/

namespace A121764.P9044476404976012182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A121764.P9044476404976012182

namespace A121764

/-- `filter[A134100(n+1), A353816(#)]` -/
def P9044476404976012182.Spec : Prop :=
  ∀ n, P9044476404976012182.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P16542413604350831701

`filter[A134797(n+1), A353815(#)]`
-/

namespace A121764.P16542413604350831701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A121764.P16542413604350831701

namespace A121764

/-- `filter[A134797(n+1), A353815(#)]` -/
def P16542413604350831701.Spec : Prop :=
  ∀ n, P16542413604350831701.a n = A121764 (n + 1)

end A121764

/-! ## A121764.P14672345961850918600

`filter[A134797(n+1), A353816(#)]`
-/

namespace A121764.P14672345961850918600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A121764.P14672345961850918600

namespace A121764

/-- `filter[A134797(n+1), A353816(#)]` -/
def P14672345961850918600.Spec : Prop :=
  ∀ n, P14672345961850918600.a n = A121764 (n + 1)

end A121764

/-!
# A121765: Numbers k such that 6*k-1 is composite while 6*k+1 is prime.

The programs for A121765, the canonical program `A121765.P17102494836504524144` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121765 has offset 1).

The definition of A121765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121765.P17102494836504524144

`floor(A121764(n+1)/6)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A121765

/-- `floor(A121764(n+1)/6)` -/
def P17102494836504524144.Spec : Prop :=
  ∀ n, P17102494836504524144.a n = A121765 (n + 1)

theorem P17102494836504524144.correct : P17102494836504524144.Spec := by
  intro n
  simp only [A121765, Nat.add_sub_cancel]

end A121765

/-! ## A121765.P9418692427020418777

`A172054(n+1)+A121763(n+1)`
-/

namespace A121765.P9418692427020418777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172054 (n + 1) + A121763 (n + 1)

end

end A121765.P9418692427020418777

namespace A121765

/-- `A172054(n+1)+A121763(n+1)` -/
def P9418692427020418777.Spec : Prop :=
  ∀ n, P9418692427020418777.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P14773979508444455555

`A172055(n+1)-A121763(n+1)`
-/

namespace A121765.P14773979508444455555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172055 (n + 1) - A121763 (n + 1)

end

end A121765.P14773979508444455555

namespace A121765

/-- `A172055(n+1)-A121763(n+1)` -/
def P14773979508444455555.Spec : Prop :=
  ∀ n, P14773979508444455555.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P7572799672137081824

`filter[A392115(n+1), A161996(#)]`
-/

namespace A121765.P7572799672137081824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A121765.P7572799672137081824

namespace A121765

/-- `filter[A392115(n+1), A161996(#)]` -/
def P7572799672137081824.Spec : Prop :=
  ∀ n, P7572799672137081824.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P7791555994187734896

`∩[A024899(n+1), A392115(n+1)]`
-/

namespace A121765.P7791555994187734896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121765.P7791555994187734896

namespace A121765

/-- `∩[A024899(n+1), A392115(n+1)]` -/
def P7791555994187734896.Spec : Prop :=
  ∀ n, (P7791555994187734896.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P17438126908861967615

`∩[A377540(n+1), A392115(n+1)]`
-/

namespace A121765.P17438126908861967615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121765.P17438126908861967615

namespace A121765

/-- `∩[A377540(n+1), A392115(n+1)]` -/
def P17438126908861967615.Spec : Prop :=
  ∀ n, (P17438126908861967615.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P6016961839510038801

`filter[A046953(n+1), A161996(#)]`
-/

namespace A121765.P6016961839510038801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A121765.P6016961839510038801

namespace A121765

/-- `filter[A046953(n+1), A161996(#)]` -/
def P6016961839510038801.Spec : Prop :=
  ∀ n, P6016961839510038801.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P226234791659804683

`∩[A024899(n+1), A046953(n+1)]`
-/

namespace A121765.P226234791659804683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121765.P226234791659804683

namespace A121765

/-- `∩[A024899(n+1), A046953(n+1)]` -/
def P226234791659804683.Spec : Prop :=
  ∀ n, (P226234791659804683.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P6625590996114650192

`∩[A046953(n+1), A377540(n+1)]`
-/

namespace A121765.P6625590996114650192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121765.P6625590996114650192

namespace A121765

/-- `∩[A046953(n+1), A377540(n+1)]` -/
def P6625590996114650192.Spec : Prop :=
  ∀ n, (P6625590996114650192.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P15340650148882654048

`∩[A059324(n+1), A153218(n+1)]+1`
-/

namespace A121765.P15340650148882654048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A121765.P15340650148882654048

namespace A121765

/-- `∩[A059324(n+1), A153218(n+1)]+1` -/
def P15340650148882654048.Spec : Prop :=
  ∀ n, (P15340650148882654048.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P3029715043147130751

`∩[A024899(n+1), A067611(n+1)]`
-/

namespace A121765.P3029715043147130751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121765.P3029715043147130751

namespace A121765

/-- `∩[A024899(n+1), A067611(n+1)]` -/
def P3029715043147130751.Spec : Prop :=
  ∀ n, (P3029715043147130751.a n : ℤ) = A121765 (n + 1)

end A121765

/-! ## A121765.P6617933772671159422

`filter[A046953(n+1), A167021(#)]`
-/

namespace A121765.P6617933772671159422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A121765.P6617933772671159422

namespace A121765

/-- `filter[A046953(n+1), A167021(#)]` -/
def P6617933772671159422.Spec : Prop :=
  ∀ n, P6617933772671159422.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P17076310527269400013

`filter[A067611(n+1), A167021(#)]`
-/

namespace A121765.P17076310527269400013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A121765.P17076310527269400013

namespace A121765

/-- `filter[A067611(n+1), A167021(#)]` -/
def P17076310527269400013.Spec : Prop :=
  ∀ n, P17076310527269400013.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P9960359182949666007

`filter[A392115(n+1), A167021(#)]`
-/

namespace A121765.P9960359182949666007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A121765.P9960359182949666007

namespace A121765

/-- `filter[A392115(n+1), A167021(#)]` -/
def P9960359182949666007.Spec : Prop :=
  ∀ n, P9960359182949666007.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P3263440748913811171

`eq[1, A175682(3*n+1)]/2`
-/

namespace A121765.P3263440748913811171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175682 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A121765.P3263440748913811171

namespace A121765

/-- `eq[1, A175682(3*n+1)]/2` -/
def P3263440748913811171.Spec : Prop :=
  ∀ n, P3263440748913811171.a n = (A121765 (n + 1) : ℚ)

end A121765

/-! ## A121765.P7593871987663979851

`A000010(A172016(2*(n+1)))/6`
-/

namespace A121765.P7593871987663979851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A172016 (2 * (n + 1))).toNat : ℚ) / 6

end

end A121765.P7593871987663979851

namespace A121765

/-- `A000010(A172016(2*(n+1)))/6` -/
def P7593871987663979851.Spec : Prop :=
  ∀ n, P7593871987663979851.a n = (A121765 (n + 1) : ℚ)

end A121765

/-! ## A121765.P8063334973078321376

`record[A278529(A134100(n+2)-2)]`
-/

namespace A121765.P8063334973078321376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A134100 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121765.P8063334973078321376

namespace A121765

/-- `record[A278529(A134100(n+2)-2)]` -/
def P8063334973078321376.Spec : Prop :=
  ∀ n, P8063334973078321376.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P9399350720761659597

`A008612(A121764(n+1))`
-/

namespace A121765.P9399350720761659597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A121764 (n + 1)).toNat

end

end A121765.P9399350720761659597

namespace A121765

/-- `A008612(A121764(n+1))` -/
def P9399350720761659597.Spec : Prop :=
  ∀ n, P9399350720761659597.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P3290299089746499008

`A008615(A172016(2*(n+1)))`
-/

namespace A121765.P3290299089746499008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A172016 (2 * (n + 1))).toNat

end

end A121765.P3290299089746499008

namespace A121765

/-- `A008615(A172016(2*(n+1)))` -/
def P3290299089746499008.Spec : Prop :=
  ∀ n, P3290299089746499008.a n = A121765 (n + 1)

end A121765

/-! ## A121765.P7178724166047405705

`A103221(p?[A038509(n+1)+2])`
-/

namespace A121765.P7178724166047405705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121765.P7178724166047405705

namespace A121765

/-- `A103221(p?[A038509(n+1)+2])` -/
def P7178724166047405705.Spec : Prop :=
  ∀ n, P7178724166047405705.a n = A121765 (n + 1)

end A121765

/-!
# A121767: Series expansion for first area weighted moment of osculating polygons on square lattice.

The programs for A121767, there is no canonical definition to state claims against.
-/

/-! ## A121767.P17567036823092699375

`A100484(C(3*n, n))%C(3*n, n)`
-/

namespace A121767.P17567036823092699375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (Nat.choose (3 * n) n)) (Nat.choose (3 * n) n : ℤ)

end

end A121767.P17567036823092699375

/-! ## A121767.P11719440335969923241

`A194200(A000009(round((4*n+3)²/12)))`
-/

namespace A121767.P11719440335969923241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194200 (A000009 (SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)).toNat).toNat

end

end A121767.P11719440335969923241

/-!
# A121768: Series expansion for second area weighted moment of osculating polygons on square lattice.

The programs for A121768, there is no canonical definition to state claims against.
-/

/-! ## A121768.P302835052172410854

`A060587(C(A287252(n), 2))`
-/

namespace A121768.P302835052172410854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (Nat.choose (A287252 n).toNat 2)

end

end A121768.P302835052172410854

/-! ## A121768.P9869486091647969276

`A057367(∑[∑[A121113(n+1)]])`
-/

namespace A121768.P9869486091647969276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121768.P9869486091647969276

/-!
# A121769: Number of neighbor-avoiding polygons of perimeter 2*n on square lattice.

The programs for A121769, there is no canonical definition to state claims against.
-/

/-! ## A121769.P12709328365688283989

`A165190(A202182(n+1)+2)`
-/

namespace A121769.P12709328365688283989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A202182 (n + 1) + 2).toNat

end

end A121769.P12709328365688283989

/-! ## A121769.P6265569891361247435

`A344108(A182631(a(n-1)-a(n-2)/(1/2-1)))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A121769.P6265569891361247435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A344108 (A182631 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) - (a (n - 2) : ℚ) / ((1 : ℚ) / 2 - 1))).toNat).toNat

end

end A121769.P6265569891361247435

/-! ## A121769.P6868131173455157566

`A006782(A112641(n)+A028310(n))`
-/

namespace A121769.P6868131173455157566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006782 (A112641 n + A028310 n).toNat

end

end A121769.P6868131173455157566

/-! ## A121769.P7074531547999093918

`A008618(A134060(n)+A129169(n))`
-/

namespace A121769.P7074531547999093918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A134060 n + A129169 n).toNat

end

end A121769.P7074531547999093918

/-!
# A121770: Series expansion for radius of gyration of osculating polygons on square lattice.

The programs for A121770, there is no canonical definition to state claims against.
-/

/-! ## A121770.P2103461062765046728

`A224665(a(n-1)-2)` with `a(0)=0, a(1)=8, a(2)=0, a(3)=96`
-/

namespace A121770.P2103461062765046728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 0, 96] fun n a =>
  A224665 (a (n - 1) - 2).toNat

end

end A121770.P2103461062765046728

/-!
# A121772: Series expansion for second area weighted moment of neighbor-avoiding polygons on square lattice.

The programs for A121772, there is no canonical definition to state claims against.
-/

/-! ## A121772.P4836357747605051349

`A335795(a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=6`
-/

namespace A121772.P4836357747605051349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 6] fun n a =>
  A335795 (a (n - 1)).toNat

end

end A121772.P4836357747605051349

/-! ## A121772.P7128366132131948368

`A128202(a(dr(n)-1)+1)+6` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A121772.P7128366132131948368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A128202 (a (SequenceMachineLib.digitalRoot (n : ℤ) - 1) + 1).toNat + 6

end

end A121772.P7128366132131948368

/-!
# A121773: Number of n-bead necklaces with n+1 colors for n>0, with a(0)=1.

The programs for A121773, there is no canonical definition to state claims against.
-/

/-! ## A121773.P2310223163757770466

`(n+1)*A121774(n)`
-/

namespace A121773.P2310223163757770466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121774 n

end

end A121773.P2310223163757770466

/-! ## A121773.P17167187716214957914

`A054630(∑[n]+round(1/acot(n)))`
-/

namespace A121773.P17167187716214957914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A121773.P17167187716214957914

/-! ## A121773.P13936011821345538479

`A054630(A212342(n+1))`
-/

namespace A121773.P13936011821345538479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (A212342 (n + 1)).toNat

end

end A121773.P13936011821345538479

/-! ## A121773.P7690601592794836299

`A054630(record[abs(A080956(n))])`
-/

namespace A121773.P7690601592794836299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080956 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121773.P7690601592794836299

/-! ## A121773.P7214903761832823158

`A054630(record[A038722(A080036(n))])`
-/

namespace A121773.P7214903761832823158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054630 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121773.P7214903761832823158

/-!
# A121774: Number of n-bead necklaces with n+1 colors, divided by (n+1), for n>0, with a(0)=1.

The programs for A121774, there is no canonical definition to state claims against.
-/

/-! ## A121774.P15705363742285695407

`A121773(n)/(n+1)`
-/

namespace A121774.P15705363742285695407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121773 n : ℚ) / (n + 1 : ℚ)

end

end A121774.P15705363742285695407

/-! ## A121774.P17263119179047303351

`A054630(A212342(n+1))/(n+1)`
-/

namespace A121774.P17263119179047303351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054630 (A212342 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A121774.P17263119179047303351

/-! ## A121774.P17739030893836266468

`round(A121773(n)/A000005(2^n))`
-/

namespace A121774.P17739030893836266468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121773 n : ℚ) / (A000005 (2 ^ n) : ℚ))

end

end A121774.P17739030893836266468

/-! ## A121774.P18209267415839051386

`A121773(n)/A000005(2^n)-A025439(n)`
-/

namespace A121774.P18209267415839051386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121773 n : ℚ) / (A000005 (2 ^ n) : ℚ) - (A025439 n : ℚ)

end

end A121774.P18209267415839051386

/-! ## A121774.P12671588280906128601

`A121773(n)/A000005(2^n)*A007318(∑[n])`
-/

namespace A121774.P12671588280906128601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121773 n : ℚ) / (A000005 (2 ^ n) : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A121774.P12671588280906128601

/-!
# A121775: T(n, k) = Sum_{d|n} phi(n/d)*binomial(d,k) for n>0, T(0, 0) = 1. Triangle read by rows, for 0 <= k <= n.

The programs for A121775, there is no canonical definition to state claims against.
-/

/-! ## A121775.P4458433555088877332

`A373503(A236471(n))`
-/

namespace A121775.P4458433555088877332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373503 (A236471 n).toNat

end

end A121775.P4458433555088877332

/-! ## A121775.P1999359644000571769

`A117707(2*A214978(n+1))`
-/

namespace A121775.P1999359644000571769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (2 * A214978 (n + 1)).toNat

end

end A121775.P1999359644000571769

/-! ## A121775.P12963645389748781086

`A163352(2*A214978(n+1))`
-/

namespace A121775.P12963645389748781086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (2 * A214978 (n + 1)).toNat

end

end A121775.P12963645389748781086

/-! ## A121775.P5090488500293983948

`A043545(A060628(n))+A035317(n+1)`
-/

namespace A121775.P5090488500293983948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A060628 n).toNat + A035317 (n + 1)

end

end A121775.P5090488500293983948

/-!
# A121776: Antidiagonal sums of triangle A121775.

The programs for A121776, there is no canonical definition to state claims against.
-/

/-! ## A121776.P4794742578425577854

`A024317(A316983(n+4)-A008812(n))`
-/

namespace A121776.P4794742578425577854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A316983 (n + 4) - A008812 n).toNat

end

end A121776.P4794742578425577854

/-! ## A121776.P8932156188455298639

`A098151(n)-A010051(A000110(n+1))`
-/

namespace A121776.P8932156188455298639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n - A010051 (A000110 (n + 1)).toNat

end

end A121776.P8932156188455298639

/-! ## A121776.P5988244410545827260

`A238007(2*n+3)-A121373(A373576(n+1))`
-/

namespace A121776.P5988244410545827260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238007 (2 * n + 3) - A121373 (A373576 (n + 1)).toNat

end

end A121776.P5988244410545827260

/-! ## A121776.P14419278642185425451

`A053197(2*n+3)-A053230(A053189(n+5))`
-/

namespace A121776.P14419278642185425451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 (2 * n + 3) - A053230 (A053189 (n + 5)).toNat

end

end A121776.P14419278642185425451

/-!
# A121777: Series expansion for mean-squared radius of gyration of convex polygons on square lattice.

The programs for A121777, there is no canonical definition to state claims against.
-/

/-! ## A121777.P7597012602286744750

`A109043(n)*A186220(A297425(n+1))`
-/

namespace A121777.P7597012602286744750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n * A186220 (A297425 (n + 1)).toNat

end

end A121777.P7597012602286744750

/-!
# A121780: Series expansion for mean-squared radius of gyration of stack polygons on square lattice.

The programs for A121780, there is no canonical definition to state claims against.
-/

/-! ## A121780.P11353432956342833133

`xor(A054076(A016218(n)), A328372(n+1))`
-/

namespace A121780.P11353432956342833133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054076 (A016218 n).toNat) (A328372 (n + 1))

end

end A121780.P11353432956342833133

/-!
# A121781: Series expansion for mean-squared radius of gyration of Ferrers diagrams on square lattice.

The programs for A121781, there is no canonical definition to state claims against.
-/

/-! ## A121781.P9965663243225349017

`A004524(A014972(n)+A002110(n))`
-/

namespace A121781.P9965663243225349017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A014972 n + A002110 n).toNat

end

end A121781.P9965663243225349017

/-!
# A121782: Series expansion for mean-squared radius of gyration of rectangles on square lattice.

The programs for A121782, the canonical program `A121782.P15376620357728804440` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121782 has offset 1).

The definition of A121782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121782.P15376620357728804440

`∑[∑[4*n]+2]*∑[n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121782

/-- `∑[∑[4*n]+2]*∑[n]` -/
def P15376620357728804440.Spec : Prop :=
  ∀ n, (P15376620357728804440.a n : ℤ) = A121782 (n + 1)

theorem P15376620357728804440.correct : P15376620357728804440.Spec := by
  intro n
  simp only [A121782, Nat.add_sub_cancel]

end A121782

/-! ## A121782.P13276107796091674729

`∑[4*n]*A167875(n)/2`
-/

namespace A121782.P13276107796091674729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A167875 n : ℚ) / 2

end

end A121782.P13276107796091674729

namespace A121782

/-- `∑[4*n]*A167875(n)/2` -/
def P13276107796091674729.Spec : Prop :=
  ∀ n, P13276107796091674729.a n = (A121782 (n + 1) : ℚ)

end A121782

/-! ## A121782.P8353855565427136505

`abs((n-2*n)*A014820(n))`
-/

namespace A121782.P8353855565427136505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (2 * n : ℤ)) * A014820 n|

end

end A121782.P8353855565427136505

namespace A121782

/-- `abs((n-2*n)*A014820(n))` -/
def P8353855565427136505.Spec : Prop :=
  ∀ n, P8353855565427136505.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P17639467098194849688

`A005843(n)*A014820(n)/2`
-/

namespace A121782.P17639467098194849688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A014820 n : ℚ) / 2

end

end A121782.P17639467098194849688

namespace A121782

/-- `A005843(n)*A014820(n)/2` -/
def P17639467098194849688.Spec : Prop :=
  ∀ n, P17639467098194849688.a n = (A121782 (n + 1) : ℚ)

end A121782

/-! ## A121782.P15338558624035252079

`n*A066804(n+1)-A008911(n)`
-/

namespace A121782.P15338558624035252079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066804 (n + 1) - A008911 n

end

end A121782.P15338558624035252079

namespace A121782

/-- `n*A066804(n+1)-A008911(n)` -/
def P15338558624035252079.Spec : Prop :=
  ∀ n, P15338558624035252079.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P1083925046526850136

`A002061(n+1)*A167875(n)-A167875(n)`
-/

namespace A121782.P1083925046526850136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A167875 n - A167875 n

end

end A121782.P1083925046526850136

namespace A121782

/-- `A002061(n+1)*A167875(n)-A167875(n)` -/
def P1083925046526850136.Spec : Prop :=
  ∀ n, P1083925046526850136.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P10977403247264481097

`A072819(n+1)+(n+1)²*A007290(n+1)`
-/

namespace A121782.P10977403247264481097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + ((n + 1) ^ 2 : ℤ) * A007290 (n + 1)

end

end A121782.P10977403247264481097

namespace A121782

/-- `A072819(n+1)+(n+1)²*A007290(n+1)` -/
def P10977403247264481097.Spec : Prop :=
  ∀ n, P10977403247264481097.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P12172208045870699700

`A002061(n+1)*A006527(n+1)-A006527(n+1)`
-/

namespace A121782.P12172208045870699700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A006527 (n + 1) - A006527 (n + 1)

end

end A121782.P12172208045870699700

namespace A121782

/-- `A002061(n+1)*A006527(n+1)-A006527(n+1)` -/
def P12172208045870699700.Spec : Prop :=
  ∀ n, P12172208045870699700.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P6830290636106164520

`record[A131174(n)*A159693(n+1)]`
-/

namespace A121782.P6830290636106164520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 n * A159693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121782.P6830290636106164520

namespace A121782

/-- `record[A131174(n)*A159693(n+1)]` -/
def P6830290636106164520.Spec : Prop :=
  ∀ n, P6830290636106164520.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P18228666614921309014

`record[A083392(n)*A208971(n+1)]`
-/

namespace A121782.P18228666614921309014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n * A208971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121782.P18228666614921309014

namespace A121782

/-- `record[A083392(n)*A208971(n+1)]` -/
def P18228666614921309014.Spec : Prop :=
  ∀ n, P18228666614921309014.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P2395550159024235187

`record[A110514(n)*A227327(n+1)]`
-/

namespace A121782.P2395550159024235187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n * A227327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121782.P2395550159024235187

namespace A121782

/-- `record[A110514(n)*A227327(n+1)]` -/
def P2395550159024235187.Spec : Prop :=
  ∀ n, P2395550159024235187.a n = A121782 (n + 1)

end A121782

/-! ## A121782.P692711933428092060

`(n*A014820(n))%A002802(n)`
-/

namespace A121782.P692711933428092060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A014820 n) (A002802 n)

end

end A121782.P692711933428092060

namespace A121782

/-- `(n*A014820(n))%A002802(n)` -/
def P692711933428092060.Spec : Prop :=
  ∀ n, P692711933428092060.a n = A121782 (n + 1)

end A121782

/-!
# A121787: "Crossing walks hitting the center" on the square lattice (see Jensen web site for further information).

The programs for A121787, there is no canonical definition to state claims against.
-/

/-! ## A121787.P1593432866331077275

`A333685(∑[n]+n)`
-/

namespace A121787.P1593432866331077275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A121787.P1593432866331077275

/-!
# A121788: "Crossing Hamiltonian walks" on the square lattice (see Jensen web site for further information).

The programs for A121788, there is no canonical definition to state claims against.
-/

/-! ## A121788.P4592844971861062310

`A333520(∑[A080827(n+1)]+1)`
-/

namespace A121788.P4592844971861062310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333520 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A121788.P4592844971861062310

/-! ## A121788.P13488930359959000134

`A333520(lt[A333668(n+2), n])`
-/

namespace A121788.P13488930359959000134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333668 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333520 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121788.P13488930359959000134

/-!
# A121789: "Spanning Hamiltonian walks" on the square lattice (see Jensen web site for further information).

The programs for A121789, there is no canonical definition to state claims against.
-/

/-! ## A121789.P11480355162757367727

`A333571(2*(n+1)²+1)`
-/

namespace A121789.P11480355162757367727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333571 (2 * (n + 1) ^ 2 + 1)

end

end A121789.P11480355162757367727

/-!
# A121795: Expansion of -x*(x+1)^2*(x^8-2*x^7+2*x^6-3*x^5+3*x^4+2*x^2-x+1) / (x^12+6*x^6-1).

The programs for A121795, the canonical program `A121795.P8407811510875455720` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121795 has offset 1).

The definition of A121795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+3x^3+5x^4+3x^5-x^6-x^7-x^8+x^10)/(1-6x^6-x^12))` (program `A121795.P8407811510875455720`, by `A121795.P8407811510875455720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121795.P8407811510875455720

`ogf((1+x+x^2+3x^3+5x^4+3x^5-x^6-x^7-x^8+x^10)/(1-6x^6-x^12))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121795

/-- `ogf((1+x+x^2+3x^3+5x^4+3x^5-x^6-x^7-x^8+x^10)/(1-6x^6-x^12))` -/
def P8407811510875455720.Spec : Prop :=
  ∀ n, P8407811510875455720.a n = A121795 (n + 1)

theorem P8407811510875455720.correct : P8407811510875455720.Spec := by
  intro n
  simp only [A121795, Nat.add_sub_cancel]

end A121795

/-!
# A121796: This sequence needs a meaningful name.

The programs for A121796, there is no canonical definition to state claims against.
-/

/-! ## A121796.P10877516985660895570

`A231348(a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A121796.P10877516985660895570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A231348 (a (n - 1)).toNat - 1

end

end A121796.P10877516985660895570

/-!
# A121797: Number of dissimilar forests on n nodes.

The programs for A121797, there is no canonical definition to state claims against.
-/

/-! ## A121797.P16915393587119760492

`or(A008292(n+1), A127757(A101879(n)))`
-/

namespace A121797.P16915393587119760492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008292 (n + 1)) (A127757 (A101879 n).toNat)

end

end A121797.P16915393587119760492

/-! ## A121797.P16809026438027840901

`or(A002266(A005028(n+3)), A222119(n+1))`
-/

namespace A121797.P16809026438027840901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002266 (A005028 (n + 3)).toNat) (A222119 (n + 1))

end

end A121797.P16809026438027840901

/-! ## A121797.P8268428859408305527

`A032974(A003056(n!))`
-/

namespace A121797.P8268428859408305527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032974 (A003056 (Nat.factorial n)).toNat

end

end A121797.P8268428859408305527

/-!
# A121799: Values of k from A061092.

The programs for A121799, there is no canonical definition to state claims against.
-/

/-! ## A121799.P12480532076738579214

`(A061092(n+1)-1)/A061092(n)`
-/

namespace A121799.P12480532076738579214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061092 (n + 1) - 1 : ℚ) / (A061092 n : ℚ)

end

end A121799.P12480532076738579214

/-! ## A121799.P14393919686407403001

`ceil(ratio[A061092(n)])-1`
-/

namespace A121799.P14393919686407403001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A121799.P14393919686407403001

/-! ## A121799.P7484125470100921665

`floor(ratio[A061092(A028310(n))])`
-/

namespace A121799.P7484125470100921665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A121799.P7484125470100921665

/-! ## A121799.P8723068017773057482

`floor(ratio[A061092(A000007(n)+n)])`
-/

namespace A121799.P8723068017773057482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A121799.P8723068017773057482

/-! ## A121799.P13038530620501621123

`floor(ratio[A061092(A151909(n)+n)])`
-/

namespace A121799.P13038530620501621123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 (A151909 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A121799.P13038530620501621123

/-! ## A121799.P11871401582956898797

`floor(ratio[A061092(n)]-A000007(n))`
-/

namespace A121799.P11871401582956898797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A000007 n : ℚ)⌋

end

end A121799.P11871401582956898797

/-! ## A121799.P1885793564274405362

`floor(ratio[A061092(n)]-A151909(n))`
-/

namespace A121799.P1885793564274405362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A151909 n : ℚ)⌋

end

end A121799.P1885793564274405362

/-! ## A121799.P2674395361286672765

`floor(ratio[A061092(n^A178334(n))])`
-/

namespace A121799.P2674395361286672765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061092 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A121799.P2674395361286672765

