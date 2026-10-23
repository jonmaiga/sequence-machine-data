import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C001
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

/-!
# A202502: Modified lower triangular Fibonacci matrix, by antidiagonals.

The programs for A202502, there is no canonical definition to state claims against.
-/

/-! ## A202502.P2992527747361347062

`A202451(comp[ceil(n²/2)])`
-/

namespace A202502.P2992527747361347062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A202502.P2992527747361347062

/-! ## A202502.P15881580279264920614

`A079977(A253146(n+1)+1)`
-/

namespace A202502.P15881580279264920614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A253146 (n + 1) + 1).toNat

end

end A202502.P15881580279264920614

/-! ## A202502.P8736201462055472641

`A027926(2*(n+1))*A101688(n)`
-/

namespace A202502.P8736201462055472641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (2 * (n + 1)) * A101688 n

end

end A202502.P8736201462055472641

/-! ## A202502.P28025827300695142

`A202451(n+1)+A202451(comp[∑[n]])`
-/

namespace A202502.P28025827300695142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (n + 1) + A202451 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A202502.P28025827300695142

/-! ## A202502.P11463134891300381761

`A000045(ceil(sqrt(8*(n+1)))%2*A130517(n+2))`
-/

namespace A202502.P11463134891300381761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A130517 (n + 2)).toNat

end

end A202502.P11463134891300381761

/-! ## A202502.P5383867282480203036

`A000045(C(A130517(n+2), abs(round(sqrt(2*(n+1)))²-(2*n+1))+1))`
-/

namespace A202502.P5383867282480203036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (A130517 (n + 2)).toNat (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat)

end

end A202502.P5383867282480203036

/-! ## A202502.P15720352376253509378

`A000045((A143182(n)+1)*A101688(n))`
-/

namespace A202502.P15720352376253509378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A143182 n + 1) * A101688 n).toNat

end

end A202502.P15720352376253509378

/-! ## A202502.P2541439008121116585

`A053602(A253146(n+1))*A101688(n)`
-/

namespace A202502.P2541439008121116585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A253146 (n + 1)).toNat * A101688 n

end

end A202502.P2541439008121116585

/-! ## A202502.P10633163795766175632

`lcm(A053602(A253146(n+1)), A187034(n))`
-/

namespace A202502.P10633163795766175632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053602 (A253146 (n + 1)).toNat) (A187034 n)

end

end A202502.P10633163795766175632

/-! ## A202502.P17816607746597945174

`A053602(A187034(n)²*A253146(n+1))`
-/

namespace A202502.P17816607746597945174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A187034 n ^ 2 * A253146 (n + 1)).toNat

end

end A202502.P17816607746597945174

/-!
# A202504: Number of zero-sum -1..1 arrays of n elements with first through third differences also in -1..1.

The programs for A202504, there is no canonical definition to state claims against.
-/

/-! ## A202504.P2508274683883614682

`A202511(∑[n+1])`
-/

namespace A202504.P2508274683883614682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202504.P2508274683883614682

/-! ## A202504.P9719800067225859357

`or(1, A202511(A000217(n+1)))`
-/

namespace A202504.P9719800067225859357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202511 (A000217 (n + 1)).toNat)

end

end A202504.P9719800067225859357

/-! ## A202504.P8720932979842385220

`A000027(A202511(∑[comp[2*n]-n]))`
-/

namespace A202504.P8720932979842385220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A202511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A202504.P8720932979842385220

/-! ## A202504.P10721538321743762203

`A202511(∑[-xor(n, -1)])%A016936(n)`
-/

namespace A202504.P10721538321743762203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A016936 n)

end

end A202504.P10721538321743762203

/-! ## A202504.P4616661490960165904

`A202511(A000217(n+1))+A008683(8*(n+1))`
-/

namespace A202504.P4616661490960165904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000217 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A202504.P4616661490960165904

/-!
# A202505: Number of zero-sum -2..2 arrays of n elements with first through third differences also in -2..2.

The programs for A202505, there is no canonical definition to state claims against.
-/

/-! ## A202505.P5137903619934929893

`A202511(∑[n+2])`
-/

namespace A202505.P5137903619934929893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A202505.P5137903619934929893

/-! ## A202505.P8113427424924814423

`record[A202511(A000096(A116549(n)))]`
-/

namespace A202505.P8113427424924814423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202505.P8113427424924814423

/-! ## A202505.P15528554478715498149

`record[A202511(A000096(A133310(n)))]`
-/

namespace A202505.P15528554478715498149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202505.P15528554478715498149

/-! ## A202505.P18102015804296464890

`record[A202511(A000096(A003963(n+1)))]`
-/

namespace A202505.P18102015804296464890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202505.P18102015804296464890

/-! ## A202505.P15704896751114459681

`record[A202511(A000096(A026350(n+1)))]`
-/

namespace A202505.P15704896751114459681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (A026350 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202505.P15704896751114459681

/-!
# A202506: Number of zero-sum -3..3 arrays of n elements with first through third differences also in -3..3.

The programs for A202506, there is no canonical definition to state claims against.
-/

/-! ## A202506.P36325029735264885

`A202511(∑[n+3]+1)`
-/

namespace A202506.P36325029735264885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202506.P36325029735264885

/-! ## A202506.P257205296603702747

`record[A202511(eq[1, A004197(n)])]`
-/

namespace A202506.P257205296603702747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202506.P257205296603702747

/-! ## A202506.P2472082328546115394

`or(1, A202511(A034856(n+2)))`
-/

namespace A202506.P2472082328546115394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202511 (A034856 (n + 2)).toNat)

end

end A202506.P2472082328546115394

/-! ## A202506.P1034483056054706634

`or(1, A202511(A000124(n+3)-3))`
-/

namespace A202506.P1034483056054706634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202511 (A000124 (n + 3) - 3).toNat)

end

end A202506.P1034483056054706634

/-! ## A202506.P1547462972120839529

`A202511(A034856(n+2))%A000108(n+3)`
-/

namespace A202506.P1547462972120839529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202511 (A034856 (n + 2)).toNat) (A000108 (n + 3))

end

end A202506.P1547462972120839529

/-!
# A202507: Number of zero-sum -4..4 arrays of n elements with first through third differences also in -4..4.

The programs for A202507, there is no canonical definition to state claims against.
-/

/-! ## A202507.P18049908551549220516

`A202511(A027379(n+2))`
-/

namespace A202507.P18049908551549220516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A027379 (n + 2)).toNat

end

end A202507.P18049908551549220516

/-! ## A202507.P95490246683112723

`A202511(A055998(n+2))`
-/

namespace A202507.P95490246683112723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A055998 (n + 2)).toNat

end

end A202507.P95490246683112723

/-! ## A202507.P14207718924093732471

`A202511(A155212(n)+5)`
-/

namespace A202507.P14207718924093732471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A155212 n + 5).toNat

end

end A202507.P14207718924093732471

/-! ## A202507.P8560508168392129800

`A202511(A052905(n+1)+2)`
-/

namespace A202507.P8560508168392129800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A052905 (n + 1) + 2).toNat

end

end A202507.P8560508168392129800

/-! ## A202507.P13523123063287079152

`A202511(A167614(n+1)+2*n+1)`
-/

namespace A202507.P13523123063287079152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A202507.P13523123063287079152

/-!
# A202508: Number of zero-sum -5..5 arrays of n elements with first through third differences also in -5..5.

The programs for A202508, there is no canonical definition to state claims against.
-/

/-! ## A202508.P8501584738096691771

`A202511(A046691(n+3))`
-/

namespace A202508.P8501584738096691771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A046691 (n + 3)).toNat

end

end A202508.P8501584738096691771

/-! ## A202508.P10836798971733567947

`A202511(Δ[A023545(n+1)])`
-/

namespace A202508.P10836798971733567947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (f1 (n + 1) - f1 n).toNat

end

end A202508.P10836798971733567947

/-! ## A202508.P1697490055293009057

`A202511(A000124(n+5)-5)`
-/

namespace A202508.P1697490055293009057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000124 (n + 5) - 5).toNat

end

end A202508.P1697490055293009057

/-! ## A202508.P6269224701971302578

`record[A202511(eq[2, A004197(n+1)])]`
-/

namespace A202508.P6269224701971302578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202508.P6269224701971302578

/-! ## A202508.P11514270588966804337

`A202511(eq[11, A345530(n+1)-1])`
-/

namespace A202508.P11514270588966804337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345530 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202508.P11514270588966804337

/-!
# A202509: Number of zero-sum -6..6 arrays of n elements with first through third differences also in -6..6.

The programs for A202509, there is no canonical definition to state claims against.
-/

/-! ## A202509.P17274779362046993331

`A202511(∑[A020715(n)]+10)`
-/

namespace A202509.P17274779362046993331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A202509.P17274779362046993331

/-! ## A202509.P6063407834689535104

`A202511(A000217(n+6)-5)`
-/

namespace A202509.P6063407834689535104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000217 (n + 6) - 5).toNat

end

end A202509.P6063407834689535104

/-! ## A202509.P2682173624774458408

`A202511(A000124(n+6)-6)`
-/

namespace A202509.P2682173624774458408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000124 (n + 6) - 6).toNat

end

end A202509.P2682173624774458408

/-! ## A202509.P3606941509820137048

`A202511(Δ[Δ[A006504(n+1)]])`
-/

namespace A202509.P3606941509820137048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (f1 (n + 1) - f1 n).toNat

end

end A202509.P3606941509820137048

/-! ## A202509.P749749564116094157

`A202511(Δ[A023545(n+2)]-1)`
-/

namespace A202509.P749749564116094157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (f1 (n + 1) - f1 n - 1).toNat

end

end A202509.P749749564116094157

/-!
# A202510: Number of zero-sum -7..7 arrays of n elements with first through third differences also in -7..7.

The programs for A202510, there is no canonical definition to state claims against.
-/

/-! ## A202510.P3270615147915702529

`A202511(A055999(n+4))`
-/

namespace A202510.P3270615147915702529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A055999 (n + 4)).toNat

end

end A202510.P3270615147915702529

/-! ## A202510.P10602727502030036718

`A202511(A000096(n+6)-5)`
-/

namespace A202510.P10602727502030036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (n + 6) - 5).toNat

end

end A202510.P10602727502030036718

/-! ## A202510.P5168988305898402991

`A202511(A000124(n+7)-7)`
-/

namespace A202510.P5168988305898402991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000124 (n + 7) - 7).toNat

end

end A202510.P5168988305898402991

/-! ## A202510.P1950288657304808520

`A202511(A000217(n+6)+n+1)`
-/

namespace A202510.P1950288657304808520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A202510.P1950288657304808520

/-! ## A202510.P13623047377947281233

`A202511(A055998(n+6)-(n+11))`
-/

namespace A202510.P13623047377947281233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A055998 (n + 6) - (n + 11 : ℤ)).toNat

end

end A202510.P13623047377947281233

/-!
# A202511: T(n,k)=Number of zero-sum -k..k arrays of n elements with first through third differences also in -k..k.

The programs for A202511, there is no canonical definition to state claims against.
-/

/-! ## A202511.P8000627701427244556

`A201439(n+1)%A258693(n)`
-/

namespace A202511.P8000627701427244556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201439 (n + 1)) (A258693 n)

end

end A202511.P8000627701427244556

/-! ## A202511.P12699849654994893499

`gcd(A144098(n+1), A201439(n+1))`
-/

namespace A202511.P12699849654994893499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144098 (n + 1)) (A201439 (n + 1))

end

end A202511.P12699849654994893499

/-! ## A202511.P8284572915696184172

`A201439(-xor(n, -1))%A364149(2*n+2)`
-/

namespace A202511.P8284572915696184172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201439 (-Int.xor (n : ℤ) (-1)).toNat) (A364149 (2 * n + 2))

end

end A202511.P8284572915696184172

/-! ## A202511.P10891038221111850550

`A335462(A214080(n))+A201439(n+1)`
-/

namespace A202511.P10891038221111850550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A214080 n).toNat + A201439 (n + 1)

end

end A202511.P10891038221111850550

/-! ## A202511.P10889707372923660768

`A201439(n+1)+A000007(A000070(n+1))`
-/

namespace A202511.P10889707372923660768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (n + 1) + A000007 (A000070 (n + 1)).toNat

end

end A202511.P10889707372923660768

/-!
# A202512: Number of zero-sum -n..n arrays of 4 elements with first through third differences also in -n..n.

The programs for A202512, there is no canonical definition to state claims against.
-/

/-! ## A202512.P15939445389626182422

`A202511(A052905(n)+9)`
-/

namespace A202512.P15939445389626182422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A052905 n + 9).toNat

end

end A202512.P15939445389626182422

/-! ## A202512.P4245289174924625881

`A202511(A055999(n)+10)`
-/

namespace A202512.P4245289174924625881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A055999 n + 10).toNat

end

end A202512.P4245289174924625881

/-! ## A202512.P14406275536045468461

`A202511(A167614(n+2)+1)`
-/

namespace A202512.P14406275536045468461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167614 (n + 2) + 1).toNat

end

end A202512.P14406275536045468461

/-! ## A202512.P8139706803271157816

`A202511(A166136(n+2)-2)`
-/

namespace A202512.P8139706803271157816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A166136 (n + 2) - 2).toNat

end

end A202512.P8139706803271157816

/-! ## A202512.P7404665382653535414

`A202511(A167487(n+2)-3)`
-/

namespace A202512.P7404665382653535414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167487 (n + 2) - 3).toNat

end

end A202512.P7404665382653535414

/-!
# A202513: Number of zero-sum -n..n arrays of 5 elements with first through third differences also in -n..n.

The programs for A202513, there is no canonical definition to state claims against.
-/

/-! ## A202513.P11013182488847160261

`A202511(A167499(n+3))`
-/

namespace A202513.P11013182488847160261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167499 (n + 3)).toNat

end

end A202513.P11013182488847160261

/-! ## A202513.P5904489426339011171

`A202511(A155212(n)+13)`
-/

namespace A202513.P5904489426339011171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A155212 n + 13).toNat

end

end A202513.P5904489426339011171

/-! ## A202513.P1114834524150726237

`A202511(A167614(n+3)+2)`
-/

namespace A202513.P1114834524150726237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167614 (n + 3) + 2).toNat

end

end A202513.P1114834524150726237

/-! ## A202513.P14772369311862348727

`A202511(A052905(n+1)+10)`
-/

namespace A202513.P14772369311862348727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A052905 (n + 1) + 10).toNat

end

end A202513.P14772369311862348727

/-! ## A202513.P2747245772572465663

`A202511(A000124(n+5)-(n+1))`
-/

namespace A202513.P2747245772572465663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A202513.P2747245772572465663

/-!
# A202514: Number of zero-sum -n..n arrays of 6 elements with first through third differences also in -n..n.

The programs for A202514, there is no canonical definition to state claims against.
-/

/-! ## A202514.P9109816842861984401

`A202511(A166136(n+4))`
-/

namespace A202514.P9109816842861984401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A166136 (n + 4)).toNat

end

end A202514.P9109816842861984401

/-! ## A202514.P14731646710126414037

`A202511(A167499(n+4)+1)`
-/

namespace A202514.P14731646710126414037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167499 (n + 4) + 1).toNat

end

end A202514.P14731646710126414037

/-! ## A202514.P13806808151015383991

`A202511(A000124(n+5)+5)`
-/

namespace A202514.P13806808151015383991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000124 (n + 5) + 5).toNat

end

end A202514.P13806808151015383991

/-! ## A202514.P9470716502597431919

`A202511(A000217(n+5)+6)`
-/

namespace A202514.P9470716502597431919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000217 (n + 5) + 6).toNat

end

end A202514.P9470716502597431919

/-! ## A202514.P3600330322284568339

`A202511(A046691(n+3)+10)`
-/

namespace A202514.P3600330322284568339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A046691 (n + 3) + 10).toNat

end

end A202514.P3600330322284568339

/-!
# A202515: Number of zero-sum -n..n arrays of 7 elements with first through third differences also in -n..n.

The programs for A202515, there is no canonical definition to state claims against.
-/

/-! ## A202515.P2209652203763618820

`A202511(A167487(n+5))`
-/

namespace A202515.P2209652203763618820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167487 (n + 5)).toNat

end

end A202515.P2209652203763618820

/-! ## A202515.P3837576359126902698

`A202511(A167499(n+5)+2)`
-/

namespace A202515.P3837576359126902698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A167499 (n + 5) + 2).toNat

end

end A202515.P3837576359126902698

/-! ## A202515.P4450308583441314363

`A202511(A000096(n+5)+8)`
-/

namespace A202515.P4450308583441314363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000096 (n + 5) + 8).toNat

end

end A202515.P4450308583441314363

/-! ## A202515.P13517318313428914470

`A202511(A000217(n+6)+7)`
-/

namespace A202515.P13517318313428914470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A000217 (n + 6) + 7).toNat

end

end A202515.P13517318313428914470

/-! ## A202515.P16283220680418967917

`A202511(A005408(n+8)+A000124(n+4))`
-/

namespace A202515.P16283220680418967917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202511 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A202515.P16283220680418967917

/-!
# A202518: G.f. satisfies: A(x) = exp( Sum_{n>=1} (2^n - A(x))^n * x^n/n ).

The programs for A202518, there is no canonical definition to state claims against.
-/

/-! ## A202518.P12483079891227728264

`A227210(A198957(n))-A198957(n)`
-/

namespace A202518.P12483079891227728264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227210 (A198957 n).toNat - A198957 n

end

end A202518.P12483079891227728264

/-!
# A202519: G.f. satisfies: A(x) = exp( Sum_{n>=1} (2*A(x) + (-1)^n)^n * x^n/n ).

The programs for A202519, there is no canonical definition to state claims against.
-/

/-! ## A202519.P17900255589478293804

`A118259(A001906(n)+A352982(n)²)`
-/

namespace A202519.P17900255589478293804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118259 (A001906 n + A352982 n ^ 2).toNat

end

end A202519.P17900255589478293804

/-! ## A202519.P9853834466629522890

`A162220(A353873(n+1)+A000351(n))`
-/

namespace A202519.P9853834466629522890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162220 (A353873 (n + 1) + A000351 n).toNat

end

end A202519.P9853834466629522890

/-!
# A202520: Denominator of [x^(4n+2)] in the Taylor series log(cosec(x)*sinh(x)).

The programs for A202520, there is no canonical definition to state claims against.
-/

/-! ## A202520.P1857153743167628342

`A285863(2*n+1)+A046989(2*n+1)`
-/

namespace A202520.P1857153743167628342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285863 (2 * n + 1) + A046989 (2 * n + 1)

end

end A202520.P1857153743167628342

/-! ## A202520.P1207934875091980263

`A046989(2*n+1)/A027642(2*n+1)`
-/

namespace A202520.P1207934875091980263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046989 (2 * n + 1) : ℚ) / (A027642 (2 * n + 1) : ℚ)

end

end A202520.P1207934875091980263

/-!
# A202523: Number of partitions of n into distinct parts having pairwise prime GCDs but no overall common factor.

The programs for A202523, there is no canonical definition to state claims against.
-/

/-! ## A202523.P5591263860961750562

`A030341((A284825(n)^A002487(n))²)`
-/

namespace A202523.P5591263860961750562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (SequenceMachineLib.roundAway (((A284825 (n + 31) : ℚ) ^ (A002487 n : ℤ)) ^ 2)).toNat

end

end A202523.P5591263860961750562

/-! ## A202523.P9196206780823947795

`A302243(A284825(n)^A275024(n+1))`
-/

namespace A202523.P9196206780823947795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (SequenceMachineLib.roundAway ((A284825 (n + 31) : ℚ) ^ (A275024 (n + 1) : ℤ))).toNat

end

end A202523.P9196206780823947795

/-! ## A202523.P9037701018388838815

`A284557(A284825(n)^(A125057(n+1)-1))`
-/

namespace A202523.P9037701018388838815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284557 (SequenceMachineLib.roundAway ((A284825 (n + 31) : ℚ) ^ (A125057 (n + 1) - 1 : ℤ))).toNat

end

end A202523.P9037701018388838815

/-! ## A202523.P7091435270698997340

`A050673(n+1)%(A284825(n)+1)`
-/

namespace A202523.P7091435270698997340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050673 (n + 1)) (A284825 (n + 31) + 1)

end

end A202523.P7091435270698997340

/-! ## A202523.P12454380457502975498

`A165092(A284825(n)^A278222(n))`
-/

namespace A202523.P12454380457502975498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 (SequenceMachineLib.roundAway ((A284825 (n + 31) : ℚ) ^ (A278222 n : ℤ))).toNat

end

end A202523.P12454380457502975498

/-!
# A202524: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202524, there is no canonical definition to state claims against.
-/

/-! ## A202524.P15874688124792234510

`A202532(∑[4*n]+1)`
-/

namespace A202524.P15874688124792234510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202524.P15874688124792234510

/-! ## A202524.P12517742031755122386

`record[A202532(A330613(n+1))]`
-/

namespace A202524.P12517742031755122386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202524.P12517742031755122386

/-! ## A202524.P11347205440577751228

`A202532(A001844(n))+char[19]`
-/

namespace A202524.P11347205440577751228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202524.P11347205440577751228

/-! ## A202524.P15052446340733576818

`record[A003982(n)*A202532(n+1)]`
-/

namespace A202524.P15052446340733576818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A202532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202524.P15052446340733576818

/-! ## A202524.P11635956296427854713

`A212619(n+1)+A202532(A001844(n))`
-/

namespace A202524.P11635956296427854713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A202532 (A001844 n).toNat

end

end A202524.P11635956296427854713

/-!
# A202525: Number of (n+2) X 3 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202525, there is no canonical definition to state claims against.
-/

/-! ## A202525.P6213497004177306224

`A202532(∑[n]+1)`
-/

namespace A202525.P6213497004177306224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202525.P6213497004177306224

/-! ## A202525.P4253379962251715100

`and(-1, A202532(A000124(n)))`
-/

namespace A202525.P4253379962251715100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A202532 (A000124 n).toNat)

end

end A202525.P4253379962251715100

/-! ## A202525.P7881749455860788213

`record[A202532(A056534(n+1))]`
-/

namespace A202525.P7881749455860788213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202525.P7881749455860788213

/-! ## A202525.P9997057754585710362

`record[A202532(A286235(n+1))]`
-/

namespace A202525.P9997057754585710362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202525.P9997057754585710362

/-! ## A202525.P16168661259694619645

`record[A202532(C(A025811(n), 2)+1)]`
-/

namespace A202525.P16168661259694619645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (Nat.choose (A025811 n).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202525.P16168661259694619645

/-!
# A202526: Number of (n+2) X 4 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202526, there is no canonical definition to state claims against.
-/

/-! ## A202526.P15499387184952873101

`A202532(∑[n+1]+2)`
-/

namespace A202526.P15499387184952873101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202526.P15499387184952873101

/-! ## A202526.P11539298502860916868

`record[A202532(A286235(n+1)+1)]`
-/

namespace A202526.P11539298502860916868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202526.P11539298502860916868

/-! ## A202526.P3965379383913123730

`record[A202532(n+3)/A053122(n)]`
-/

namespace A202526.P3965379383913123730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202532 (n + 3) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202526.P3965379383913123730

/-! ## A202526.P11290244772107098311

`record[A202532(Δ[A003453(n+5)])]`
-/

namespace A202526.P11290244772107098311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202526.P11290244772107098311

/-! ## A202526.P4635792017787243623

`A202532(A055998(n)+2)+char[34]`
-/

namespace A202526.P4635792017787243623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A055998 n + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202526.P4635792017787243623

/-!
# A202527: Number of (n+2) X 5 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202527, there is no canonical definition to state claims against.
-/

/-! ## A202527.P4402689003847454462

`A202532(∑[n+2]+4)`
-/

namespace A202527.P4402689003847454462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202527.P4402689003847454462

/-! ## A202527.P9382302466309811263

`and(-1, A202532(A167614(n+1)))`
-/

namespace A202527.P9382302466309811263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A202532 (A167614 (n + 1)).toNat)

end

end A202527.P9382302466309811263

/-! ## A202527.P6585275655671841134

`A202532(A046691(n)+7)+(2*n)%2`
-/

namespace A202527.P6585275655671841134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A046691 n + 7).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A202527.P6585275655671841134

/-! ## A202527.P2673540423631473814

`A202532(A167614(n+1))+A011742(n)`
-/

namespace A202527.P2673540423631473814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167614 (n + 1)).toNat + A011742 n

end

end A202527.P2673540423631473814

/-! ## A202527.P4026098498101673698

`A202532(A167614(n+1))+A137579(n)`
-/

namespace A202527.P4026098498101673698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167614 (n + 1)).toNat + A137579 n

end

end A202527.P4026098498101673698

/-!
# A202528: Number of (n+2) X 6 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202528, there is no canonical definition to state claims against.
-/

/-! ## A202528.P11994467824891434335

`A202532(∑[n+3]+7)`
-/

namespace A202528.P11994467824891434335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202528.P11994467824891434335

/-! ## A202528.P3236411806673673935

`A202532(A052905(n)+9)+char[24]`
-/

namespace A202528.P3236411806673673935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202528.P3236411806673673935

/-! ## A202528.P9687003323497561428

`or(char[2], A202532(A167614(n+2)+1))`
-/

namespace A202528.P9687003323497561428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202532 (A167614 (n + 2) + 1).toNat)

end

end A202528.P9687003323497561428

/-! ## A202528.P15143081748667032270

`A007318(C(2, n))*A202532(A167614(n+2)+1)`
-/

namespace A202528.P15143081748667032270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A202532 (A167614 (n + 2) + 1).toNat

end

end A202528.P15143081748667032270

/-! ## A202528.P8672032451880043711

`A000041(C(2, n+2))*A202532(A052905(n)+9)`
-/

namespace A202528.P8672032451880043711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A202532 (A052905 n + 9).toNat

end

end A202528.P8672032451880043711

/-!
# A202529: Number of (n+2) X 7 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202529, there is no canonical definition to state claims against.
-/

/-! ## A202529.P5720478938361054583

`A202532(A374005(n+1))`
-/

namespace A202529.P5720478938361054583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A374005 (n + 1)).toNat

end

end A202529.P5720478938361054583

/-! ## A202529.P8667709849824772144

`A202532(A167499(n+3))`
-/

namespace A202529.P8667709849824772144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167499 (n + 3)).toNat

end

end A202529.P8667709849824772144

/-! ## A202529.P18204106792812447653

`A202532(A155212(n)+13)`
-/

namespace A202529.P18204106792812447653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A155212 n + 13).toNat

end

end A202529.P18204106792812447653

/-! ## A202529.P9168716834250012056

`A202532(A056000(n)+15)`
-/

namespace A202529.P9168716834250012056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A056000 n + 15).toNat

end

end A202529.P9168716834250012056

/-! ## A202529.P12175437080095421752

`A202532(A167614(n+3)+2)`
-/

namespace A202529.P12175437080095421752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167614 (n + 3) + 2).toNat

end

end A202529.P12175437080095421752

/-!
# A202530: Number of (n+2) X 8 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202530, there is no canonical definition to state claims against.
-/

/-! ## A202530.P816716325917078761

`A202532(A374007(n+1))`
-/

namespace A202530.P816716325917078761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A374007 (n + 1)).toNat

end

end A202530.P816716325917078761

/-! ## A202530.P5205185479897997090

`A202532(A166136(n+4))`
-/

namespace A202530.P5205185479897997090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A166136 (n + 4)).toNat

end

end A202530.P5205185479897997090

/-! ## A202530.P1331937879636347434

`A202532(A056115(n)+21)`
-/

namespace A202530.P1331937879636347434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A056115 n + 21).toNat

end

end A202530.P1331937879636347434

/-! ## A202530.P12057366148773478008

`A202532(A167499(n+4)+1)`
-/

namespace A202530.P12057366148773478008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167499 (n + 4) + 1).toNat

end

end A202530.P12057366148773478008

/-! ## A202530.P16933983423494601418

`A202532(A167614(n+4)+3)`
-/

namespace A202530.P16933983423494601418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167614 (n + 4) + 3).toNat

end

end A202530.P16933983423494601418

/-!
# A202531: Number of (n+2) X 9 binary arrays avoiding patterns 000 and 101 in rows, columns and nw-to-se diagonals.

The programs for A202531, there is no canonical definition to state claims against.
-/

/-! ## A202531.P13949082697015179351

`A202532(A374008(n+1))`
-/

namespace A202531.P13949082697015179351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A374008 (n + 1)).toNat

end

end A202531.P13949082697015179351

/-! ## A202531.P2502616251163313314

`A202532(A167487(n+5))`
-/

namespace A202531.P2502616251163313314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167487 (n + 5)).toNat

end

end A202531.P2502616251163313314

/-! ## A202531.P10964841230086065477

`A202532(A166136(n+5)+1)`
-/

namespace A202531.P10964841230086065477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A166136 (n + 5) + 1).toNat

end

end A202531.P10964841230086065477

/-! ## A202531.P18026301956917016326

`A202532(A167614(n+5)+4)`
-/

namespace A202531.P18026301956917016326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A167614 (n + 5) + 4).toNat

end

end A202531.P18026301956917016326

/-! ## A202531.P4220070546235354169

`A202532(A000124(n+6)+6)`
-/

namespace A202531.P4220070546235354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202532 (A000124 (n + 6) + 6).toNat

end

end A202531.P4220070546235354169

/-!
# A202533: For a polynomial P(m) with rational coefficients, denote by lcmd(P) the LCM of the denominators of all its coefficients. Then a(n) = lcmd(Sum_{i=1..m} (i^n*Sum_{j=1..i} j^n))/ lcmd((Sum_{i=1..m} i^n)^2).

The programs for A202533, there is no canonical definition to state claims against.
-/

/-! ## A202533.P1781337377992334292

`gcd(A002378(A020988(n)), A012336(n))`
-/

namespace A202533.P1781337377992334292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (A020988 n).toNat) (A012336 n)

end

end A202533.P1781337377992334292

/-! ## A202533.P1148321574360243616

`A030567(A127867(n))*A095270(n+1)`
-/

namespace A202533.P1148321574360243616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A127867 n).toNat * A095270 (n + 1)

end

end A202533.P1148321574360243616

/-! ## A202533.P4074341455623492890

`A095270(n+1)*A136757(A005096(n+1))`
-/

namespace A202533.P4074341455623492890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095270 (n + 1) * A136757 (A005096 (n + 1)).toNat

end

end A202533.P4074341455623492890

/-!
# A202534: Number of symmetric, reflexive, non-transitive relations on n elements.

The programs for A202534, there is no canonical definition to state claims against.
-/

/-! ## A202534.P8352175043400430304

`2^((n+1)*n/2)-A000110(n+1)`
-/

namespace A202534.P8352175043400430304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n + 1) * n : ℚ) / 2 : ℝ) - (A000110 (n + 1) : ℝ)

end

end A202534.P8352175043400430304

/-! ## A202534.P9774878682478958419

`∑[A394449(n)]`
-/

namespace A202534.P9774878682478958419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202534.P9774878682478958419

/-! ## A202534.P15055293080076955572

`∏[2^n]-A011972(∑[n])`
-/

namespace A202534.P15055293080076955572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A202534.P15055293080076955572

/-! ## A202534.P17119480376697050408

`2^∑[n]-record[A186020(n)]`
-/

namespace A202534.P17119480376697050408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A202534.P17119480376697050408

/-! ## A202534.P3446165001748364062

`A000079(∑[n])-record[A095149(n)]`
-/

namespace A202534.P3446165001748364062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A202534.P3446165001748364062

/-!
# A202535: a(n) = n*phi(n)*abs( mobius(n) ).

The programs for A202535, the canonical program `A202535.P2093204726395157723` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202535 has offset 1).

The definition of A202535 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202535.P2093204726395157723

`A002618(n+1)*A008966(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A202535

/-- `A002618(n+1)*A008966(n+1)` -/
def P2093204726395157723.Spec : Prop :=
  ∀ n, P2093204726395157723.a n = A202535 (n + 1)

theorem P2093204726395157723.correct : P2093204726395157723.Spec := by
  intro n
  simp only [A202535, Nat.add_sub_cancel]

end A202535

/-! ## A202535.P9549047950539520285

`C(∏{p}[n+1, #], n)*∏{p}[n+1, #-1]`
-/

namespace A202535.P9549047950539520285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A202535.P9549047950539520285

namespace A202535

/-- `C(∏{p}[n+1, #], n)*∏{p}[n+1, #-1]` -/
def P9549047950539520285.Spec : Prop :=
  ∀ n, P9549047950539520285.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P4099205093465004092

`abs((n+1)*A097945(n+1))`
-/

namespace A202535.P4099205093465004092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A097945 (n + 1)|

end

end A202535.P4099205093465004092

namespace A202535

/-- `abs((n+1)*A097945(n+1))` -/
def P4099205093465004092.Spec : Prop :=
  ∀ n, P4099205093465004092.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P11761023790472118412

`C(∏{p}[n+1, #], n)*A003958(n+1)`
-/

namespace A202535.P11761023790472118412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * A003958 (n + 1)

end

end A202535.P11761023790472118412

namespace A202535

/-- `C(∏{p}[n+1, #], n)*A003958(n+1)` -/
def P11761023790472118412.Spec : Prop :=
  ∀ n, P11761023790472118412.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P18264003887593049313

`Δ[A240877(n)]*A008966(n+1)`
-/

namespace A202535.P18264003887593049313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008966 (n + 1)

end

end A202535.P18264003887593049313

namespace A202535

/-- `Δ[A240877(n)]*A008966(n+1)` -/
def P18264003887593049313.Spec : Prop :=
  ∀ n, P18264003887593049313.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P17193963724694383456

`A023900(n+1)*A055615(n+1)`
-/

namespace A202535.P17193963724694383456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A055615 (n + 1)

end

end A202535.P17193963724694383456

namespace A202535

/-- `A023900(n+1)*A055615(n+1)` -/
def P17193963724694383456.Spec : Prop :=
  ∀ n, P17193963724694383456.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P9430029716751537809

`A008966(n+1)*A079579(n+1)`
-/

namespace A202535.P9430029716751537809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079579 (n + 1)

end

end A202535.P9430029716751537809

namespace A202535

/-- `A008966(n+1)*A079579(n+1)` -/
def P9430029716751537809.Spec : Prop :=
  ∀ n, P9430029716751537809.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P16142466074932975889

`A055615(n+1)*A061020(n+1)`
-/

namespace A202535.P16142466074932975889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A061020 (n + 1)

end

end A202535.P16142466074932975889

namespace A202535

/-- `A055615(n+1)*A061020(n+1)` -/
def P16142466074932975889.Spec : Prop :=
  ∀ n, P16142466074932975889.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P12973435693802196392

`A055615(n+1)*A097945(n+1)`
-/

namespace A202535.P12973435693802196392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A097945 (n + 1)

end

end A202535.P12973435693802196392

namespace A202535

/-- `A055615(n+1)*A097945(n+1)` -/
def P12973435693802196392.Spec : Prop :=
  ∀ n, P12973435693802196392.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P9326576047827481420

`A061019(n+1)*A097945(n+1)`
-/

namespace A202535.P9326576047827481420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A097945 (n + 1)

end

end A202535.P9326576047827481420

namespace A202535

/-- `A061019(n+1)*A097945(n+1)` -/
def P9326576047827481420.Spec : Prop :=
  ∀ n, P9326576047827481420.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P11569987197860641873

`A062953(n+1)*A097945(n+1)`
-/

namespace A202535.P11569987197860641873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) * A097945 (n + 1)

end

end A202535.P11569987197860641873

namespace A202535

/-- `A062953(n+1)*A097945(n+1)` -/
def P11569987197860641873.Spec : Prop :=
  ∀ n, P11569987197860641873.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P15006247773819043881

`A074823(n+1)*A090780(n+1)`
-/

namespace A202535.P15006247773819043881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1) * A090780 (n + 1)

end

end A202535.P15006247773819043881

namespace A202535

/-- `A074823(n+1)*A090780(n+1)` -/
def P15006247773819043881.Spec : Prop :=
  ∀ n, P15006247773819043881.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P3381858396267934310

`A055615(n+1)*A125131(n+1)`
-/

namespace A202535.P3381858396267934310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A125131 (n + 1)

end

end A202535.P3381858396267934310

namespace A202535

/-- `A055615(n+1)*A125131(n+1)` -/
def P3381858396267934310.Spec : Prop :=
  ∀ n, P3381858396267934310.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P18194077607838006747

`A055615(n+1)*A153038(n+1)`
-/

namespace A202535.P18194077607838006747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A153038 (n + 1)

end

end A202535.P18194077607838006747

namespace A202535

/-- `A055615(n+1)*A153038(n+1)` -/
def P18194077607838006747.Spec : Prop :=
  ∀ n, P18194077607838006747.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P5024539695168657025

`A008966(n+1)*A299822(n+1)`
-/

namespace A202535.P5024539695168657025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A299822 (n + 1)

end

end A202535.P5024539695168657025

namespace A202535

/-- `A008966(n+1)*A299822(n+1)` -/
def P5024539695168657025.Spec : Prop :=
  ∀ n, P5024539695168657025.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P14871054894272930553

`A074823(n+1)*A248003(n+1)`
-/

namespace A202535.P14871054894272930553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1) * A248003 (n + 1)

end

end A202535.P14871054894272930553

namespace A202535

/-- `A074823(n+1)*A248003(n+1)` -/
def P14871054894272930553.Spec : Prop :=
  ∀ n, P14871054894272930553.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P12993477435330997111

`A008966(n+1)*A327171(n+1)`
-/

namespace A202535.P12993477435330997111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A327171 (n + 1)

end

end A202535.P12993477435330997111

namespace A202535

/-- `A008966(n+1)*A327171(n+1)` -/
def P12993477435330997111.Spec : Prop :=
  ∀ n, P12993477435330997111.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P6175929316106416143

`A008966(n+1)*A342534(n+1)`
-/

namespace A202535.P6175929316106416143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A342534 (n + 1)

end

end A202535.P6175929316106416143

namespace A202535

/-- `A008966(n+1)*A342534(n+1)` -/
def P6175929316106416143.Spec : Prop :=
  ∀ n, P6175929316106416143.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P16657170310036665112

`A055615(n+1)*A323407(n+1)`
-/

namespace A202535.P16657170310036665112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A323407 (n + 1)

end

end A202535.P16657170310036665112

namespace A202535

/-- `A055615(n+1)*A323407(n+1)` -/
def P16657170310036665112.Spec : Prop :=
  ∀ n, P16657170310036665112.a n = A202535 (n + 1)

end A202535

/-! ## A202535.P17108546100990371357

`A055615(n+1)*A328729(n+1)`
-/

namespace A202535.P17108546100990371357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A328729 (n + 1)

end

end A202535.P17108546100990371357

namespace A202535

/-- `A055615(n+1)*A328729(n+1)` -/
def P17108546100990371357.Spec : Prop :=
  ∀ n, P17108546100990371357.a n = A202535 (n + 1)

end A202535

/-!
# A202536: Number of tilings of a 4 X n rectangle using straight (3 X 1) trominoes and 2 X 2 tiles.

The programs for A202536, there is no canonical definition to state claims against.
-/

/-! ## A202536.P12966140582047731055

`A219967(∑[n+5]+5)`
-/

namespace A202536.P12966140582047731055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219967 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A202536.P12966140582047731055

/-! ## A202536.P928753244205862228

`A152851(n)*A219967(eq[4, A025581(n)])`
-/

namespace A202536.P928753244205862228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A219967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202536.P928753244205862228

/-!
# A202544: Number of n X n nonnegative integer arrays with each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202544, there is no canonical definition to state claims against.
-/

/-! ## A202544.P5794552349149819500

`A202549(∑[4*n]+1)`
-/

namespace A202544.P5794552349149819500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202544.P5794552349149819500

/-! ## A202544.P16258780656986597565

`record[A202549(abs(A069480(n+1)))]`
-/

namespace A202544.P16258780656986597565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202544.P16258780656986597565

/-! ## A202544.P14520336198857491567

`record[A202549(A194280(2*n+1))]`
-/

namespace A202544.P14520336198857491567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A194280 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202544.P14520336198857491567

/-! ## A202544.P3022297630011030009

`record[A202549(A001844(val(n+1, 2)))]`
-/

namespace A202544.P3022297630011030009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202544.P3022297630011030009

/-!
# A202545: Number of n X 4 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202545, there is no canonical definition to state claims against.
-/

/-! ## A202545.P12136700674988347338

`A202549(A374004(n+1))`
-/

namespace A202545.P12136700674988347338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A374004 (n + 1)).toNat

end

end A202545.P12136700674988347338

/-! ## A202545.P653727442751277873

`A202549(A141214(n)+7)`
-/

namespace A202545.P653727442751277873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A141214 n + 7).toNat

end

end A202545.P653727442751277873

/-! ## A202545.P11321637514426080874

`A202549(A052905(n)+9)`
-/

namespace A202545.P11321637514426080874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A052905 n + 9).toNat

end

end A202545.P11321637514426080874

/-! ## A202545.P4836103270971575257

`A202549(A055999(n)+10)`
-/

namespace A202545.P4836103270971575257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A055999 n + 10).toNat

end

end A202545.P4836103270971575257

/-! ## A202545.P434760479978014677

`A202549(A167614(n+2)+1)`
-/

namespace A202545.P434760479978014677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A167614 (n + 2) + 1).toNat

end

end A202545.P434760479978014677

/-!
# A202546: Number of nX5 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202546, there is no canonical definition to state claims against.
-/

/-! ## A202546.P11939626607119256223

`A202549(A374005(n+1))`
-/

namespace A202546.P11939626607119256223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A374005 (n + 1)).toNat

end

end A202546.P11939626607119256223

/-! ## A202546.P9061107940661022856

`A202549(A155212(n)+13)`
-/

namespace A202546.P9061107940661022856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A155212 n + 13).toNat

end

end A202546.P9061107940661022856

/-! ## A202546.P13112888268880058766

`A202549(Δ[A034857(n+1)]+8)`
-/

namespace A202546.P13112888268880058766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (f1 (n + 1) - f1 n + 8).toNat

end

end A202546.P13112888268880058766

/-! ## A202546.P9577701461896553875

`A202549(Δ[A006416(n+2)]+8)`
-/

namespace A202546.P9577701461896553875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (f1 (n + 1) - f1 n + 8).toNat

end

end A202546.P9577701461896553875

/-! ## A202546.P17705140849947474037

`A202549(Δ[A264443(n)])`
-/

namespace A202546.P17705140849947474037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (f1 (n + 1) - f1 n).toNat

end

end A202546.P17705140849947474037

/-!
# A202547: Number of nX6 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202547, there is no canonical definition to state claims against.
-/

/-! ## A202547.P9332164846800796850

`A202549(A374007(n+1))`
-/

namespace A202547.P9332164846800796850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A374007 (n + 1)).toNat

end

end A202547.P9332164846800796850

/-! ## A202547.P16973956713206447518

`A202549(eq[7, A131818(n+1)])`
-/

namespace A202547.P16973956713206447518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202547.P16973956713206447518

/-! ## A202547.P14071891428037197849

`A202549(A052905(n+3))`
-/

namespace A202547.P14071891428037197849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A052905 (n + 3)).toNat

end

end A202547.P14071891428037197849

/-! ## A202547.P17529060578196316824

`A202549(eq[5, A193592(n)])`
-/

namespace A202547.P17529060578196316824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202547.P17529060578196316824

/-! ## A202547.P12389977247085765188

`A202549(eq[6, A200370(n+1)])`
-/

namespace A202547.P12389977247085765188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202547.P12389977247085765188

/-!
# A202548: Number of nX7 nonnegative integer arrays each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202548, there is no canonical definition to state claims against.
-/

/-! ## A202548.P15451889832385826220

`A202549(A374008(n+1))`
-/

namespace A202548.P15451889832385826220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A374008 (n + 1)).toNat

end

end A202548.P15451889832385826220

/-! ## A202548.P16227382326026503289

`A202549(eq[8, A131818(n+1)])`
-/

namespace A202548.P16227382326026503289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202548.P16227382326026503289

/-! ## A202548.P18340775295426646155

`A202549(A055999(n+4))`
-/

namespace A202548.P18340775295426646155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (A055999 (n + 4)).toNat

end

end A202548.P18340775295426646155

/-! ## A202548.P7979722791959725092

`A202549(eq[6, A193592(n)])`
-/

namespace A202548.P7979722791959725092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202548.P7979722791959725092

/-! ## A202548.P721183959133678121

`A202549(eq[7, A200370(n+1)])`
-/

namespace A202548.P721183959133678121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202548.P721183959133678121

/-!
# A202549: T(n,k) = Number of n X k nonnegative integer arrays with each row and column an ascent sequence (interior element no greater than one plus up-steps preceding it).

The programs for A202549, there is no canonical definition to state claims against.
-/

/-! ## A202549.P1381548517098651629

`A268079(n+1)^gcd(31, n)`
-/

namespace A202549.P1381548517098651629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (n + 1) ^ Nat.gcd 31 n

end

end A202549.P1381548517098651629

/-! ## A202549.P7841084515531275496

`A004151(A268079(n+1))`
-/

namespace A202549.P7841084515531275496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A268079 (n + 1)).toNat

end

end A202549.P7841084515531275496

/-! ## A202549.P1150992698495211752

`A023443(A268079(n+1)+1)`
-/

namespace A202549.P1150992698495211752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A268079 (n + 1) + 1).toNat

end

end A202549.P1150992698495211752

/-! ## A202549.P4922836737608746173

`A029578(A268079(n+1)+1)`
-/

namespace A202549.P4922836737608746173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A268079 (n + 1) + 1).toNat

end

end A202549.P4922836737608746173

/-! ## A202549.P2475408094030771579

`A124625(A268079(n+1)+1)`
-/

namespace A202549.P2475408094030771579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A268079 (n + 1) + 1).toNat

end

end A202549.P2475408094030771579

/-!
# A202550: Triangle T(n,m) = coefficient of x^n in the Taylor expansion of [(1-(1-8*x)^(1/4))/(1+(1-8*x)^(1/4))]^m.

The programs for A202550, there is no canonical definition to state claims against.
-/

/-! ## A202550.P2792467390927141479

`A335877(A006057(n))+A144484(n)`
-/

namespace A202550.P2792467390927141479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A006057 n).toNat + A144484 n

end

end A202550.P2792467390927141479

/-! ## A202550.P3010037046754257520

`A281116(A298690(n))+A078939(n)`
-/

namespace A202550.P3010037046754257520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A298690 n).toNat + A078939 n

end

end A202550.P3010037046754257520

/-! ## A202550.P6974106194923814389

`A191702(n+1)-A001222(A144635(n))`
-/

namespace A202550.P6974106194923814389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) - A001222 (A144635 n).toNat

end

end A202550.P6974106194923814389

/-!
# A202551: Triangle T(n,k), read by rows, given by (1, -1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202551, there is no canonical definition to state claims against.
-/

/-! ## A202551.P965637563156368575

`A033999(A003056(n))*A199324(n)`
-/

namespace A202551.P965637563156368575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A199324 n

end

end A202551.P965637563156368575

/-! ## A202551.P17651580997286036519

`A033999(A003987(n))*A199324(n)`
-/

namespace A202551.P17651580997286036519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003987 n).toNat * A199324 n

end

end A202551.P17651580997286036519

/-! ## A202551.P16092041412581001269

`A033999(A049581(n))*A199324(n)`
-/

namespace A202551.P16092041412581001269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A049581 n).toNat * A199324 n

end

end A202551.P16092041412581001269

/-! ## A202551.P16446924438317308344

`A097807(A061579(n))*A129267(n)`
-/

namespace A202551.P16446924438317308344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A129267 n

end

end A202551.P16446924438317308344

/-! ## A202551.P17333181743877448648

`A033999(A057892(n))*A199324(n)`
-/

namespace A202551.P17333181743877448648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A057892 n).toNat * A199324 n

end

end A202551.P17333181743877448648

/-! ## A202551.P8606980725936925681

`A129267(n)*A130595(A112367(n))`
-/

namespace A202551.P8606980725936925681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129267 n * A130595 (A112367 n).toNat

end

end A202551.P8606980725936925681

/-! ## A202551.P5817272376954737919

`A057077(A158405(n+1))*A129267(n)`
-/

namespace A202551.P5817272376954737919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A158405 (n + 1)).toNat * A129267 n

end

end A202551.P5817272376954737919

/-! ## A202551.P11886449078019979967

`A062157(A093995(n+1))*A199324(n)`
-/

namespace A202551.P11886449078019979967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A093995 (n + 1)).toNat * A199324 n

end

end A202551.P11886449078019979967

/-!
# A202552: Number of n-element nonnegative integer arrays that are ascent sequences (interior element no greater than one plus up-steps preceding it) in both forward and reverse directions.

The programs for A202552, there is no canonical definition to state claims against.
-/

/-! ## A202552.P12819181934708616323

`round(A137572(n)/A139561(n))`
-/

namespace A202552.P12819181934708616323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A137572 n : ℚ) / (A139561 n : ℚ))

end

end A202552.P12819181934708616323

/-! ## A202552.P17074972275048318527

`A024417(A148712(n))`
-/

namespace A202552.P17074972275048318527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148712 n).toNat

end

end A202552.P17074972275048318527

/-! ## A202552.P5317117822102932520

`A051889(A302289(n))`
-/

namespace A202552.P5317117822102932520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A302289 n).toNat

end

end A202552.P5317117822102932520

/-! ## A202552.P12921501339008527222

`A185283(A349781(n))+1`
-/

namespace A202552.P12921501339008527222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A349781 n).toNat + 1

end

end A202552.P12921501339008527222

/-!
# A202553: Number of n X n 0,1 arrays with the row and column sums nondecreasing.

The programs for A202553, there is no canonical definition to state claims against.
-/

/-! ## A202553.P14247667545004299603

`A202560(∑[4*n]+1)`
-/

namespace A202553.P14247667545004299603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202553.P14247667545004299603

/-! ## A202553.P16443026298089733707

`lcm(2, A202560(A001844(n)))`
-/

namespace A202553.P16443026298089733707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202560 (A001844 n).toNat)

end

end A202553.P16443026298089733707

/-! ## A202553.P12849343173396222238

`record[A202560(Δ[A235355(n)])]`
-/

namespace A202553.P12849343173396222238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202553.P12849343173396222238

/-! ## A202553.P17083429357431351394

`record[A202560(A330613(n+1))]`
-/

namespace A202553.P17083429357431351394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202553.P17083429357431351394

/-!
# A202554: Number of nX2 0,1 arrays with the row and column sums nondecreasing.

The programs for A202554, the canonical program `A202554.P7186050484114814012` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202554 has offset 1).

The definition of A202554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202554.P7186050484114814012

`∑[∑[A027306(n+1)]+1]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202554

/-- `∑[∑[A027306(n+1)]+1]+1` -/
def P7186050484114814012.Spec : Prop :=
  ∀ n, P7186050484114814012.a n = A202554 (n + 1)

theorem P7186050484114814012.correct : P7186050484114814012.Spec := by
  intro n
  simp only [A202554, Nat.add_sub_cancel]

end A202554

/-! ## A202554.P15179792905514239921

`∑[∑[A226881(n+1)+1]]+n+2`
-/

namespace A202554.P15179792905514239921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A202554.P15179792905514239921

namespace A202554

/-- `∑[∑[A226881(n+1)+1]]+n+2` -/
def P15179792905514239921.Spec : Prop :=
  ∀ n, P15179792905514239921.a n = A202554 (n + 1)

end A202554

/-! ## A202554.P4505000859537160809

`A000217(n+2)+∑[A191313(n+1)]`
-/

namespace A202554.P4505000859537160809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202554.P4505000859537160809

namespace A202554

/-- `A000217(n+2)+∑[A191313(n+1)]` -/
def P4505000859537160809.Spec : Prop :=
  ∀ n, P4505000859537160809.a n = A202554 (n + 1)

end A202554

/-! ## A202554.P5458226210823331542

`∑[A191313(n+1)]+A034856(n+1)+2`
-/

namespace A202554.P5458226210823331542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A034856 (n + 1) + 2)

end

end A202554.P5458226210823331542

namespace A202554

/-- `∑[A191313(n+1)]+A034856(n+1)+2` -/
def P5458226210823331542.Spec : Prop :=
  ∀ n, P5458226210823331542.a n = A202554 (n + 1)

end A202554

/-! ## A202554.P12980698772439986045

`∑[A191313(n+1)]+A007318(A056000(n)+7)`
-/

namespace A202554.P12980698772439986045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A007318 (A056000 n + 7).toNat

end

end A202554.P12980698772439986045

namespace A202554

/-- `∑[A191313(n+1)]+A007318(A056000(n)+7)` -/
def P12980698772439986045.Spec : Prop :=
  ∀ n, P12980698772439986045.a n = A202554 (n + 1)

end A202554

/-!
# A202555: Number of nX3 0,1 arrays with the row and column sums nondecreasing.

The programs for A202555, there is no canonical definition to state claims against.
-/

/-! ## A202555.P3720832136306741798

`A202560(∑[n+2]+4)`
-/

namespace A202555.P3720832136306741798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202555.P3720832136306741798

/-! ## A202555.P15018878903353648412

`A202560(A167614(n+1))/(2*C(n, 59))!`
-/

namespace A202555.P15018878903353648412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202560 (A167614 (n + 1)).toNat : ℚ) / (Nat.factorial (2 * Nat.choose n 59) : ℚ)

end

end A202555.P15018878903353648412

/-! ## A202555.P8741140577796145962

`A202560(A167614(n+1))+A011745(n)`
-/

namespace A202555.P8741140577796145962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167614 (n + 1)).toNat + A011745 n

end

end A202555.P8741140577796145962

/-! ## A202555.P4095389645771338909

`A202560(A167614(n+1))+A025438(n)`
-/

namespace A202555.P4095389645771338909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167614 (n + 1)).toNat + A025438 n

end

end A202555.P4095389645771338909

/-! ## A202555.P631694564353438097

`A202560(A167614(n+1))+A025444(n)`
-/

namespace A202555.P631694564353438097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167614 (n + 1)).toNat + A025444 n

end

end A202555.P631694564353438097

/-!
# A202556: Number of nX4 0,1 arrays with the row and column sums nondecreasing.

The programs for A202556, there is no canonical definition to state claims against.
-/

/-! ## A202556.P2350591085815691255

`A202560(A141214(n)+7)`
-/

namespace A202556.P2350591085815691255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A141214 n + 7).toNat

end

end A202556.P2350591085815691255

/-! ## A202556.P7634979603140010392

`A202560(A052905(n)+9)`
-/

namespace A202556.P7634979603140010392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A052905 n + 9).toNat

end

end A202556.P7634979603140010392

/-! ## A202556.P8917411533429299860

`A202560(A055999(n)+10)`
-/

namespace A202556.P8917411533429299860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A055999 n + 10).toNat

end

end A202556.P8917411533429299860

/-! ## A202556.P1825143954428128179

`A202560(eq[5, A066657(n)])`
-/

namespace A202556.P1825143954428128179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202556.P1825143954428128179

/-! ## A202556.P2331896845541008287

`A202560(Δ[A008778(n)]+6)`
-/

namespace A202556.P2331896845541008287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (f1 (n + 1) - f1 n + 6).toNat

end

end A202556.P2331896845541008287

/-!
# A202557: Number of nX5 0,1 arrays with the row and column sums nondecreasing.

The programs for A202557, there is no canonical definition to state claims against.
-/

/-! ## A202557.P1354346657661089553

`A202560(A167499(n+3))`
-/

namespace A202557.P1354346657661089553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167499 (n + 3)).toNat

end

end A202557.P1354346657661089553

/-! ## A202557.P13153792231371107667

`A202560(A155212(n)+13)`
-/

namespace A202557.P13153792231371107667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A155212 n + 13).toNat

end

end A202557.P13153792231371107667

/-! ## A202557.P15369864143735965149

`A202560(A056000(n)+15)`
-/

namespace A202557.P15369864143735965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A056000 n + 15).toNat

end

end A202557.P15369864143735965149

/-! ## A202557.P11761075144010735838

`A202560(eq[7, A066657(n)])`
-/

namespace A202557.P11761075144010735838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202557.P11761075144010735838

/-! ## A202557.P838869034597556334

`A202560(A167614(n+3)+2)`
-/

namespace A202557.P838869034597556334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167614 (n + 3) + 2).toNat

end

end A202557.P838869034597556334

/-!
# A202558: Number of nX6 0,1 arrays with the row and column sums nondecreasing.

The programs for A202558, there is no canonical definition to state claims against.
-/

/-! ## A202558.P6230250007967205605

`A202560(A167499(n+4)+1)`
-/

namespace A202558.P6230250007967205605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167499 (n + 4) + 1).toNat

end

end A202558.P6230250007967205605

/-! ## A202558.P15005330554670584857

`A202560(A145018(n+6)+2)`
-/

namespace A202558.P15005330554670584857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A145018 (n + 6) + 2).toNat

end

end A202558.P15005330554670584857

/-! ## A202558.P650628839363724226

`A202560(A000124(n+5)+5)`
-/

namespace A202558.P650628839363724226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A000124 (n + 5) + 5).toNat

end

end A202558.P650628839363724226

/-! ## A202558.P2681848191419179189

`A202560(A000217(n+5)+6)`
-/

namespace A202558.P2681848191419179189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A000217 (n + 5) + 6).toNat

end

end A202558.P2681848191419179189

/-! ## A202558.P8877588882795525797

`A202560(A161680(n+6)+6)`
-/

namespace A202558.P8877588882795525797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A161680 (n + 6) + 6).toNat

end

end A202558.P8877588882795525797

/-!
# A202559: Number of nX7 0,1 arrays with the row and column sums nondecreasing.

The programs for A202559, there is no canonical definition to state claims against.
-/

/-! ## A202559.P5495584710879936803

`A202560(A167487(n+5))`
-/

namespace A202559.P5495584710879936803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167487 (n + 5)).toNat

end

end A202559.P5495584710879936803

/-! ## A202559.P12392951683447334140

`A202560(A056119(n)+28)`
-/

namespace A202559.P12392951683447334140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A056119 n + 28).toNat

end

end A202559.P12392951683447334140

/-! ## A202559.P18238623395524946629

`A202560(eq[11, A066657(n)])`
-/

namespace A202559.P18238623395524946629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202559.P18238623395524946629

/-! ## A202559.P11039033681870148134

`A202560(A166136(n+5)+1)`
-/

namespace A202559.P11039033681870148134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A166136 (n + 5) + 1).toNat

end

end A202559.P11039033681870148134

/-! ## A202559.P4504988169694084914

`A202560(A167614(n+5)+4)`
-/

namespace A202559.P4504988169694084914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202560 (A167614 (n + 5) + 4).toNat

end

end A202559.P4504988169694084914

/-!
# A202560: T(n,k)=Number of nXk 0,1 arrays with the row and column sums nondecreasing.

The programs for A202560, there is no canonical definition to state claims against.
-/

/-! ## A202560.P1623597862530014421

`A076564(A227269(n+1))`
-/

namespace A202560.P1623597862530014421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (A227269 (n + 1)).toNat

end

end A202560.P1623597862530014421

/-! ## A202560.P8998920935279631542

`A226537(A156353(n+1))`
-/

namespace A202560.P8998920935279631542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (A156353 (n + 1)).toNat

end

end A202560.P8998920935279631542

/-! ## A202560.P14496078102747441882

`A325400(A239849(n+1))`
-/

namespace A202560.P14496078102747441882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A239849 (n + 1)).toNat

end

end A202560.P14496078102747441882

/-! ## A202560.P14340523477960146090

`A157282(A157275(n)+comp[∑[n]]-n)`
-/

namespace A202560.P14340523477960146090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157282 (A157275 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A202560.P14340523477960146090

/-! ## A202560.P6761474369487833867

`A076564(A034801(n))+A014430(n)`
-/

namespace A202560.P6761474369487833867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (A034801 n).toNat + A014430 n

end

end A202560.P6761474369487833867

/-!
# A202563: 

The programs for A202563, there is no canonical definition to state claims against.
-/

/-! ## A202563.P15595656608860418594

`A077249(2*n)*A077251(2*n)/2`
-/

namespace A202563.P15595656608860418594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077249 (2 * n) * A077251 (2 * n) : ℚ) / 2

end

end A202563.P15595656608860418594

/-!
# A202564: Indices of pentagonal numbers which are also decagonal.

The programs for A202564, the canonical program `A202564.P17425805476821448578` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202564 has offset 1).

The definition of A202564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202564.P17425805476821448578

`98*a(n-1)-a(n-2)-16` with `a(0)=1, a(1)=91`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202564

/-- `98*a(n-1)-a(n-2)-16` -/
def P17425805476821448578.Spec : Prop :=
  ∀ n, P17425805476821448578.a n = A202564 (n + 1)

theorem P17425805476821448578.correct : P17425805476821448578.Spec := by
  intro n
  simp only [A202564, Nat.add_sub_cancel]

end A202564

/-! ## A202564.P3420167280397841534

`ceil(5/24*sqrt(2)*(sqrt(3)+sqrt(2))^(4*(n+1)-3))`
-/

namespace A202564.P3420167280397841534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 : ℚ) / 24 : ℝ) * Real.sqrt (2 : ℝ) * (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A202564.P3420167280397841534

namespace A202564

/-- `ceil(5/24*sqrt(2)*(sqrt(3)+sqrt(2))^(4*(n+1)-3))` -/
def P3420167280397841534.Spec : Prop :=
  ∀ n, P3420167280397841534.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P9357669847861970934

`A168520(n+1)+A138288(n)²`
-/

namespace A202564.P9357669847861970934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168520 (n + 1) + A138288 n ^ 2

end

end A202564.P9357669847861970934

namespace A202564

/-- `A168520(n+1)+A138288(n)²` -/
def P9357669847861970934.Spec : Prop :=
  ∀ n, P9357669847861970934.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P14198694015834316616

`A004189(2*n)+A138288(n)²`
-/

namespace A202564.P14198694015834316616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) + A138288 n ^ 2

end

end A202564.P14198694015834316616

namespace A202564

/-- `A004189(2*n)+A138288(n)²` -/
def P14198694015834316616.Spec : Prop :=
  ∀ n, P14198694015834316616.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P6012533646884068641

`Δ[A108741(n)]-A220186(n+1)`
-/

namespace A202564.P6012533646884068641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A220186 (n + 1)

end

end A202564.P6012533646884068641

namespace A202564

/-- `Δ[A108741(n)]-A220186(n+1)` -/
def P6012533646884068641.Spec : Prop :=
  ∀ n, P6012533646884068641.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P8821005433883397933

`A046172(n+1)+A004189(2*n)`
-/

namespace A202564.P8821005433883397933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046172 (n + 1) + A004189 (2 * n)

end

end A202564.P8821005433883397933

namespace A202564

/-- `A046172(n+1)+A004189(2*n)` -/
def P8821005433883397933.Spec : Prop :=
  ∀ n, P8821005433883397933.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P4026248385264907591

`A004189(2*n)+A072256(n+1)²`
-/

namespace A202564.P4026248385264907591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) + A072256 (n + 1) ^ 2

end

end A202564.P4026248385264907591

namespace A202564

/-- `A004189(2*n)+A072256(n+1)²` -/
def P4026248385264907591.Spec : Prop :=
  ∀ n, P4026248385264907591.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P17736499087196183264

`A004189(2*n)+A041007(2*n)²`
-/

namespace A202564.P17736499087196183264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) + A041007 (2 * n) ^ 2

end

end A202564.P17736499087196183264

namespace A202564

/-- `A004189(2*n)+A041007(2*n)²` -/
def P17736499087196183264.Spec : Prop :=
  ∀ n, P17736499087196183264.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P8688545212583710155

`A004189(2*n)+A142239(2*n)²`
-/

namespace A202564.P8688545212583710155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) + A142239 (2 * n) ^ 2

end

end A202564.P8688545212583710155

namespace A202564

/-- `A004189(2*n)+A142239(2*n)²` -/
def P8688545212583710155.Spec : Prop :=
  ∀ n, P8688545212583710155.a n = A202564 (n + 1)

end A202564

/-! ## A202564.P17902441084937931608

`A046182(2*n+1)+1-A046181(2*n+1)`
-/

namespace A202564.P17902441084937931608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046182 (2 * n + 1) + (1 - A046181 (2 * n + 1))

end

end A202564.P17902441084937931608

namespace A202564

/-- `A046182(2*n+1)+1-A046181(2*n+1)` -/
def P17902441084937931608.Spec : Prop :=
  ∀ n, P17902441084937931608.a n = A202564 (n + 1)

end A202564

/-!
# A202565: Indices of decagonal numbers which are also pentagonal.

The programs for A202565, the canonical program `A202565.P14391969503560850877` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202565 has offset 1).

The definition of A202565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202565.P14391969503560850877

`98*a(n-1)-a(n-2)-36` with `a(0)=1, a(1)=56`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202565

/-- `98*a(n-1)-a(n-2)-36` -/
def P14391969503560850877.Spec : Prop :=
  ∀ n, P14391969503560850877.a n = A202565 (n + 1)

theorem P14391969503560850877.correct : P14391969503560850877.Spec := by
  intro n
  simp only [A202565, Nat.add_sub_cancel]

end A202565

/-! ## A202565.P1583580351902333707

`ceil(5/48*sqrt(3)*(sqrt(3)+sqrt(2))^(4*(n+1)-3))`
-/

namespace A202565.P1583580351902333707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 : ℚ) / 48 : ℝ) * Real.sqrt (3 : ℝ) * (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A202565.P1583580351902333707

namespace A202565

/-- `ceil(5/48*sqrt(3)*(sqrt(3)+sqrt(2))^(4*(n+1)-3))` -/
def P1583580351902333707.Spec : Prop :=
  ∀ n, P1583580351902333707.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P4831175057467022871

`∑[A054320(2*n)]-A087125(2*n)`
-/

namespace A202565.P4831175057467022871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087125 (2 * n)

end

end A202565.P4831175057467022871

namespace A202565

/-- `∑[A054320(2*n)]-A087125(2*n)` -/
def P4831175057467022871.Spec : Prop :=
  ∀ n, P4831175057467022871.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P15882475403860789959

`A080874(2*n)*A140781(n+1)-1`
-/

namespace A202565.P15882475403860789959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n) * A140781 (n + 1) - 1

end

end A202565.P15882475403860789959

namespace A202565

/-- `A080874(2*n)*A140781(n+1)-1` -/
def P15882475403860789959.Spec : Prop :=
  ∀ n, P15882475403860789959.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P17127154830602862218

`A080806(2*n+1)*A080874(2*n+1)`
-/

namespace A202565.P17127154830602862218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * n + 1) * A080874 (2 * n + 1)

end

end A202565.P17127154830602862218

namespace A202565

/-- `A080806(2*n+1)*A080874(2*n+1)` -/
def P17127154830602862218.Spec : Prop :=
  ∀ n, P17127154830602862218.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P6464399075438761730

`A080873(2*n+1)*A080874(2*n+1)`
-/

namespace A202565.P6464399075438761730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n + 1) * A080874 (2 * n + 1)

end

end A202565.P6464399075438761730

namespace A202565

/-- `A080873(2*n+1)*A080874(2*n+1)` -/
def P6464399075438761730.Spec : Prop :=
  ∀ n, P6464399075438761730.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P14327252843997662156

`A080806(2*n+1)*A129445(2*n+1)`
-/

namespace A202565.P14327252843997662156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * n + 1) * A129445 (2 * n + 1)

end

end A202565.P14327252843997662156

namespace A202565

/-- `A080806(2*n+1)*A129445(2*n+1)` -/
def P14327252843997662156.Spec : Prop :=
  ∀ n, P14327252843997662156.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P14967414607178961984

`A080873(2*n+1)*A129445(2*n+1)`
-/

namespace A202565.P14967414607178961984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n + 1) * A129445 (2 * n + 1)

end

end A202565.P14967414607178961984

namespace A202565

/-- `A080873(2*n+1)*A129445(2*n+1)` -/
def P14967414607178961984.Spec : Prop :=
  ∀ n, P14967414607178961984.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P15309766181411349031

`A080806(2*(n+1))*A080873(2*n)-2`
-/

namespace A202565.P15309766181411349031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * (n + 1)) * A080873 (2 * n) - 2

end

end A202565.P15309766181411349031

namespace A202565

/-- `A080806(2*(n+1))*A080873(2*n)-2` -/
def P15309766181411349031.Spec : Prop :=
  ∀ n, P15309766181411349031.a n = A202565 (n + 1)

end A202565

/-! ## A202565.P15828318648542103875

`A248205(n+1)+∑[A122653(A004273(n))]`
-/

namespace A202565.P15828318648542103875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248205 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202565.P15828318648542103875

namespace A202565

/-- `A248205(n+1)+∑[A122653(A004273(n))]` -/
def P15828318648542103875.Spec : Prop :=
  ∀ n, P15828318648542103875.a n = A202565 (n + 1)

end A202565

/-!
# A202566: Number of (n+3)X(n+3) binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202566, there is no canonical definition to state claims against.
-/

/-! ## A202566.P16142156237584633612

`A202574((n+1)²+n²)`
-/

namespace A202566.P16142156237584633612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 ((n + 1) ^ 2 + n ^ 2)

end

end A202566.P16142156237584633612

/-!
# A202567: Number of (n+3)X4 binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202567, there is no canonical definition to state claims against.
-/

/-! ## A202567.P4671979894900663027

`A202574(∑[n]+1)`
-/

namespace A202567.P4671979894900663027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202567.P4671979894900663027

/-! ## A202567.P9256279129281352017

`record[A010054(n)*A202574(n+1)]`
-/

namespace A202567.P9256279129281352017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202567.P9256279129281352017

/-! ## A202567.P11399101132464633191

`record[A202574(n+1)/A174303(n)]`
-/

namespace A202567.P11399101132464633191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202574 (n + 1) : ℚ) / (A174303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202567.P11399101132464633191

/-! ## A202567.P7463773254493529793

`record[root(A202574(n+1), A026725(n))]`
-/

namespace A202567.P7463773254493529793
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202574 (n + 1) : ℝ) ^ (1 / (A026725 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202567.P7463773254493529793

/-! ## A202567.P11925327207076095243

`record[root(A202574(n+1), A302998(n))]`
-/

namespace A202567.P11925327207076095243
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202574 (n + 1) : ℝ) ^ (1 / (A302998 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202567.P11925327207076095243

/-!
# A202568: Number of (n+3)X5 binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202568, there is no canonical definition to state claims against.
-/

/-! ## A202568.P11886480687322589459

`A202574(∑[n+1]+2)`
-/

namespace A202568.P11886480687322589459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202568.P11886480687322589459

/-! ## A202568.P1440191984141485407

`record[A010054(n)*A202574(n+2)]`
-/

namespace A202568.P1440191984141485407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202568.P1440191984141485407

/-! ## A202568.P4164528026859607180

`record[A202574(A333530(n+1))]`
-/

namespace A202568.P4164528026859607180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202568.P4164528026859607180

/-! ## A202568.P3979712271498166976

`record[A202574(Δ[A003453(n+5)])]`
-/

namespace A202568.P3979712271498166976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202568.P3979712271498166976

/-! ## A202568.P4516164212760464853

`record[A202574(A198453(n+1))]`
-/

namespace A202568.P4516164212760464853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202568.P4516164212760464853

/-!
# A202569: Number of (n+3)X6 binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202569, there is no canonical definition to state claims against.
-/

/-! ## A202569.P16282393990859422546

`A202574(∑[n+2]+4)`
-/

namespace A202569.P16282393990859422546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202569.P16282393990859422546

/-! ## A202569.P1430323225035218839

`or(1, A202574(A167614(n+1)))`
-/

namespace A202569.P1430323225035218839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202574 (A167614 (n + 1)).toNat)

end

end A202569.P1430323225035218839

/-! ## A202569.P11084262444659992566

`A202574(A167614(n+1))+A025469(n)`
-/

namespace A202569.P11084262444659992566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A167614 (n + 1)).toNat + A025469 n

end

end A202569.P11084262444659992566

/-! ## A202569.P17405796566540153336

`A202574(A167614(n+1))%A202570(n+1)`
-/

namespace A202569.P17405796566540153336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202574 (A167614 (n + 1)).toNat) (A202570 (n + 1))

end

end A202569.P17405796566540153336

/-!
# A202570: Number of (n+3)X7 binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202570, there is no canonical definition to state claims against.
-/

/-! ## A202570.P8505792787477018469

`A202574(A141214(n)+7)`
-/

namespace A202570.P8505792787477018469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A141214 n + 7).toNat

end

end A202570.P8505792787477018469

/-! ## A202570.P6842654800929374817

`A202574(A052905(n)+9)`
-/

namespace A202570.P6842654800929374817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A052905 n + 9).toNat

end

end A202570.P6842654800929374817

/-! ## A202570.P9328480021631125335

`A202574(A055999(n)+10)`
-/

namespace A202570.P9328480021631125335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A055999 n + 10).toNat

end

end A202570.P9328480021631125335

/-! ## A202570.P15567523295577596739

`A202574(A167614(n+2)+1)`
-/

namespace A202570.P15567523295577596739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A167614 (n + 2) + 1).toNat

end

end A202570.P15567523295577596739

/-! ## A202570.P2397331608707966049

`A202574(Δ[A264443(n)-n²])`
-/

namespace A202570.P2397331608707966049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (f1 (n + 1) - f1 n).toNat

end

end A202570.P2397331608707966049

/-!
# A202571: Number of (n+3)X8 binary arrays with no more than two of any consecutive four bits set in any row or column.

The programs for A202571, there is no canonical definition to state claims against.
-/

/-! ## A202571.P6402915816243520264

`A202574(A374005(n+1))`
-/

namespace A202571.P6402915816243520264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A374005 (n + 1)).toNat

end

end A202571.P6402915816243520264

/-! ## A202571.P13037634019775486124

`A202574(Δ[A264443(n)])`
-/

namespace A202571.P13037634019775486124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (f1 (n + 1) - f1 n).toNat

end

end A202571.P13037634019775486124

/-! ## A202571.P4318515985246038608

`A202574(A056115(n)+11)`
-/

namespace A202571.P4318515985246038608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (A056115 n + 11).toNat

end

end A202571.P4318515985246038608

/-! ## A202571.P5890845650253524037

`A202574(eq[2, A092921(n)])`
-/

namespace A202571.P5890845650253524037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202571.P5890845650253524037

/-!
# A202575: Number of n X n 0..3 arrays with the row and column sums nondecreasing.

The programs for A202575, there is no canonical definition to state claims against.
-/

/-! ## A202575.P3961917138197326961

`A202581(∑[4*n]+1)`
-/

namespace A202575.P3961917138197326961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202575.P3961917138197326961

/-!
# A202576: Number of nX2 0..3 arrays with the row and column sums nondecreasing.

The programs for A202576, there is no canonical definition to state claims against.
-/

/-! ## A202576.P3898515245509314932

`A202581(∑[n+1]+2)`
-/

namespace A202576.P3898515245509314932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202576.P3898515245509314932

/-! ## A202576.P5902002116428130810

`record[A202581(A286237(n+1)+1)]`
-/

namespace A202576.P5902002116428130810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202576.P5902002116428130810

/-! ## A202576.P2569118082437010524

`record[A202581(A106255(n+1)+2)]`
-/

namespace A202576.P2569118082437010524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A106255 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202576.P2569118082437010524

/-! ## A202576.P5773497844905240319

`lcm(A033999(n), A202581(A373662(n+1)))`
-/

namespace A202576.P5773497844905240319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202581 (A373662 (n + 1)).toNat)

end

end A202576.P5773497844905240319

/-! ## A202576.P4568724263256875414

`record[A202581(Δ[A003453(n+5)])]`
-/

namespace A202576.P4568724263256875414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202576.P4568724263256875414

/-!
# A202577: Number of nX3 0..3 arrays with the row and column sums nondecreasing.

The programs for A202577, there is no canonical definition to state claims against.
-/

/-! ## A202577.P6429092221258092510

`A202581(∑[n+2]+4)`
-/

namespace A202577.P6429092221258092510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202577.P6429092221258092510

/-! ## A202577.P10308037636059741247

`record[A202581(A106255(n+1)+3)]`
-/

namespace A202577.P10308037636059741247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A106255 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202577.P10308037636059741247

/-! ## A202577.P10256649523747284532

`A202581(A167614(n+1))+char[12*(n+1)]`
-/

namespace A202577.P10256649523747284532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202577.P10256649523747284532

/-! ## A202577.P10499002650397864497

`A202581(A167614(n+1))*A220054(n)`
-/

namespace A202577.P10499002650397864497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A167614 (n + 1)).toNat * A220054 n

end

end A202577.P10499002650397864497

/-! ## A202577.P17645856973985559574

`or(A153587(n), A202581(A167614(n+1)))`
-/

namespace A202577.P17645856973985559574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153587 n) (A202581 (A167614 (n + 1)).toNat)

end

end A202577.P17645856973985559574

/-!
# A202578: Number of nX4 0..3 arrays with the row and column sums nondecreasing.

The programs for A202578, there is no canonical definition to state claims against.
-/

/-! ## A202578.P14421656793938706439

`A202581(∑[n+3]+7)`
-/

namespace A202578.P14421656793938706439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202578.P14421656793938706439

/-! ## A202578.P17166210907680921117

`A202581(A055998(n+2))*A331562(n)`
-/

namespace A202578.P17166210907680921117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A055998 (n + 2)).toNat * A331562 n

end

end A202578.P17166210907680921117

/-! ## A202578.P16125215920748375846

`A309785(n+1)+A202581(A055998(n+2))`
-/

namespace A202578.P16125215920748375846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (n + 1) + A202581 (A055998 (n + 2)).toNat

end

end A202578.P16125215920748375846

/-!
# A202579: Number of nX5 0..3 arrays with the row and column sums nondecreasing.

The programs for A202579, there is no canonical definition to state claims against.
-/

/-! ## A202579.P17050620410213066194

`A202581(∑[n+5]+6)`
-/

namespace A202579.P17050620410213066194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A202579.P17050620410213066194

/-!
# A202580: Number of n X 6 0..3 arrays with the row and column sums nondecreasing.

The programs for A202580, there is no canonical definition to state claims against.
-/

/-! ## A202580.P12193095757204243775

`A202581(A374007(n+1))`
-/

namespace A202580.P12193095757204243775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202581 (A374007 (n + 1)).toNat

end

end A202580.P12193095757204243775

/-!
# A202582: Inverse binomial transform of A144691.

The programs for A202582, there is no canonical definition to state claims against.
-/

/-! ## A202582.P5302721479750877745

`A049084(A088568(n+1)+A080599(n))`
-/

namespace A202582.P5302721479750877745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A088568 (n + 1) + A080599 n).toNat

end

end A202582.P5302721479750877745

/-! ## A202582.P1859426726490776476

`C(A177407(A177450(n)), A177413(n+1))`
-/

namespace A202582.P1859426726490776476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A177407 (A177450 n).toNat).toNat (A177413 (n + 1)).toNat

end

end A202582.P1859426726490776476

/-! ## A202582.P8167466198494568179

`and(A020060(n), A058331(A059578(n+1)))`
-/

namespace A202582.P8167466198494568179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020060 n) (A058331 (A059578 (n + 1)).toNat)

end

end A202582.P8167466198494568179

/-!
# A202583: Number of (n+2) X (n+2) binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202583, there is no canonical definition to state claims against.
-/

/-! ## A202583.P17361491123889438657

`A202591(∑[4*n]+1)`
-/

namespace A202583.P17361491123889438657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202583.P17361491123889438657

/-! ## A202583.P8500160418434799292

`record[A202591(A330613(n+1))]`
-/

namespace A202583.P8500160418434799292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202583.P8500160418434799292

/-! ## A202583.P16723707006368621581

`record[gcd(A114327(n), A202591(n+1))]`
-/

namespace A202583.P16723707006368621581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202591 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202583.P16723707006368621581

/-! ## A202583.P154941286610895215

`lcm(A047000(n), A202591(A001844(n)))`
-/

namespace A202583.P154941286610895215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047000 n) (A202591 (A001844 n).toNat)

end

end A202583.P154941286610895215

/-! ## A202583.P5114793152290086732

`A202591(A001844(n))%A202593(n+1)`
-/

namespace A202583.P5114793152290086732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202591 (A001844 n).toNat) (A202593 (n + 1))

end

end A202583.P5114793152290086732

/-!
# A202584: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202584, there is no canonical definition to state claims against.
-/

/-! ## A202584.P14190881209457483889

`A202591(∑[n]+1)`
-/

namespace A202584.P14190881209457483889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202584.P14190881209457483889

/-! ## A202584.P15626133495355477510

`record[A010054(n)*A202591(n+1)]`
-/

namespace A202584.P15626133495355477510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202584.P15626133495355477510

/-! ## A202584.P2292040457869046957

`record[root(A202591(n+1), A116925(n))]`
-/

namespace A202584.P2292040457869046957
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202591 (n + 1) : ℝ) ^ (1 / (A116925 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202584.P2292040457869046957

/-! ## A202584.P1749156710031073852

`record[gcd(A002262(n), A202591(n+1))]`
-/

namespace A202584.P1749156710031073852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202591 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202584.P1749156710031073852

/-! ## A202584.P5203676619202129089

`record[lcm(A103452(n), A202591(n+1))]`
-/

namespace A202584.P5203676619202129089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A202591 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202584.P5203676619202129089

/-!
# A202585: Number of (n+2)X4 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202585, there is no canonical definition to state claims against.
-/

/-! ## A202585.P2128503895256904240

`A202591(∑[n+1]+2)`
-/

namespace A202585.P2128503895256904240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202585.P2128503895256904240

/-! ## A202585.P8207686114636396495

`record[A010054(n)*A202591(n+2)]`
-/

namespace A202585.P8207686114636396495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A202591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202585.P8207686114636396495

/-! ## A202585.P2665670092485601018

`record[root(A202591(n+2), A116925(n))]`
-/

namespace A202585.P2665670092485601018
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202591 (n + 2) : ℝ) ^ (1 / (A116925 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202585.P2665670092485601018

/-! ## A202585.P15780161849824638630

`record[gcd(A002262(n), A202591(n+2))]`
-/

namespace A202585.P15780161849824638630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202591 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202585.P15780161849824638630

/-! ## A202585.P2306955471538456192

`record[A202591(A133263(A008612(n)))]`
-/

namespace A202585.P2306955471538456192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202585.P2306955471538456192

/-!
# A202586: Number of (n+2)X5 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202586, there is no canonical definition to state claims against.
-/

/-! ## A202586.P6410908203463149439

`A202591(∑[n+2]+4)`
-/

namespace A202586.P6410908203463149439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202586.P6410908203463149439

/-! ## A202586.P11242961090396820423

`lcm((-1)^n, A202591(A167614(n+1)))`
-/

namespace A202586.P11242961090396820423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A202591 (A167614 (n + 1)).toNat)

end

end A202586.P11242961090396820423

/-! ## A202586.P7540726358043016725

`char[A003188(n)]*A202591(A167614(n+1))`
-/

namespace A202586.P7540726358043016725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202591 (A167614 (n + 1)).toNat

end

end A202586.P7540726358043016725

/-! ## A202586.P15128362590962513694

`char[A028898(n)]*A202591(A167614(n+1))`
-/

namespace A202586.P15128362590962513694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202591 (A167614 (n + 1)).toNat

end

end A202586.P15128362590962513694

/-! ## A202586.P13271082221499154629

`A202591(A167614(n+1))+A000007(n+3)`
-/

namespace A202586.P13271082221499154629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A167614 (n + 1)).toNat + A000007 (n + 3)

end

end A202586.P13271082221499154629

/-!
# A202587: Number of (n+2)X6 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202587, there is no canonical definition to state claims against.
-/

/-! ## A202587.P15003667142698837170

`A202591(A141214(n)+7)`
-/

namespace A202587.P15003667142698837170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A141214 n + 7).toNat

end

end A202587.P15003667142698837170

/-! ## A202587.P8967271508361240255

`A202591(A052905(n)+9)`
-/

namespace A202587.P8967271508361240255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A052905 n + 9).toNat

end

end A202587.P8967271508361240255

/-! ## A202587.P16094213702670673417

`A202591(A055999(n)+10)`
-/

namespace A202587.P16094213702670673417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A055999 n + 10).toNat

end

end A202587.P16094213702670673417

/-! ## A202587.P13509426343907721487

`A202591(A167614(n+2)+1)`
-/

namespace A202587.P13509426343907721487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A167614 (n + 2) + 1).toNat

end

end A202587.P13509426343907721487

/-! ## A202587.P8122611636621304662

`A202591(Δ[A023545(n+1)-n²])`
-/

namespace A202587.P8122611636621304662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (f1 (n + 1) - f1 n).toNat

end

end A202587.P8122611636621304662

/-!
# A202588: Number of (n+2)X7 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202588, there is no canonical definition to state claims against.
-/

/-! ## A202588.P4546054984102363854

`A202591(A155212(n)+13)`
-/

namespace A202588.P4546054984102363854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A155212 n + 13).toNat

end

end A202588.P4546054984102363854

/-! ## A202588.P6564431249813031821

`A202591(eq[6, A131818(n+1)])`
-/

namespace A202588.P6564431249813031821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202588.P6564431249813031821

/-! ## A202588.P12099947077012216016

`A202591(A374005(n+1))`
-/

namespace A202588.P12099947077012216016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A374005 (n + 1)).toNat

end

end A202588.P12099947077012216016

/-! ## A202588.P3877358008346955827

`A202591(eq[4, A193592(n)])`
-/

namespace A202588.P3877358008346955827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202588.P3877358008346955827

/-! ## A202588.P16023962876363572760

`A202591(Δ[A023545(n+1)])`
-/

namespace A202588.P16023962876363572760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (f1 (n + 1) - f1 n).toNat

end

end A202588.P16023962876363572760

/-!
# A202589: Number of (n+2)X8 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202589, there is no canonical definition to state claims against.
-/

/-! ## A202589.P614573622291351174

`A202591(eq[7, A131818(n+1)])`
-/

namespace A202589.P614573622291351174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202589.P614573622291351174

/-! ## A202589.P4544569465901705800

`A202591(A374007(n+1))`
-/

namespace A202589.P4544569465901705800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A374007 (n + 1)).toNat

end

end A202589.P4544569465901705800

/-! ## A202589.P6417981084590690903

`A202591(eq[3, A219347(n)])`
-/

namespace A202589.P6417981084590690903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202589.P6417981084590690903

/-! ## A202589.P12804117894327846736

`A202591(eq[5, A193592(n)])`
-/

namespace A202589.P12804117894327846736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202589.P12804117894327846736

/-! ## A202589.P17518719761330158627

`A202591(eq[6, A200370(n+1)])`
-/

namespace A202589.P17518719761330158627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202589.P17518719761330158627

/-!
# A202590: Number of (n+2)X9 binary arrays avoiding patterns 001 and 100 in rows, columns and nw-to-se diagonals.

The programs for A202590, there is no canonical definition to state claims against.
-/

/-! ## A202590.P16889517714403889669

`A202591(A056119(n)+28)`
-/

namespace A202590.P16889517714403889669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A056119 n + 28).toNat

end

end A202590.P16889517714403889669

/-! ## A202590.P13261410751874199725

`A202591(eq[8, A131818(n+1)])`
-/

namespace A202590.P13261410751874199725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202590.P13261410751874199725

/-! ## A202590.P4081352464405869811

`A202591(A374008(n+1))`
-/

namespace A202590.P4081352464405869811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (A374008 (n + 1)).toNat

end

end A202590.P4081352464405869811

/-! ## A202590.P5431410398273235206

`A202591(eq[4, A219347(n)])`
-/

namespace A202590.P5431410398273235206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202590.P5431410398273235206

/-! ## A202590.P1690593825492660479

`A202591(eq[6, A193592(n)])`
-/

namespace A202590.P1690593825492660479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202590.P1690593825492660479

/-!
# A202592: a(n) = number of distinct (0,2)-graphs of vertex degree (or valency) n.

The programs for A202592, there is no canonical definition to state claims against.
-/

/-! ## A202592.P1942300791446313934

`A282742(n)+A282741(n)`
-/

namespace A202592.P1942300791446313934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282742 n + A282741 n

end

end A202592.P1942300791446313934

/-! ## A202592.P10712959985725892796

`A282741(n)+round((exp(n+1)/A008864(n+1)²)²)`
-/

namespace A202592.P10712959985725892796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282741 n + SequenceMachineLib.roundAway ((Real.exp (n + 1 : ℝ) / (A008864 (n + 1) ^ 2 : ℝ)) ^ 2)

end

end A202592.P10712959985725892796

/-! ## A202592.P3533619786359608944

`A282742(n)+A126337(A056514(n+1))`
-/

namespace A202592.P3533619786359608944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282742 n + A126337 (A056514 (n + 1)).toNat

end

end A202592.P3533619786359608944

/-! ## A202592.P1588701544750309236

`A282742(n)+A110794(A219752(n)+1)`
-/

namespace A202592.P1588701544750309236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282742 n + A110794 (A219752 n + 1).toNat

end

end A202592.P1588701544750309236

/-! ## A202592.P6915604726325319297

`A282742(n)+A081607(A335470(n+1))`
-/

namespace A202592.P6915604726325319297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282742 n + A081607 (A335470 (n + 1)).toNat

end

end A202592.P6915604726325319297

/-!
# A202593: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202593, there is no canonical definition to state claims against.
-/

/-! ## A202593.P16097348549265258225

`A202601((n+1)²+n²)`
-/

namespace A202593.P16097348549265258225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 ((n + 1) ^ 2 + n ^ 2)

end

end A202593.P16097348549265258225

/-! ## A202593.P12066155153397895693

`lcm(2, A202601(A001844(n)))`
-/

namespace A202593.P12066155153397895693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202601 (A001844 n).toNat)

end

end A202593.P12066155153397895693

/-! ## A202593.P8606674362186986492

`record[gcd(A114327(n), A202601(n+1))]`
-/

namespace A202593.P8606674362186986492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A202601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202593.P8606674362186986492

/-! ## A202593.P18339234251510460510

`A202601(A001844(n))+A185238(n)`
-/

namespace A202593.P18339234251510460510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A001844 n).toNat + A185238 n

end

end A202593.P18339234251510460510

/-! ## A202593.P2619400207931075047

`A202601(A001844(n))+A008683(A016946(n))`
-/

namespace A202593.P2619400207931075047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A001844 n).toNat + A008683 (A016946 n).toNat

end

end A202593.P2619400207931075047

/-!
# A202594: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202594, there is no canonical definition to state claims against.
-/

/-! ## A202594.P12544110155287846195

`A202601(∑[n]+1)`
-/

namespace A202594.P12544110155287846195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202594.P12544110155287846195

/-! ## A202594.P3932322737353239233

`lcm(2, A202601(A000124(n)))`
-/

namespace A202594.P3932322737353239233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202601 (A000124 n).toNat)

end

end A202594.P3932322737353239233

/-! ## A202594.P11479812076715981662

`record[root(A202601(n+1), A052509(n))]`
-/

namespace A202594.P11479812076715981662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202601 (n + 1) : ℝ) ^ (1 / (A052509 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202594.P11479812076715981662

/-! ## A202594.P17357803594942593384

`record[gcd(A002262(n), A202601(n+1))]`
-/

namespace A202594.P17357803594942593384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202594.P17357803594942593384

/-!
# A202595: Number of (n+2) X 4 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202595, there is no canonical definition to state claims against.
-/

/-! ## A202595.P6462720112031450010

`A202601(∑[n+1]+2)`
-/

namespace A202595.P6462720112031450010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202595.P6462720112031450010

/-! ## A202595.P8942704303768375889

`record[gcd(A002262(n), A202601(n+2))]`
-/

namespace A202595.P8942704303768375889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A202601 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202595.P8942704303768375889

/-! ## A202595.P9588272819804291050

`record[gcd(A202601(n+3), A348576(n+1))]`
-/

namespace A202595.P9588272819804291050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202601 (n + 3)) (A348576 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202595.P9588272819804291050

/-! ## A202595.P6967416347525663407

`record[A202601(Δ[A003453(n+5)])]`
-/

namespace A202595.P6967416347525663407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202595.P6967416347525663407

/-!
# A202596: Number of (n+2)X5 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202596, there is no canonical definition to state claims against.
-/

/-! ## A202596.P15366608146657779398

`A202601(∑[n+2]+4)`
-/

namespace A202596.P15366608146657779398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202596.P15366608146657779398

/-! ## A202596.P17138254002836123854

`lcm(2, A202601(A167614(n+1)))`
-/

namespace A202596.P17138254002836123854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202601 (A167614 (n + 1)).toNat)

end

end A202596.P17138254002836123854

/-! ## A202596.P7363765117015534937

`A202601(A167614(n+1))+A185245(n)`
-/

namespace A202596.P7363765117015534937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A167614 (n + 1)).toNat + A185245 n

end

end A202596.P7363765117015534937

/-! ## A202596.P15639273750854595186

`A202601(A167614(n+1))+A072769(n+1)`
-/

namespace A202596.P15639273750854595186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A167614 (n + 1)).toNat + A072769 (n + 1)

end

end A202596.P15639273750854595186

/-! ## A202596.P3777004060611986854

`A202601(A167614(n+1))%A202597(n+1)`
-/

namespace A202596.P3777004060611986854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202601 (A167614 (n + 1)).toNat) (A202597 (n + 1))

end

end A202596.P3777004060611986854

/-!
# A202597: Number of (n+2)X6 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202597, there is no canonical definition to state claims against.
-/

/-! ## A202597.P12371723076721198886

`A202601(A374004(n+1))`
-/

namespace A202597.P12371723076721198886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A374004 (n + 1)).toNat

end

end A202597.P12371723076721198886

/-! ## A202597.P14069304266796942502

`A202601(A141214(n)+7)`
-/

namespace A202597.P14069304266796942502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A141214 n + 7).toNat

end

end A202597.P14069304266796942502

/-! ## A202597.P14092909502613928986

`A202601(A052905(n)+9)`
-/

namespace A202597.P14092909502613928986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A052905 n + 9).toNat

end

end A202597.P14092909502613928986

/-! ## A202597.P11442813496813673544

`A202601(A055999(n)+10)`
-/

namespace A202597.P11442813496813673544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A055999 n + 10).toNat

end

end A202597.P11442813496813673544

/-! ## A202597.P9149904039787741314

`A202601(A167614(n+2)+1)`
-/

namespace A202597.P9149904039787741314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A167614 (n + 2) + 1).toNat

end

end A202597.P9149904039787741314

/-!
# A202598: Number of (n+2)X7 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202598, there is no canonical definition to state claims against.
-/

/-! ## A202598.P15484183005712901076

`A202601(A374005(n+1))`
-/

namespace A202598.P15484183005712901076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A374005 (n + 1)).toNat

end

end A202598.P15484183005712901076

/-! ## A202598.P1495061352693048013

`A202601(A056000(n)+15)`
-/

namespace A202598.P1495061352693048013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A056000 n + 15).toNat

end

end A202598.P1495061352693048013

/-! ## A202598.P16586045670985306423

`A202601(eq[6, A131818(n+1)])`
-/

namespace A202598.P16586045670985306423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202598.P16586045670985306423

/-! ## A202598.P8271112784968210222

`A202601(A166136(n+1)+A020739(n))`
-/

namespace A202598.P8271112784968210222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A166136 (n + 1) + A020739 n).toNat

end

end A202598.P8271112784968210222

/-! ## A202598.P845245308861439851

`A202601(Δ[A264443(n)])`
-/

namespace A202598.P845245308861439851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (f1 (n + 1) - f1 n).toNat

end

end A202598.P845245308861439851

/-!
# A202599: Number of (n+2)X8 binary arrays avoiding patterns 001 and 000 in rows and columns.

The programs for A202599, there is no canonical definition to state claims against.
-/

/-! ## A202599.P15872024474197295975

`A202601(A374007(n+1))`
-/

namespace A202599.P15872024474197295975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A374007 (n + 1)).toNat

end

end A202599.P15872024474197295975

/-! ## A202599.P12893254229989058423

`A202601(A052905(n+3))`
-/

namespace A202599.P12893254229989058423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (A052905 (n + 3)).toNat

end

end A202599.P12893254229989058423

/-! ## A202599.P17185037740810163270

`A202601(eq[3, A219347(n)])`
-/

namespace A202599.P17185037740810163270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202599.P17185037740810163270

/-! ## A202599.P10066051656588773759

`A202601(eq[5, A193592(n)])`
-/

namespace A202599.P10066051656588773759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202599.P10066051656588773759

/-! ## A202599.P5483631503261246172

`A202601(eq[16, A057728(n+1)])`
-/

namespace A202599.P5483631503261246172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202599.P5483631503261246172

