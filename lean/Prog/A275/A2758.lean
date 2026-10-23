import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275800: n such that A275391(n) = n-2.

The programs for A275800, there is no canonical definition to state claims against.
-/

/-! ## A275800.P10899143832746716449

`eq[n, A275391(n+2)]+2`
-/

namespace A275800.P10899143832746716449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275391 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A275800.P10899143832746716449

/-!
# A275801: Number of alternating permutations of the multiset {1,1,2,2,...,n,n}.

The programs for A275801, there is no canonical definition to state claims against.
-/

/-! ## A275801.P4800872825970689604

`A275784(∑[n+3])`
-/

namespace A275801.P4800872825970689604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275801.P4800872825970689604

/-! ## A275801.P13975055172224517791

`gcd(A000038(n), A275784(A141214(n)))`
-/

namespace A275801.P13975055172224517791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275784 (A141214 n).toNat)

end

end A275801.P13975055172224517791

/-! ## A275801.P9614411044100323875

`lcm(A010685(n), A275784(A141214(n)))`
-/

namespace A275801.P9614411044100323875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A275784 (A141214 n).toNat)

end

end A275801.P9614411044100323875

/-! ## A275801.P15324692289354225965

`or(A000007(n), A275784(A141214(n)))`
-/

namespace A275801.P15324692289354225965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275784 (A141214 n).toNat)

end

end A275801.P15324692289354225965

/-! ## A275801.P1119129821917448110

`or(A055641(n), A275784(A141214(n)))`
-/

namespace A275801.P1119129821917448110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A275784 (A141214 n).toNat)

end

end A275801.P1119129821917448110

/-!
# A275802: Numbers k such that (76*10^k + 167)/9 is prime.

The programs for A275802, there is no canonical definition to state claims against.
-/

/-! ## A275802.P14399362293919189337

`eq[A029300(n), A029347(A029326(n+4))]`
-/

namespace A275802.P14399362293919189337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (A029326 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275802.P14399362293919189337

/-! ## A275802.P13885659229790527674

`∑[dr(A003557(A243543(n+1)))]`
-/

namespace A275802.P13885659229790527674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003557 (A243543 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275802.P13885659229790527674

/-! ## A275802.P5828334307626440250

`eq[A103627(A025065(n)), A103627(n)]`
-/

namespace A275802.P5828334307626440250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A025065 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275802.P5828334307626440250

/-! ## A275802.P11797885392439323953

`A336694(A084898(n+1))+A000041(n)`
-/

namespace A275802.P11797885392439323953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336694 (A084898 (n + 1)).toNat + A000041 n

end

end A275802.P11797885392439323953

/-! ## A275802.P11968890459541224030

`A325534(n+2)+A322389(A002522(n))`
-/

namespace A275802.P11968890459541224030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 2) + A322389 (A002522 n).toNat

end

end A275802.P11968890459541224030

/-!
# A275803: a(n) = A051903(A275725(n)); maximal cycle sizes of finite permutations listed in the order A060117 / A060118.

The programs for A275803, there is no canonical definition to state claims against.
-/

/-! ## A275803.P15837787267640324060

`A051903(A275725(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275803.P15837787267640324060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A275725 n).toNat

end

end A275803.P15837787267640324060

/-! ## A275803.P3967844021256969136

`val(A278225(n), 2)`
-/

namespace A275803.P3967844021256969136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278225 n).toNat 2

end

end A275803.P3967844021256969136

/-! ## A275803.P6082815718420758300

`val(A290096(A060119(n)), 2)`
-/

namespace A275803.P6082815718420758300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290096 (A060119 n).toNat).toNat 2

end

end A275803.P6082815718420758300

/-! ## A275803.P13993187336272214879

`A051903(A278225(n))`
-/

namespace A275803.P13993187336272214879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278225 n).toNat

end

end A275803.P13993187336272214879

/-! ## A275803.P7788180678509553870

`A007814(2*A278225(n))-1`
-/

namespace A275803.P7788180678509553870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A278225 n).toNat - 1

end

end A275803.P7788180678509553870

/-! ## A275803.P2312030300819763551

`A007814(A278225(n)/2)+1`
-/

namespace A275803.P2312030300819763551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A278225 n : ℚ) / 2)).toNat + 1

end

end A275803.P2312030300819763551

/-! ## A275803.P2132162328776390506

`A204988(A278225((n+n)/2))`
-/

namespace A275803.P2132162328776390506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A278225 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat).toNat

end

end A275803.P2132162328776390506

/-! ## A275803.P11809943184445966501

`A204988(2*A278225(n)-A278225(n))`
-/

namespace A275803.P11809943184445966501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (2 * A278225 n - A278225 n).toNat

end

end A275803.P11809943184445966501

/-! ## A275803.P17853685937217087682

`A007814(2*n+1)+A007814(A278225(n))`
-/

namespace A275803.P17853685937217087682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + A007814 (A278225 n).toNat

end

end A275803.P17853685937217087682

/-! ## A275803.P11051754179146837707

`A204988(A204988(2*n+1)*A278225(n))`
-/

namespace A275803.P11051754179146837707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A204988 (2 * n + 1) * A278225 n).toNat

end

end A275803.P11051754179146837707

/-! ## A275803.P5447798469084296259

`A375040(A275807(n))`
-/

namespace A275803.P5447798469084296259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (A275807 n).toNat

end

end A275803.P5447798469084296259

/-! ## A275803.P13057425196654263087

`A204988(2*A278225(n))-1`
-/

namespace A275803.P13057425196654263087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (2 * A278225 n).toNat - 1

end

end A275803.P13057425196654263087

/-! ## A275803.P17795367558090229503

`A007814(A278225(n)+2*A278225(n))`
-/

namespace A275803.P17795367558090229503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278225 n + 2 * A278225 n).toNat

end

end A275803.P17795367558090229503

/-! ## A275803.P15441004875267511836

`A204988(A278225(n)+2*A278225(n))`
-/

namespace A275803.P15441004875267511836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A278225 n + 2 * A278225 n).toNat

end

end A275803.P15441004875267511836

/-!
# A275804: Numbers with at most one nonzero digit on each digit slope of the factorial base representation of n.

The programs for A275804, there is no canonical definition to state claims against.
-/

/-! ## A275804.P2979141366553475635

`eq[0, A275947(n)]`
-/

namespace A275804.P2979141366553475635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275804.P2979141366553475635

/-! ## A275804.P17925533495242877288

`eq[0, A275962(n)]`
-/

namespace A275804.P17925533495242877288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275804.P17925533495242877288

/-! ## A275804.P3440245878945271651

`lt[A275811(n), 2]`
-/

namespace A275804.P3440245878945271651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275804.P3440245878945271651

/-! ## A275804.P12972382395141614192

`eq[A060128(n), A060500(n)]`
-/

namespace A275804.P12972382395141614192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P12972382395141614192

/-! ## A275804.P2681230084346247609

`eq[A060130(n), A060502(n)]`
-/

namespace A275804.P2681230084346247609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P2681230084346247609

/-! ## A275804.P3444600120826843945

`eq[A060130(n), A275946(n)]`
-/

namespace A275804.P3444600120826843945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P3444600120826843945

/-! ## A275804.P11744318415030778949

`eq[A060502(n), A275946(n)]`
-/

namespace A275804.P11744318415030778949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P11744318415030778949

/-! ## A275804.P16351092180387138007

`eq[A275728(n), A275808(n)]`
-/

namespace A275804.P16351092180387138007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P16351092180387138007

/-! ## A275804.P6968761220199898705

`eq[A275728(n), A276010(n)]`
-/

namespace A275804.P6968761220199898705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P6968761220199898705

/-! ## A275804.P16548671642693084607

`comp[A275805(n+1)]`
-/

namespace A275804.P16548671642693084607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275804.P16548671642693084607

/-! ## A275804.P7473061730029808435

`eq[A057427(n), A275811(n)]`
-/

namespace A275804.P7473061730029808435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P7473061730029808435

/-! ## A275804.P10993809165702337169

`lt[A275947(n), 1/A014648(n+1)]`
-/

namespace A275804.P10993809165702337169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A014648 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A275804.P10993809165702337169

/-! ## A275804.P14897004924100289651

`eq[A123578(n)*A275811(n), A123578(n)]`
-/

namespace A275804.P14897004924100289651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n * A275811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P14897004924100289651

/-! ## A275804.P10892011692542243905

`eq[A007913(A278234(n)), A278234(n)]`
-/

namespace A275804.P10892011692542243905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A278234 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P10892011692542243905

/-! ## A275804.P187263782095086206

`lt[A001222(A278234(n)), A275946(n)+1]`
-/

namespace A275804.P187263782095086206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278234 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275804.P187263782095086206

/-! ## A275804.P465304011832148422

`eq[A007913(A275734(n)), A275734(n)]`
-/

namespace A275804.P465304011832148422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A275734 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P465304011832148422

/-! ## A275804.P1037777624683898957

`lt[A001222(A275734(n)), A275946(n)+1]`
-/

namespace A275804.P1037777624683898957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275734 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275804.P1037777624683898957

/-! ## A275804.P4144000736134126212

`lt[n*A275964(A225901(n)), 1]`
-/

namespace A275804.P4144000736134126212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A275964 (A225901 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275804.P4144000736134126212

/-! ## A275804.P12035465211733400250

`eq[A060502(n), A060502(A225901(n)+n)]`
-/

namespace A275804.P12035465211733400250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275804.P12035465211733400250

/-! ## A275804.P6567538471166605553

`lt[(A087787(n)*A275962(n))², 1]`
-/

namespace A275804.P6567538471166605553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087787 n * A275962 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275804.P6567538471166605553

/-!
# A275805: Indices of nonsquarefree terms in A275734; numbers with at least one digit slope (in their factorial base representation) with multiple nonzero digits. (See comments for the exact definition).

The programs for A275805, there is no canonical definition to state claims against.
-/

/-! ## A275805.P7614113443276943973

`comp[A275804(n)]`
-/

namespace A275805.P7614113443276943973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275805.P7614113443276943973

/-! ## A275805.P17663894520156591271

`lt[1, A275811(n)]`
-/

namespace A275805.P17663894520156591271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275805.P17663894520156591271

/-! ## A275805.P12517490175751148318

`lt[1, A275962(n)]`
-/

namespace A275805.P12517490175751148318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275805.P12517490175751148318

/-! ## A275805.P17044633359792620484

`lt[log(2), A275947(n)]`
-/

namespace A275805.P17044633359792620484
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A275805.P17044633359792620484

/-! ## A275805.P3957633947262535492

`lt[A275946(n), A060130(n)]`
-/

namespace A275805.P3957633947262535492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275805.P3957633947262535492

/-! ## A275805.P12607374700079590738

`eq[1, A000010(a(A275947(n)))]` with `a(0)=3`
-/

namespace A275805.P12607374700079590738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A275947 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275805.P12607374700079590738

/-! ## A275805.P865477638661828585

`lt[A014648(n+1), A275947(n)+A014648(n+1)]`
-/

namespace A275805.P865477638661828585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n + A014648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275805.P865477638661828585

/-! ## A275805.P11154582751114635121

`lt[A275946(n), A001222(A278234(n))]`
-/

namespace A275805.P11154582751114635121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275805.P11154582751114635121

/-! ## A275805.P12709289042405902517

`lt[A275946(n), A001222(A275734(n))]`
-/

namespace A275805.P12709289042405902517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275805.P12709289042405902517

/-! ## A275805.P9190239923146850226

`lt[1, A275964(A225901(n))]`
-/

namespace A275805.P9190239923146850226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275805.P9190239923146850226

/-!
# A275806: a(n) = number of distinct nonzero digits in factorial base representation of n.

The programs for A275806, there is no canonical definition to state claims against.
-/

/-! ## A275806.P17626317216348421921

`A001221(A275735(n))`
-/

namespace A275806.P17626317216348421921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275735 n).toNat

end

end A275806.P17626317216348421921

/-! ## A275806.P9620582426897502846

`A060502(A225901(n))`
-/

namespace A275806.P9620582426897502846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n).toNat

end

end A275806.P9620582426897502846

/-! ## A275806.P6735587854116067150

`A001221(A278235(n))`
-/

namespace A275806.P6735587854116067150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278235 n).toNat

end

end A275806.P6735587854116067150

/-! ## A275806.P12536401820955898694

`A275949(n)+A275948(n)`
-/

namespace A275806.P12536401820955898694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n + A275948 n

end

end A275806.P12536401820955898694

/-! ## A275806.P8663172828396367377

`A084558(n)-A275850(n)`
-/

namespace A275806.P8663172828396367377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275850 n

end

end A275806.P8663172828396367377

/-! ## A275806.P384966844361139695

`A060130(n)+A275949(n)-A275964(n)`
-/

namespace A275806.P384966844361139695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A275949 n - A275964 n)

end

end A275806.P384966844361139695

/-! ## A275806.P8248719851887235019

`A060502(n)+A275849(n)-A275850(n)`
-/

namespace A275806.P8248719851887235019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + (A275849 n - A275850 n)

end

end A275806.P8248719851887235019

/-! ## A275806.P4281569894319102649

`A060130(A348138(n))`
-/

namespace A275806.P4281569894319102649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A348138 n).toNat

end

end A275806.P4281569894319102649

/-! ## A275806.P10468225858613684817

`A060500(A275958(n))`
-/

namespace A275806.P10468225858613684817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A275958 n).toNat

end

end A275806.P10468225858613684817

/-! ## A275806.P17857380461764106933

`A060502(A275957(A060125(n)))`
-/

namespace A275806.P17857380461764106933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A275957 (A060125 n).toNat).toNat

end

end A275806.P17857380461764106933

/-! ## A275806.P9837561209971441568

`A275948(n)+A275947(A225901(n))`
-/

namespace A275806.P9837561209971441568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n + A275947 (A225901 n).toNat

end

end A275806.P9837561209971441568

/-! ## A275806.P4480590601119923996

`A275949(n)+A275946(A225901(n))`
-/

namespace A275806.P4480590601119923996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n + A275946 (A225901 n).toNat

end

end A275806.P4480590601119923996

/-! ## A275806.P12139092371655594168

`A084558(n)-A275849(A225901(n))`
-/

namespace A275806.P12139092371655594168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275849 (A225901 n).toNat

end

end A275806.P12139092371655594168

/-! ## A275806.P460265769889301968

`A275850(A225901(n)+n)-A275850(n)`
-/

namespace A275806.P460265769889301968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A225901 n + (n : ℤ)).toNat - A275850 n

end

end A275806.P460265769889301968

/-! ## A275806.P3653660811086076098

`A275948(n)+A056170(A278235(n))`
-/

namespace A275806.P3653660811086076098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n + A056170 (A278235 n).toNat

end

end A275806.P3653660811086076098

/-! ## A275806.P9054268130269585861

`A275949(n)+A056169(A278235(n))`
-/

namespace A275806.P9054268130269585861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n + A056169 (A278235 n).toNat

end

end A275806.P9054268130269585861

/-! ## A275806.P12243508561812745582

`A275948(n)+A056170(A275735(n))`
-/

namespace A275806.P12243508561812745582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n + A056170 (A275735 n).toNat

end

end A275806.P12243508561812745582

/-! ## A275806.P17646800407312189999

`A275949(n)+A056169(A275735(n))`
-/

namespace A275806.P17646800407312189999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n + A056169 (A275735 n).toNat

end

end A275806.P17646800407312189999

/-! ## A275806.P2761829694579234080

`A034968(A348138(A348138(A153880(n))))`
-/

namespace A275806.P2761829694579234080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A348138 (A348138 (A153880 n).toNat).toNat).toNat

end

end A275806.P2761829694579234080

/-! ## A275806.P2189754823066163796

`A001221(∏{e}[A278236(n), A000040(#)])`
-/

namespace A275806.P2189754823066163796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A275806.P2189754823066163796

/-!
# A275807: a(n) = A275725(n)/2.

The programs for A275807, there is no canonical definition to state claims against.
-/

/-! ## A275807.P460714822479385720

`A275725(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275807.P460714822479385720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275725 n : ℚ) / 2

end

end A275807.P460714822479385720

/-! ## A275807.P9720965289419010611

`A290095(A060119(n))/2`
-/

namespace A275807.P9720965289419010611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290095 (A060119 n).toNat : ℚ) / 2

end

end A275807.P9720965289419010611

/-! ## A275807.P9106915770850778315

`A290095(A060120(n))/2`
-/

namespace A275807.P9106915770850778315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290095 (A060120 n).toNat : ℚ) / 2

end

end A275807.P9106915770850778315

/-! ## A275807.P3945626821090314538

`A014682(A275725(n))`
-/

namespace A275807.P3945626821090314538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A275725 n).toNat

end

end A275807.P3945626821090314538

/-! ## A275807.P1152360689583098675

`A328399(A275725(n)-2)`
-/

namespace A275807.P1152360689583098675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A275725 n - 2).toNat

end

end A275807.P1152360689583098675

/-! ## A275807.P17774479234816761241

`∑{d}[A275725(n), A300236(#)]`
-/

namespace A275807.P17774479234816761241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300236 d

end

end A275807.P17774479234816761241

/-! ## A275807.P12298393294820613927

`∑{d}[A275725(n), A300721(#)]`
-/

namespace A275807.P12298393294820613927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300721 d

end

end A275807.P12298393294820613927

/-! ## A275807.P7348357435813038861

`gcd(A000217(A275725(n)-1), A275725(n))`
-/

namespace A275807.P7348357435813038861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A275725 n - 1).toNat) (A275725 n)

end

end A275807.P7348357435813038861

/-! ## A275807.P13821757021850442603

`A000463(A275725(n)-1)`
-/

namespace A275807.P13821757021850442603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A275725 n - 1).toNat

end

end A275807.P13821757021850442603

/-! ## A275807.P2177624844975350623

`A008619(A275725(n)-1)`
-/

namespace A275807.P2177624844975350623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A275725 n - 1).toNat

end

end A275807.P2177624844975350623

/-! ## A275807.P4952355868509549363

`A008615(3*A275725(n))`
-/

namespace A275807.P4952355868509549363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A275725 n).toNat

end

end A275807.P4952355868509549363

/-! ## A275807.P1546794520151450331

`A001281(A275725(n)+2)-1`
-/

namespace A275807.P1546794520151450331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A275725 n + 2).toNat - 1

end

end A275807.P1546794520151450331

/-! ## A275807.P9893941600040108404

`A004525(A275725(n)+2)-1`
-/

namespace A275807.P9893941600040108404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A275725 n + 2).toNat - 1

end

end A275807.P9893941600040108404

/-! ## A275807.P17307038961506335063

`A029578(A275725(n)+2)-1`
-/

namespace A275807.P17307038961506335063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A275725 n + 2).toNat - 1

end

end A275807.P17307038961506335063

/-! ## A275807.P318980825583279432

`A029578(A275725(2*n-n))`
-/

namespace A275807.P318980825583279432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A275725 (2 * n - n)).toNat

end

end A275807.P318980825583279432

/-! ## A275807.P9445254769212444119

`A004525(A275725(A004525(2*n)))`
-/

namespace A275807.P9445254769212444119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A275725 (A004525 (2 * n)).toNat).toNat

end

end A275807.P9445254769212444119

/-! ## A275807.P7231209249425767932

`A001281(2*A275725(n)-A275725(n))`
-/

namespace A275807.P7231209249425767932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A275725 n - A275725 n).toNat

end

end A275807.P7231209249425767932

/-!
# A275808: a(0) = 0, for n >= 1, a(n) = A275736(n) XOR a(A257684(n)), where XOR is given by A003987.

The programs for A275808, there is no canonical definition to state claims against.
-/

/-! ## A275808.P4840505046586605270

`A248663(A275734(n))`
-/

namespace A275808.P4840505046586605270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A275734 n).toNat

end

end A275808.P4840505046586605270

/-! ## A275808.P16065572843674889324

`xor(a(A257684(n)), A275736(n))` with `a(0)=0`
-/

namespace A275808.P16065572843674889324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (A257684 n).toNat) (A275736 n)

end

end A275808.P16065572843674889324

/-! ## A275808.P8997198922773331424

`A275736(A060126(n))%p?[A007318(n)]`
-/

namespace A275808.P8997198922773331424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275736 (A060126 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275808.P8997198922773331424

/-! ## A275808.P4914840064449644649

`A275736(A060119(n)%A018524(n+1))`
-/

namespace A275808.P4914840064449644649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 (Int.tmod (A060119 n) (A018524 (n + 1))).toNat

end

end A275808.P4914840064449644649

/-!
# A275809: Indices of zeros in A275808.

The programs for A275809, there is no canonical definition to state claims against.
-/

/-! ## A275809.P952590811166875401

`eq[0, A275808(n)]`
-/

namespace A275809.P952590811166875401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275809.P952590811166875401

/-! ## A275809.P8455397456228906961

`A275810((2*n)%(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A275809.P8455397456228906961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275810 (2 * n % (n + 1) + 1) + a (n - 1)

end

end A275809.P8455397456228906961

/-! ## A275809.P309608128137331243

`∑[A275810(n+1)]-A275810(n+1)`
-/

namespace A275809.P309608128137331243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275810 (n + 1)

end

end A275809.P309608128137331243

/-! ## A275809.P10891507389444207923

`eq[1, A007913(A275734(n))]`
-/

namespace A275809.P10891507389444207923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275809.P10891507389444207923

/-! ## A275809.P10235113851420068367

`eq[1, A007913(A278234(n))]`
-/

namespace A275809.P10235113851420068367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A278234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275809.P10235113851420068367

/-! ## A275809.P5119667799628400897

`eq[A071975(A275734(n)), A267870(n)]`
-/

namespace A275809.P5119667799628400897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A275734 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275809.P5119667799628400897

/-!
# A275810: First differences of A275809.

The programs for A275810, there is no canonical definition to state claims against.
-/

/-! ## A275810.P318780343418151189

`A275809(n+1)-A275809(n)`
-/

namespace A275810.P318780343418151189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275809 (n + 1) - A275809 n

end

end A275810.P318780343418151189

/-! ## A275810.P15068984569729507518

`Δ[A275809(n)]`
-/

namespace A275810.P15068984569729507518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275810.P15068984569729507518

/-! ## A275810.P14745563360819345026

`Δ[eq[0, A275808(n)]]`
-/

namespace A275810.P14745563360819345026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275808 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275810.P14745563360819345026

/-! ## A275810.P4522872014904288029

`Δ[eq[1, A007913(A275734(n))]]`
-/

namespace A275810.P4522872014904288029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A275734 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275810.P4522872014904288029

/-! ## A275810.P5350721733133408824

`Δ[eq[1, A007913(A278234(n))]]`
-/

namespace A275810.P5350721733133408824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A278234 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275810.P5350721733133408824

/-!
# A275811: Number of nonzero digits on a maximally occupied slope of factorial base representation of n: a(n) = A051903(A275734(n)). See comments for the definition.

The programs for A275811, there is no canonical definition to state claims against.
-/

/-! ## A275811.P5886790940857807855

`A051903(A275734(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275811.P5886790940857807855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A275734 n).toNat

end

end A275811.P5886790940857807855

/-! ## A275811.P6335683214487625275

`A264990(A225901(n))`
-/

namespace A275811.P6335683214487625275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (A225901 n).toNat

end

end A275811.P6335683214487625275

/-! ## A275811.P280816381004757528

`val(A278234(n), 2)`
-/

namespace A275811.P280816381004757528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278234 n).toNat 2

end

end A275811.P280816381004757528

/-! ## A275811.P2854596717717977276

`A051903(A278234(n))`
-/

namespace A275811.P2854596717717977276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278234 n).toNat

end

end A275811.P2854596717717977276

/-! ## A275811.P7737563326030597115

`A051903(A278235(A225901(2*n-n)))`
-/

namespace A275811.P7737563326030597115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278235 (A225901 (2 * n - n)).toNat).toNat

end

end A275811.P7737563326030597115

/-! ## A275811.P14026680258726933568

`A007814(2*A278234(n))-1`
-/

namespace A275811.P14026680258726933568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A278234 n).toNat - 1

end

end A275811.P14026680258726933568

/-! ## A275811.P5382060694004193194

`A007814(A278234(n)+2*A278234(n))`
-/

namespace A275811.P5382060694004193194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278234 n + 2 * A278234 n).toNat

end

end A275811.P5382060694004193194

/-!
# A275812: Sum of exponents larger than one in the prime factorization of n: A001222(n) - A056169(n).

The programs for A275812, the canonical program `A275812.P13506188268199266465` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275812 has offset 1).

The definition of A275812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275812.P17232215101801680691

`A001222(A057521(n+1))`
-/

namespace A275812.P17232215101801680691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A057521 (n + 1)).toNat

end

end A275812.P17232215101801680691

namespace A275812

/-- `A001222(A057521(n+1))` -/
def P17232215101801680691.Spec : Prop :=
  ∀ n, P17232215101801680691.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P13901507499829659889

`A046660(n+1)+A056170(n+1)`
-/

namespace A275812.P13901507499829659889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A056170 (n + 1)

end

end A275812.P13901507499829659889

namespace A275812

/-- `A046660(n+1)+A056170(n+1)` -/
def P13901507499829659889.Spec : Prop :=
  ∀ n, P13901507499829659889.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P13506188268199266465

`A001222(n+1)-A056169(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A275812

/-- `A001222(n+1)-A056169(n+1)` -/
def P13506188268199266465.Spec : Prop :=
  ∀ n, P13506188268199266465.a n = A275812 (n + 1)

theorem P13506188268199266465.correct : P13506188268199266465.Spec := by
  intro n
  simp only [A275812, Nat.add_sub_cancel]

end A275812

/-! ## A275812.P5667727174088670629

`∑{e}[n+1, #%#²]`
-/

namespace A275812.P5667727174088670629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2

end

end A275812.P5667727174088670629

namespace A275812

/-- `∑{e}[n+1, #%#²]` -/
def P5667727174088670629.Spec : Prop :=
  ∀ n, (P5667727174088670629.a n : ℤ) = A275812 (n + 1)

end A275812

/-! ## A275812.P10025559795001575926

`∑{e}[n+1, #-floor(1/#)]`
-/

namespace A275812.P10025559795001575926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A275812.P10025559795001575926

namespace A275812

/-- `∑{e}[n+1, #-floor(1/#)]` -/
def P10025559795001575926.Spec : Prop :=
  ∀ n, P10025559795001575926.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P8624887575370884811

`A001222(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A275812.P8624887575370884811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A275812.P8624887575370884811

namespace A275812

/-- `A001222(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P8624887575370884811.Spec : Prop :=
  ∀ n, P8624887575370884811.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P17280580003062674317

`A001222((n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A275812.P17280580003062674317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A275812.P17280580003062674317

namespace A275812

/-- `A001222((n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P17280580003062674317.Spec : Prop :=
  ∀ n, P17280580003062674317.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P14024251458497396299

`A080256(A003557(n+1))`
-/

namespace A275812.P14024251458497396299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A003557 (n + 1)).toNat

end

end A275812.P14024251458497396299

namespace A275812

/-- `A080256(A003557(n+1))` -/
def P14024251458497396299.Spec : Prop :=
  ∀ n, P14024251458497396299.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P7291942171236384821

`A001222(A212173(n+1))`
-/

namespace A275812.P7291942171236384821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A212173 (n + 1)).toNat

end

end A275812.P7291942171236384821

namespace A275812

/-- `A001222(A212173(n+1))` -/
def P7291942171236384821.Spec : Prop :=
  ∀ n, P7291942171236384821.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P765180457504208035

`A080256(A292589(n+1))`
-/

namespace A275812.P765180457504208035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A292589 (n + 1)).toNat

end

end A275812.P765180457504208035

namespace A275812

/-- `A080256(A292589(n+1))` -/
def P765180457504208035.Spec : Prop :=
  ∀ n, P765180457504208035.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P14753762361870917153

`A338038(n+1)-A008472(n+1)`
-/

namespace A275812.P14753762361870917153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) - A008472 (n + 1)

end

end A275812.P14753762361870917153

namespace A275812

/-- `A338038(n+1)-A008472(n+1)` -/
def P14753762361870917153.Spec : Prop :=
  ∀ n, P14753762361870917153.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P14663680204277775937

`A238949(n+1)-A361205(n+1)`
-/

namespace A275812.P14663680204277775937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A361205 (n + 1)

end

end A275812.P14663680204277775937

namespace A275812

/-- `A238949(n+1)-A361205(n+1)` -/
def P14663680204277775937.Spec : Prop :=
  ∀ n, P14663680204277775937.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P449030000172597237

`A001222((n+1)/A055231(n+1))`
-/

namespace A275812.P449030000172597237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A275812.P449030000172597237

namespace A275812

/-- `A001222((n+1)/A055231(n+1))` -/
def P449030000172597237.Spec : Prop :=
  ∀ n, P449030000172597237.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P12023872241232480639

`A001222(n+1)-val(A073184(n+1), 2)`
-/

namespace A275812.P12023872241232480639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (SequenceMachineLib.valuation (A073184 (n + 1)).toNat 2 : ℤ)

end

end A275812.P12023872241232480639

namespace A275812

/-- `A001222(n+1)-val(A073184(n+1), 2)` -/
def P12023872241232480639.Spec : Prop :=
  ∀ n, P12023872241232480639.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P11368175846092656168

`A001222(A046056(A000688(n+1)))`
-/

namespace A275812.P11368175846092656168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046056 (A000688 (n + 1)).toNat).toNat

end

end A275812.P11368175846092656168

namespace A275812

/-- `A001222(A046056(A000688(n+1)))` -/
def P11368175846092656168.Spec : Prop :=
  ∀ n, P11368175846092656168.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P15197157353916025635

`A046660(n+1)+A001221(A003557(n+1))`
-/

namespace A275812.P15197157353916025635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A001221 (A003557 (n + 1)).toNat

end

end A275812.P15197157353916025635

namespace A275812

/-- `A046660(n+1)+A001221(A003557(n+1))` -/
def P15197157353916025635.Spec : Prop :=
  ∀ n, P15197157353916025635.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P15270783223319997780

`A046660(A007948(n+1))+A046660(n+1)`
-/

namespace A275812.P15270783223319997780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A007948 (n + 1)).toNat + A046660 (n + 1)

end

end A275812.P15270783223319997780

namespace A275812

/-- `A046660(A007948(n+1))+A046660(n+1)` -/
def P15270783223319997780.Spec : Prop :=
  ∀ n, P15270783223319997780.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P11193361514763912086

`A001222(n+1)-A001222(A055231(n+1))`
-/

namespace A275812.P11193361514763912086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A055231 (n + 1)).toNat

end

end A275812.P11193361514763912086

namespace A275812

/-- `A001222(n+1)-A001222(A055231(n+1))` -/
def P11193361514763912086.Spec : Prop :=
  ∀ n, P11193361514763912086.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P12716684126955496623

`A001222(n+1)-A007814(A181819(n+1))`
-/

namespace A275812.P12716684126955496623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (A181819 (n + 1)).toNat

end

end A275812.P12716684126955496623

namespace A275812

/-- `A001222(n+1)-A007814(A181819(n+1))` -/
def P12716684126955496623.Spec : Prop :=
  ∀ n, P12716684126955496623.a n = A275812 (n + 1)

end A275812

/-! ## A275812.P18161597643083805833

`A001222(n+1)-A007814(A295878(n+1))`
-/

namespace A275812.P18161597643083805833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (A295878 (n + 1)).toNat

end

end A275812.P18161597643083805833

namespace A275812

/-- `A001222(n+1)-A007814(A295878(n+1))` -/
def P18161597643083805833.Spec : Prop :=
  ∀ n, P18161597643083805833.a n = A275812 (n + 1)

end A275812

/-!
# A275813: Positions of odd terms in A060131; indices of permutations of an odd order in tables A060117 & A060118.

The programs for A275813, there is no canonical definition to state claims against.
-/

/-! ## A275813.P5545255573749506027

`eq[0, A007814(A060131(n))]`
-/

namespace A275813.P5545255573749506027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P5545255573749506027

/-! ## A275813.P9510802144240873730

`eq[1, A039982(A060131(n)²)]`
-/

namespace A275813.P9510802144240873730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P9510802144240873730

/-! ## A275813.P12749563981149909078

`eq[1, A040204(A060131(n)²)]`
-/

namespace A275813.P12749563981149909078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040204 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P12749563981149909078

/-! ## A275813.P17280285231589142226

`eq[2, A000034(A060131(n)²)]`
-/

namespace A275813.P17280285231589142226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P17280285231589142226

/-! ## A275813.P8543211752191812651

`lt[1, A176895(A060131(n)²)]`
-/

namespace A275813.P8543211752191812651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275813.P8543211752191812651

/-! ## A275813.P15976440515595541795

`lt[A280193(A060131(n)²), 1]`
-/

namespace A275813.P15976440515595541795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275813.P15976440515595541795

/-! ## A275813.P18025670967743140607

`lt[A084181(A060131(n)²), 2]`
-/

namespace A275813.P18025670967743140607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275813.P18025670967743140607

/-! ## A275813.P4374074712864591083

`eq[1, A000034(A060131(n)+1)]`
-/

namespace A275813.P4374074712864591083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P4374074712864591083

/-! ## A275813.P9763444970380133639

`lt[A000035(A060131(n)+1), 1]`
-/

namespace A275813.P9763444970380133639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060131 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275813.P9763444970380133639

/-! ## A275813.P14695597267183051299

`eq[2, A020639(A060131(n)+1)]`
-/

namespace A275813.P14695597267183051299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P14695597267183051299

/-! ## A275813.P1883121389247008047

`eq[1, A040204(A060131(n)+2)]`
-/

namespace A275813.P1883121389247008047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040204 (A060131 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275813.P1883121389247008047

/-! ## A275813.P18108700035771971989

`lt[1, A084181(A060131(n)+1)]`
-/

namespace A275813.P18108700035771971989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275813.P18108700035771971989

/-! ## A275813.P2986693238314537340

`lt[1, A280193(A060131(n)+1)]`
-/

namespace A275813.P2986693238314537340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275813.P2986693238314537340

/-! ## A275813.P12408954906280616817

`lt[2, A176895(A060131(n)+2)]`
-/

namespace A275813.P12408954906280616817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A060131 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275813.P12408954906280616817

/-! ## A275813.P9997731856083357581

`lt[A133872(2*A060131(n)), 1]`
-/

namespace A275813.P9997731856083357581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * A060131 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275813.P9997731856083357581

/-! ## A275813.P14130215682314804195

`lt[1, A176895(2*A060131(n))]`
-/

namespace A275813.P14130215682314804195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275813.P14130215682314804195

/-! ## A275813.P14014935286759063773

`comp[A275814(n+1)]`
-/

namespace A275813.P14014935286759063773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275813.P14014935286759063773

/-! ## A275813.P14366540737384255337

`lt[A280193(A060131(n)), A133872(n)]`
-/

namespace A275813.P14366540737384255337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275813.P14366540737384255337

/-! ## A275813.P586828872845433605

`lt[A280193(A060131(n)), A000035(n)]`
-/

namespace A275813.P586828872845433605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275813.P586828872845433605

/-!
# A275814: Positions of even terms in A060131; indices of permutations of an even order in tables A060117 & A060118.

The programs for A275814, there is no canonical definition to state claims against.
-/

/-! ## A275814.P5222110778941889213

`comp[A275813(n)]`
-/

namespace A275814.P5222110778941889213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275814.P5222110778941889213

/-! ## A275814.P6394532198151904151

`eq[0, A000035(A060131(n))]`
-/

namespace A275814.P6394532198151904151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275814.P6394532198151904151

/-! ## A275814.P13266235603161166972

`eq[1, A230850(A060131(n)²)]`
-/

namespace A275814.P13266235603161166972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275814.P13266235603161166972

/-! ## A275814.P7612619929088872677

`lt[A000035(A060131(n)²), 1]`
-/

namespace A275814.P7612619929088872677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060131 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275814.P7612619929088872677

/-! ## A275814.P10661847730610948347

`eq[2, A020639(A060131(n)²)]`
-/

namespace A275814.P10661847730610948347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275814.P10661847730610948347

/-! ## A275814.P7859195710334511779

`lt[1, A084181(A060131(n)²)]`
-/

namespace A275814.P7859195710334511779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275814.P7859195710334511779

/-! ## A275814.P7039603613995156284

`lt[1, A280193(A060131(n)²)]`
-/

namespace A275814.P7039603613995156284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275814.P7039603613995156284

/-! ## A275814.P6922158093401108306

`lt[A176895(A060131(n)²), 2]`
-/

namespace A275814.P6922158093401108306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A060131 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275814.P6922158093401108306

/-! ## A275814.P4689383064460885553

`eq[1, A040204(A060131(n)+1)]`
-/

namespace A275814.P4689383064460885553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040204 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275814.P4689383064460885553

/-! ## A275814.P11216841584990492235

`eq[1, A078313(A060131(n)+2)]`
-/

namespace A275814.P11216841584990492235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078313 (A060131 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275814.P11216841584990492235

/-! ## A275814.P3639821261354153230

`lt[A280193(A060131(n)+1), 1]`
-/

namespace A275814.P3639821261354153230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275814.P3639821261354153230

/-! ## A275814.P4844883557141808097

`lt[A000035(A060131(n)+2), 1]`
-/

namespace A275814.P4844883557141808097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060131 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275814.P4844883557141808097

/-! ## A275814.P2439656540128321579

`lt[1, A084181(A060131(n)+2)]`
-/

namespace A275814.P2439656540128321579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275814.P2439656540128321579

/-! ## A275814.P8893404268349599665

`lt[2, A176895(A060131(n)+1)]`
-/

namespace A275814.P8893404268349599665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A060131 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275814.P8893404268349599665

/-! ## A275814.P10603884199346725137

`lt[A176895(2*A060131(n)), 2]`
-/

namespace A275814.P10603884199346725137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * A060131 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275814.P10603884199346725137

/-! ## A275814.P8301858681780712260

`lt[A105899(n), A084181(A060131(n))]`
-/

namespace A275814.P8301858681780712260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275814.P8301858681780712260

/-! ## A275814.P6627087203625814700

`lt[A176895(n), A084181(A060131(n))]`
-/

namespace A275814.P6627087203625814700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275814.P6627087203625814700

/-! ## A275814.P18148440168402125022

`lt[A000035(n), A280193(A060131(n))]`
-/

namespace A275814.P18148440168402125022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275814.P18148440168402125022

/-! ## A275814.P4982774148661926387

`lt[A133872(n), A280193(A060131(n))]`
-/

namespace A275814.P4982774148661926387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A060131 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275814.P4982774148661926387

/-!
# A275815: Maximum total number of possible moves that any number of queens of the same color can make on an n X n chessboard.

The programs for A275815, there is no canonical definition to state claims against.
-/

/-! ## A275815.P6308580326800623067

`∑[∑[A318283(A376028(n+1))]]`
-/

namespace A275815.P6308580326800623067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A376028 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275815.P6308580326800623067

/-! ## A275815.P7386460846289904514

`A130256(A371039(n))+A077414(n+1)`
-/

namespace A275815.P7386460846289904514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 (A371039 n).toNat + A077414 (n + 1)

end

end A275815.P7386460846289904514

/-!
# A275816: Least number k such that the number of its divisors is n times, with n>1, the number of its prime factors, counted without multiplicity.

The programs for A275816, there is no canonical definition to state claims against.
-/

/-! ## A275816.P519703466057716210

`A097000((n+1)^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A275816.P519703466057716210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097000 ((n + 1) ^ 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A275816.P519703466057716210

/-! ## A275816.P17519047764273853187

`A097000(A043315(n+1))`
-/

namespace A275816.P17519047764273853187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097000 (A043315 (n + 1)).toNat

end

end A275816.P17519047764273853187

/-! ## A275816.P15349939152059681576

`A097000(A044912(n+1))`
-/

namespace A275816.P15349939152059681576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097000 (A044912 (n + 1)).toNat

end

end A275816.P15349939152059681576

/-! ## A275816.P4751195792358496555

`A097000(A055649(n+1))`
-/

namespace A275816.P4751195792358496555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097000 (A055649 (n + 1)).toNat

end

end A275816.P4751195792358496555

/-! ## A275816.P9817449489847189330

`A097000(A061378(n+1))`
-/

namespace A275816.P9817449489847189330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097000 (A061378 (n + 1)).toNat

end

end A275816.P9817449489847189330

/-!
# A275817: Least positive integer s such that an integer square k^2 lies between s^2*n and s^2*(n+1), with s^2*n < k^2 < s^2*(n+1).

The programs for A275817, there is no canonical definition to state claims against.
-/

/-! ## A275817.P11412306350880405480

`A183162(n)+Δ[A048760(n)]`
-/

namespace A275817.P11412306350880405480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183162 n + (f1 (n + 1) - f1 n)

end

end A275817.P11412306350880405480

/-! ## A275817.P16144119880722363724

`Δ[A061887(n)]*A183162(n)`
-/

namespace A275817.P16144119880722363724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A183162 n

end

end A275817.P16144119880722363724

/-! ## A275817.P11626713661099796961

`lcm(Δ[A080883(n)], A183162(n))`
-/

namespace A275817.P11626713661099796961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A183162 n)

end

end A275817.P11626713661099796961

/-! ## A275817.P15989815444507058825

`A183162(n)+Δ[A000196(n)²]`
-/

namespace A275817.P15989815444507058825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183162 n + (f1 (n + 1) - f1 n)

end

end A275817.P15989815444507058825

/-! ## A275817.P17079325137250311327

`Δ[A061887(n)]+(A183162(n)-1)%A000040(n+1)`
-/

namespace A275817.P17079325137250311327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A183162 n - 1) (A000040 (n + 1))

end

end A275817.P17079325137250311327

/-! ## A275817.P9318398082753905332

`A056926(A235382(n²))*A183162(n)`
-/

namespace A275817.P9318398082753905332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A235382 (n ^ 2)).toNat * A183162 n

end

end A275817.P9318398082753905332

/-!
# A275819: Least number k such that the number of its divisors is n times the number of its prime factors, counted with multiplicity.

The programs for A275819, there is no canonical definition to state claims against.
-/

/-! ## A275819.P269486854098760366

`A278219(A250288(n+1)*A326743(n))`
-/

namespace A275819.P269486854098760366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A250288 (n + 1) * A326743 n).toNat

end

end A275819.P269486854098760366

/-!
# A275820: Expansion of Product_{k>=1} (1 + x^(2*k) + x^(3*k)).

The programs for A275820, there is no canonical definition to state claims against.
-/

/-! ## A275820.P14573818502787540550

`2^ceil(xor(1, n)/6)-A290109(A126646(n))`
-/

namespace A275820.P14573818502787540550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(Nat.xor 1 n : ℚ) / 6⌉ : ℤ) - (A290109 (A126646 n).toNat : ℚ)

end

end A275820.P14573818502787540550

/-! ## A275820.P4912674282634994231

`A023416(A027581(n)+floor(gcd(2, n)^(n+2)/3))`
-/

namespace A275820.P4912674282634994231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A027581 n + ⌊(Nat.gcd 2 n ^ (n + 2) : ℚ) / 3⌋).toNat

end

end A275820.P4912674282634994231

/-! ## A275820.P9462513949106032078

`or(A035179(A000079(n)), A147784(n))`
-/

namespace A275820.P9462513949106032078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035179 (A000079 n).toNat) (A147784 n)

end

end A275820.P9462513949106032078

/-! ## A275820.P17117384442891030005

`A042951(n)-A079978(A213243(n+1))`
-/

namespace A275820.P17117384442891030005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n - A079978 (A213243 (n + 1)).toNat

end

end A275820.P17117384442891030005

/-! ## A275820.P11561087192469945639

`or(A133872(A005917(n+1)), A147784(n))`
-/

namespace A275820.P11561087192469945639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133872 (A005917 (n + 1)).toNat) (A147784 n)

end

end A275820.P11561087192469945639

/-!
# A275821: Expansion of Product_{k>=1} (1 + x^(2*k) - x^(3*k)).

The programs for A275821, there is no canonical definition to state claims against.
-/

/-! ## A275821.P12022348574290204826

`A325939(A022831(n+1)%A145154(A098011(n+1)))`
-/

namespace A275821.P12022348574290204826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (Int.tmod (A022831 (n + 1)) (A145154 (A098011 (n + 1)).toNat)).toNat

end

end A275821.P12022348574290204826

/-! ## A275821.P8992563554173074303

`A113297(A187829(n+2))+A010054(2*n+1)`
-/

namespace A275821.P8992563554173074303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113297 (A187829 (n + 2)).toNat + A010054 (2 * n + 1)

end

end A275821.P8992563554173074303

/-! ## A275821.P3390864379593054824

`Δ[A086251(record[A209148(n+1)])]`
-/

namespace A275821.P3390864379593054824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275821.P3390864379593054824

/-! ## A275821.P14197983583303513893

`A035457(n)-A025428(A145801(n+1))`
-/

namespace A275821.P14197983583303513893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n - A025428 (A145801 (n + 1)).toNat

end

end A275821.P14197983583303513893

/-! ## A275821.P16595389145310368566

`A289440(n+2)-A001221(A056274(n+1))`
-/

namespace A275821.P16595389145310368566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) - A001221 (A056274 (n + 1)).toNat

end

end A275821.P16595389145310368566

/-!
# A275822: Alternating sums of the cubes of the central binomial coefficients.

The programs for A275822, there is no canonical definition to state claims against.
-/

/-! ## A275822.P16795891580640908560

`C(2*n, n)^3-a(n-1)` with `a(0)=1`
-/

namespace A275822.P16795891580640908560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n ^ 3 : ℤ) - a (n - 1)

end

end A275822.P16795891580640908560

/-! ## A275822.P15956870476029084384

`A002897(n)-a(n-1)` with `a(0)=1`
-/

namespace A275822.P15956870476029084384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002897 n - a (n - 1)

end

end A275822.P15956870476029084384

/-! ## A275822.P3533246639021111432

`A000984(n)^3-a(n-1)` with `a(0)=1`
-/

namespace A275822.P3533246639021111432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 3 - a (n - 1)

end

end A275822.P3533246639021111432

/-! ## A275822.P15618156638412258656

`A046521(∑[n])^3-a(n-1)` with `a(0)=1`
-/

namespace A275822.P15618156638412258656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046521 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 - a (n - 1)

end

end A275822.P15618156638412258656

/-! ## A275822.P3135052833398499637

`record[A094527(n)^3]-a(n-1)` with `a(0)=1`
-/

namespace A275822.P3135052833398499637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A275822.P3135052833398499637

/-! ## A275822.P12959599104175998016

`((n+1)*A000108(n))^3-a(n-1)` with `a(0)=1`
-/

namespace A275822.P12959599104175998016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) * A000108 n) ^ 3 - a (n - 1)

end

end A275822.P12959599104175998016

/-!
# A275823: Least k such that n divides phi(k^2).

The programs for A275823, there is no canonical definition to state claims against.
-/

/-! ## A275823.P14516035628478992310

`(n+1)/A346094(n+1)`
-/

namespace A275823.P14516035628478992310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346094 (n + 1) : ℚ)

end

end A275823.P14516035628478992310

/-! ## A275823.P12057780011836925123

`A051537(A346094(n+1)+∑[n])`
-/

namespace A275823.P12057780011836925123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A346094 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A275823.P12057780011836925123

/-! ## A275823.P1281721624593115797

`A054531(A346094(n+1)+∑[n])`
-/

namespace A275823.P1281721624593115797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A346094 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A275823.P1281721624593115797

/-! ## A275823.P673531320867119516

`A010766(A346094(n+1)+A000217(n))`
-/

namespace A275823.P673531320867119516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A346094 (n + 1) + A000217 n).toNat

end

end A275823.P673531320867119516

/-! ## A275823.P15149084176120098478

`A126988(A346094(n+1)+A000217(n))`
-/

namespace A275823.P15149084176120098478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A346094 (n + 1) + A000217 n).toNat

end

end A275823.P15149084176120098478

/-!
# A275824: Number of ways to write n as pen(x) + pen(y) + pen (z) + 2*pen(w), where x,y,z,w are nonnegative integers with x <= y <= z, and pen(k) denotes the pentagonal number k*(3*k-1)/2.

The programs for A275824, there is no canonical definition to state claims against.
-/

/-! ## A275824.P11634514470089788416

`A193238(n)+A108622(A037124(n+1))`
-/

namespace A275824.P11634514470089788416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n + A108622 (A037124 (n + 1)).toNat

end

end A275824.P11634514470089788416

/-! ## A275824.P14890419742734077759

`dr(A167678(A004186(n)))`
-/

namespace A275824.P14890419742734077759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167678 (A004186 n).toNat)

end

end A275824.P14890419742734077759

/-! ## A275824.P5320892213750577258

`dr(A167678(A057846(n)))`
-/

namespace A275824.P5320892213750577258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167678 (A057846 n).toNat)

end

end A275824.P5320892213750577258

/-! ## A275824.P15418770947459883155

`A329885(A280082(2*n+3))`
-/

namespace A275824.P15418770947459883155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A280082 (2 * n + 3)).toNat

end

end A275824.P15418770947459883155

/-! ## A275824.P8181948777646018141

`A054868(A299478(3*(n+1))-A010059(n))`
-/

namespace A275824.P8181948777646018141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A299478 (3 * (n + 1)) - A010059 n).toNat

end

end A275824.P8181948777646018141

/-!
# A275825: Third-order sequence with non-constant coefficients: a(n) = (n-3)*a(n-1) + (n-1)*a(n-3); a(0) = a(1) = a(2) = 1.

The programs for A275825, the canonical program `A275825.P3575000536788061329` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275825 has offset 0).

The definition of A275825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*a(n-1)+(n-1)*a(n-3)` (program `A275825.P3575000536788061329`, by `A275825.P3575000536788061329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275825.P3575000536788061329

`(n-3)*a(n-1)+(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275825

/-- `(n-3)*a(n-1)+(n-1)*a(n-3)` -/
def P3575000536788061329.Spec : Prop :=
  ∀ n, P3575000536788061329.a n = A275825 n

theorem P3575000536788061329.correct : P3575000536788061329.Spec := by
  intro n
  simp only [A275825]

end A275825

/-! ## A275825.P12045265041790151604

`A023193(floor(sqrt(A224800(n))))`
-/

namespace A275825.P12045265041790151604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.sqrt (A224800 n)).toNat

end

end A275825.P12045265041790151604

namespace A275825

/-- `A023193(floor(sqrt(A224800(n))))` -/
def P12045265041790151604.Spec : Prop :=
  ∀ n, P12045265041790151604.a n = A275825 n

end A275825

/-! ## A275825.P10103634613074115391

`A116619(∏[∑[A256117(n)]])`
-/

namespace A275825.P10103634613074115391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275825.P10103634613074115391

namespace A275825

/-- `A116619(∏[∑[A256117(n)]])` -/
def P10103634613074115391.Spec : Prop :=
  ∀ n, P10103634613074115391.a n = A275825 n

end A275825

/-! ## A275825.P7141035349284636449

`A132292(A006785(n+2))+1`
-/

namespace A275825.P7141035349284636449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A006785 (n + 2)).toNat + 1

end

end A275825.P7141035349284636449

namespace A275825

/-- `A132292(A006785(n+2))+1` -/
def P7141035349284636449.Spec : Prop :=
  ∀ n, P7141035349284636449.a n = A275825 n

end A275825

/-!
# A275826: Least k such that n! divides d(k!) (d = A000005, k > 0).

The programs for A275826, there is no canonical definition to state claims against.
-/

/-! ## A275826.P12485328980101148755

`A172151(3*n+4)*A214212(A084156(n))`
-/

namespace A275826.P12485328980101148755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172151 (3 * n + 4) * A214212 (A084156 n).toNat

end

end A275826.P12485328980101148755

/-!
# A275827: a(n) = Sum_{k=0..n} binomial(n+k+2,k)*binomial(2*n+1,n-k).

The programs for A275827, the canonical program `A275827.P4744226065128384971` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275827 has offset 0).

The definition of A275827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275827.P15356819731101677633

`2^(n-1)*Δ[C(2*n+1, n)]`
-/

namespace A275827.P15356819731101677633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A275827.P15356819731101677633

namespace A275827

/-- `2^(n-1)*Δ[C(2*n+1, n)]` -/
def P15356819731101677633.Spec : Prop :=
  ∀ n, P15356819731101677633.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P5736755979415648232

`2^(n-1)*Δ[A001700(n)]`
-/

namespace A275827.P5736755979415648232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A275827.P5736755979415648232

namespace A275827

/-- `2^(n-1)*Δ[A001700(n)]` -/
def P5736755979415648232.Spec : Prop :=
  ∀ n, P5736755979415648232.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P13234478386829186845

`2^(n-1)*A024482(n+2)`
-/

namespace A275827.P13234478386829186845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A024482 (n + 2) : ℚ)

end

end A275827.P13234478386829186845

namespace A275827

/-- `2^(n-1)*A024482(n+2)` -/
def P13234478386829186845.Spec : Prop :=
  ∀ n, P13234478386829186845.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P18225712901165290999

`2^(n-1)*A097613(n+2)`
-/

namespace A275827.P18225712901165290999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A097613 (n + 2) : ℚ)

end

end A275827.P18225712901165290999

namespace A275827

/-- `2^(n-1)*A097613(n+2)` -/
def P18225712901165290999.Spec : Prop :=
  ∀ n, P18225712901165290999.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P10398052283560707745

`2^(n-2)*A051924(n+2)`
-/

namespace A275827.P10398052283560707745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A051924 (n + 2) : ℚ)

end

end A275827.P10398052283560707745

namespace A275827

/-- `2^(n-2)*A051924(n+2)` -/
def P10398052283560707745.Spec : Prop :=
  ∀ n, P10398052283560707745.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P16235790487941403481

`2^(n-1)*Δ[(2*n+1)*A000108(n)]`
-/

namespace A275827.P16235790487941403481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A275827.P16235790487941403481

namespace A275827

/-- `2^(n-1)*Δ[(2*n+1)*A000108(n)]` -/
def P16235790487941403481.Spec : Prop :=
  ∀ n, P16235790487941403481.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P9422350643946074826

`A000079(n+1)/8*Δ[A000984(n+1)]`
-/

namespace A275827.P9422350643946074826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / 8 * (f1 (n + 1) - f1 n : ℚ)

end

end A275827.P9422350643946074826

namespace A275827

/-- `A000079(n+1)/8*Δ[A000984(n+1)]` -/
def P9422350643946074826.Spec : Prop :=
  ∀ n, P9422350643946074826.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P16751823075988944581

`A026010(2*n+1)/2*A011782(n+1)`
-/

namespace A275827.P16751823075988944581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026010 (2 * n + 1) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A275827.P16751823075988944581

namespace A275827

/-- `A026010(2*n+1)/2*A011782(n+1)` -/
def P16751823075988944581.Spec : Prop :=
  ∀ n, P16751823075988944581.a n = (A275827 n : ℚ)

end A275827

/-! ## A275827.P4744226065128384971

`A069720(n+1)+A082144(n)-A082143(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275827

/-- `A069720(n+1)+A082144(n)-A082143(n)` -/
def P4744226065128384971.Spec : Prop :=
  ∀ n, P4744226065128384971.a n = A275827 n

theorem P4744226065128384971.correct : P4744226065128384971.Spec := by
  intro n
  simp only [A275827]

end A275827

/-! ## A275827.P7583186042268901894

`A200139((n+1)²+(n+2)²)`
-/

namespace A275827.P7583186042268901894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A275827.P7583186042268901894

namespace A275827

/-- `A200139((n+1)²+(n+2)²)` -/
def P7583186042268901894.Spec : Prop :=
  ∀ n, P7583186042268901894.a n = A275827 n

end A275827

/-!
# A275829: Number of weakly alternating permutations of the multiset {1,1,2,2,...,n,n}.

The programs for A275829, there is no canonical definition to state claims against.
-/

/-! ## A275829.P9867684912457106315

`A240202(A016098(n))+A091144(n)`
-/

namespace A275829.P9867684912457106315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240202 (A016098 n).toNat + A091144 n

end

end A275829.P9867684912457106315

/-! ## A275829.P15895313742175484655

`A000010(A280714(n+1)+A002293(n))`
-/

namespace A275829.P15895313742175484655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A280714 (n + 1) + A002293 n).toNat

end

end A275829.P15895313742175484655

/-!
# A275831: a(n) = (sqrt(7)*csc(Pi/7)/2)^n + (-sqrt(7)*csc(2*Pi/7)/2)^n + (-sqrt(7)*csc(4*Pi/7)/2)^n.

The programs for A275831, the canonical program `A275831.P8029814007363498572` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275831 has offset 0).

The definition of A275831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275831.P8029814007363498572

`7*a(n-2)+7*a(n-3)` with `a(0)=3, a(1)=0, a(2)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275831

/-- `7*a(n-2)+7*a(n-3)` -/
def P8029814007363498572.Spec : Prop :=
  ∀ n, (P8029814007363498572.a n : ℤ) = A275831 n

theorem P8029814007363498572.correct : P8029814007363498572.Spec := by
  intro n
  simp only [A275831]

end A275831

/-! ## A275831.P15237150739630620476

`ogf((-3+7x^2)/(-1+7x^2+7x^3))`
-/

namespace A275831.P15237150739630620476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -7] [1, 0, -7, -7] n

end

end A275831.P15237150739630620476

namespace A275831

/-- `ogf((-3+7x^2)/(-1+7x^2+7x^3))` -/
def P15237150739630620476.Spec : Prop :=
  ∀ n, P15237150739630620476.a n = A275831 n

end A275831

/-! ## A275831.P1443227198287508795

`7*(a(n-2)+a(n-3))` with `a(0)=3, a(1)=0, a(2)=14`
-/

namespace A275831.P1443227198287508795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 14] fun n a =>
  7 * (a (n - 2) + a (n - 3))

end

end A275831.P1443227198287508795

namespace A275831

/-- `7*(a(n-2)+a(n-3))` -/
def P1443227198287508795.Spec : Prop :=
  ∀ n, (P1443227198287508795.a n : ℤ) = A275831 n

theorem P1443227198287508795.correct : P1443227198287508795.Spec := by
  intro n
  simp only [A275831, Nat.add_sub_cancel, A275831.P1443227198287508795.a, A275831.P8029814007363498572.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275831

/-!
# A275832: Size of the cycle containing element 1 in finite permutations listed in tables A060117 & A060118: a(n) = A007814(A275725(n)).

The programs for A275832, there is no canonical definition to state claims against.
-/

/-! ## A275832.P8749515261481996315

`A007814(A275725(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275832.P8749515261481996315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275725 n).toNat

end

end A275832.P8749515261481996315

/-! ## A275832.P3493067990589346225

`val(A290095(A060119(n)), 2)`
-/

namespace A275832.P3493067990589346225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290095 (A060119 n).toNat).toNat 2

end

end A275832.P3493067990589346225

/-! ## A275832.P12677234968159939973

`A067029(and(-A275725(n), A275725(n)))`
-/

namespace A275832.P12677234968159939973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.land (-A275725 n) (A275725 n)).toNat

end

end A275832.P12677234968159939973

/-! ## A275832.P91055939593396506

`A072411(and(-A275725(n), A275725(n)))`
-/

namespace A275832.P91055939593396506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.land (-A275725 n) (A275725 n)).toNat

end

end A275832.P91055939593396506

/-! ## A275832.P7671700093625465279

`A072411(and(1-A275725(n), A275725(n)))`
-/

namespace A275832.P7671700093625465279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.land (1 - A275725 n) (A275725 n)).toNat

end

end A275832.P7671700093625465279

/-! ## A275832.P9659691123669188098

`A001222(-or(-A275725(n), A275725(n)))`
-/

namespace A275832.P9659691123669188098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (-Int.lor (-A275725 n) (A275725 n)).toNat

end

end A275832.P9659691123669188098

/-! ## A275832.P15750986755763684786

`val(A275807(n), 2)+1`
-/

namespace A275832.P15750986755763684786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275807 n).toNat 2 + 1

end

end A275832.P15750986755763684786

/-! ## A275832.P15238096636432298211

`A001511(A275807(n))`
-/

namespace A275832.P15238096636432298211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A275807 n).toNat

end

end A275832.P15238096636432298211

/-! ## A275832.P6445308993450445016

`A050603(A275725(n)-1)`
-/

namespace A275832.P6445308993450445016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A275725 n - 1).toNat

end

end A275832.P6445308993450445016

/-! ## A275832.P5627017232673575307

`A007814(2*A275807(n))`
-/

namespace A275832.P5627017232673575307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A275807 n).toNat

end

end A275832.P5627017232673575307

/-! ## A275832.P6101694138560189466

`A001511(A275725(n)/2)`
-/

namespace A275832.P6101694138560189466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A275725 n : ℚ) / 2)).toNat

end

end A275832.P6101694138560189466

/-!
# A275833: Positions of odd terms in A275832; indices of those permutations in tables A060117 & A060118 where element 1 is in an odd cycle.

The programs for A275833, there is no canonical definition to state claims against.
-/

/-! ## A275833.P15275832256174144889

`comp[A275834(n+1)]`
-/

namespace A275833.P15275832256174144889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275833.P15275832256174144889

/-! ## A275833.P12174728584554778919

`eq[1, A275832(n)%2]`
-/

namespace A275833.P12174728584554778919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275832 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P12174728584554778919

/-! ## A275833.P5338741513120352606

`eq[1, gcd(2, val(A275725(n), 2))]`
-/

namespace A275833.P5338741513120352606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (A275725 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275833.P5338741513120352606

/-! ## A275833.P3244606618910683521

`record[(n+1)*and(1, A275832(n+1))]`
-/

namespace A275833.P3244606618910683521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A275832 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275833.P3244606618910683521

/-! ## A275833.P10608945828121643528

`eq[0, A007814(A275726(n))]`
-/

namespace A275833.P10608945828121643528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P10608945828121643528

/-! ## A275833.P7495904232634937939

`eq[1, A000034(A275726(n)+1)]`
-/

namespace A275833.P7495904232634937939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A275726 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P7495904232634937939

/-! ## A275833.P4216848717753408691

`eq[2, A000034(A275726(n)²)]`
-/

namespace A275833.P4216848717753408691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A275726 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P4216848717753408691

/-! ## A275833.P10927139851887553426

`eq[1, A035263(A275807(n))]`
-/

namespace A275833.P10927139851887553426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A275807 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P10927139851887553426

/-! ## A275833.P566914802614228877

`eq[0, A029883(A275725(n))]`
-/

namespace A275833.P566914802614228877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A275725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275833.P566914802614228877

/-!
# A275834: Positions of even terms in A275832; indices of those permutations in tables A060117 & A060118 where element 1 is in an even cycle.

The programs for A275834, there is no canonical definition to state claims against.
-/

/-! ## A275834.P16055868846788582002

`eq[2, gcd(2, A275832(n))]`
-/

namespace A275834.P16055868846788582002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A275832 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275834.P16055868846788582002

/-! ## A275834.P11514168557808647091

`eq[1, A000034(A275726(n))]`
-/

namespace A275834.P11514168557808647091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A275726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P11514168557808647091

/-! ## A275834.P8326367573119872652

`eq[1, A006519(A275726(n)+1)]`
-/

namespace A275834.P8326367573119872652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A275726 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P8326367573119872652

/-! ## A275834.P16412684904037977214

`eq[2, A006519(or(2, A275726(n)))]`
-/

namespace A275834.P16412684904037977214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lor 2 (A275726 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P16412684904037977214

/-! ## A275834.P17691119376756528616

`lt[2, A014963(val(A275725(n), 2)+1)]`
-/

namespace A275834.P17691119376756528616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.valuation (A275725 n).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275834.P17691119376756528616

/-! ## A275834.P11237825892979348594

`comp[A275833(n)]`
-/

namespace A275834.P11237825892979348594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275834.P11237825892979348594

/-! ## A275834.P1003326951332917648

`eq[2, A014963(A006519(A275726(n)²))]`
-/

namespace A275834.P1003326951332917648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (A275726 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P1003326951332917648

/-! ## A275834.P12841642377307757068

`eq[1, A035263(A275807(n))+1]`
-/

namespace A275834.P12841642377307757068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A275807 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P12841642377307757068

/-! ## A275834.P2658527106674695021

`eq[1, A035263(2*A275807(n))]`
-/

namespace A275834.P2658527106674695021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * A275807 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275834.P2658527106674695021

/-!
# A275835: Permutation of nonnegative integers: a(n) = A273667(A225901(n)).

The programs for A275835, there is no canonical definition to state claims against.
-/

/-! ## A275835.P12300942935256882340

`A273667(A225901(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275835.P12300942935256882340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A225901 n).toNat

end

end A275835.P12300942935256882340

/-! ## A275835.P17851009377281851199

`A273667(A275957(A060125(n)))`
-/

namespace A275835.P17851009377281851199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275957 (A060125 n).toNat).toNat

end

end A275835.P17851009377281851199

/-! ## A275835.P7668455522507376247

`A273667(A060125(A275958(n)))`
-/

namespace A275835.P7668455522507376247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A060125 (A275958 n).toNat).toNat

end

end A275835.P7668455522507376247

/-! ## A275835.P14501191779964592725

`A273667(A255411(n)-(A153880(n)+n))`
-/

namespace A275835.P14501191779964592725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A275835.P14501191779964592725

/-! ## A275835.P16259898545353869183

`A273667(A255411(n)-n-A153880(n))`
-/

namespace A275835.P16259898545353869183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A275835.P16259898545353869183

/-! ## A275835.P16836349548767450735

`A273667(A275837(A273668(n)))`
-/

namespace A275835.P16836349548767450735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275837 (A273668 n).toNat).toNat

end

end A275835.P16836349548767450735

/-! ## A275835.P9153743327267502096

`A273667(A275836(A273667(n)))`
-/

namespace A275835.P9153743327267502096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275836 (A273667 n).toNat).toNat

end

end A275835.P9153743327267502096

/-! ## A275835.P527457940334863171

`A273667(A273667(A275838(n)))`
-/

namespace A275835.P527457940334863171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A273667 (A275838 n).toNat).toNat

end

end A275835.P527457940334863171

/-! ## A275835.P10053794702872794948

`A225901(A275837(A225901(A273663(A273670(n)))))`
-/

namespace A275835.P10053794702872794948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275837 (A225901 (A273663 (A273670 n).toNat).toNat).toNat).toNat

end

end A275835.P10053794702872794948

/-! ## A275835.P12520543486180797442

`A225901(A275837(A275837(A225901(A275836(n)))))`
-/

namespace A275835.P12520543486180797442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275837 (A275837 (A225901 (A275836 n).toNat).toNat).toNat).toNat

end

end A275835.P12520543486180797442

/-! ## A275835.P6852831570469884730

`A225901(A275837(A225901(A275838(A275837(n)))))`
-/

namespace A275835.P6852831570469884730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275837 (A225901 (A275838 (A275837 n).toNat).toNat).toNat).toNat

end

end A275835.P6852831570469884730

/-! ## A275835.P5872798714690784430

`A276011(A275841(A273663(A225901(A275954(n)))))`
-/

namespace A275835.P5872798714690784430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A273663 (A225901 (A275954 n).toNat).toNat).toNat).toNat

end

end A275835.P5872798714690784430

/-! ## A275835.P15182924973662182753

`A276011(A275841(A225901(A275842(A275841(n)))))`
-/

namespace A275835.P15182924973662182753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A225901 (A275842 (A275841 n).toNat).toNat).toNat).toNat

end

end A275835.P15182924973662182753

/-! ## A275835.P11279889355052838545

`A276011(A275841(A225901(A276012(A276011(n)))))`
-/

namespace A275835.P11279889355052838545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A225901 (A276012 (A276011 n).toNat).toNat).toNat).toNat

end

end A275835.P11279889355052838545

/-! ## A275835.P15254440332262991388

`A276011(A275841(A276011(A273663(A275952(n)))))`
-/

namespace A275835.P15254440332262991388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A276011 (A273663 (A275952 n).toNat).toNat).toNat).toNat

end

end A275835.P15254440332262991388

/-! ## A275835.P9917746884538549936

`A276011(A275841(A275837(A275842(A276012(n)))))`
-/

namespace A275835.P9917746884538549936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276011 (A275841 (A275837 (A275842 (A276012 n).toNat).toNat).toNat).toNat

end

end A275835.P9917746884538549936

/-! ## A275835.P16890895854912584311

`A257684(A225901(A275837(A225901(A255411(n)))))`
-/

namespace A275835.P16890895854912584311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A225901 (A275837 (A225901 (A255411 n).toNat).toNat).toNat).toNat

end

end A275835.P16890895854912584311

/-!
# A275836: Permutation of nonnegative integers: a(n) = A225901(A273668(n)).

The programs for A275836, there is no canonical definition to state claims against.
-/

/-! ## A275836.P3595406596541697165

`A225901(A273668(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275836.P3595406596541697165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A273668 n).toNat

end

end A275836.P3595406596541697165

/-! ## A275836.P6081616122204431465

`A225901(A275838(A225901(n)))`
-/

namespace A275836.P6081616122204431465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275838 (A225901 n).toNat).toNat

end

end A275836.P6081616122204431465

/-! ## A275836.P1526348013872901744

`A225901(A275842(A276012(n)))`
-/

namespace A275836.P1526348013872901744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275842 (A276012 n).toNat).toNat

end

end A275836.P1526348013872901744

/-! ## A275836.P14877505942320631259

`A275837(A273668(A273668(A257684(A255411(n)))))`
-/

namespace A275836.P14877505942320631259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A273668 (A257684 (A255411 n).toNat).toNat).toNat).toNat

end

end A275836.P14877505942320631259

/-! ## A275836.P17504640873517969666

`A275837(A273668(A273668(A273668(A273667(n)))))`
-/

namespace A275836.P17504640873517969666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A273668 (A273668 (A273667 n).toNat).toNat).toNat).toNat

end

end A275836.P17504640873517969666

/-! ## A275836.P17168096687692135225

`A275837(A273668(A273668(A275838(A275837(n)))))`
-/

namespace A275836.P17168096687692135225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A273668 (A275838 (A275837 n).toNat).toNat).toNat).toNat

end

end A275836.P17168096687692135225

/-! ## A275836.P10091358742577679569

`A273667(A275838(A275838(A273667(A275838(n)))))`
-/

namespace A275836.P10091358742577679569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A275838 (A273667 (A275838 n).toNat).toNat).toNat).toNat

end

end A275836.P10091358742577679569

/-! ## A275836.P9794271302397033690

`A273668(A275835(A273668(2*n-n)))`
-/

namespace A275836.P9794271302397033690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A275835 (A273668 (2 * n - n)).toNat).toNat

end

end A275836.P9794271302397033690

/-! ## A275836.P12534376447821638799

`A273668(A275835(A275838(A273668(A275835(n)))))`
-/

namespace A275836.P12534376447821638799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A275835 (A275838 (A273668 (A275835 n).toNat).toNat).toNat).toNat

end

end A275836.P12534376447821638799

/-!
# A275837: Permutation of nonnegative integers: a(n) = A225901(A273667(n)).

The programs for A275837, there is no canonical definition to state claims against.
-/

/-! ## A275837.P924567896779641657

`A225901(A273667(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275837.P924567896779641657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A273667 n).toNat

end

end A275837.P924567896779641657

/-! ## A275837.P4922749130654132090

`A225901(A275835(A225901(n)))`
-/

namespace A275837.P4922749130654132090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275835 (A225901 n).toNat).toNat

end

end A275837.P4922749130654132090

/-! ## A275837.P18061934315145588277

`A275957(A060125(A275835(A275957(A060125(n)))))`
-/

namespace A275837.P18061934315145588277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A060125 (A275835 (A275957 (A060125 n).toNat).toNat).toNat).toNat

end

end A275837.P18061934315145588277

/-! ## A275837.P9339185038132961670

`A060125(A275958(A275835(A060125(A275958(n)))))`
-/

namespace A275837.P9339185038132961670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A275958 (A275835 (A060125 (A275958 n).toNat).toNat).toNat).toNat

end

end A275837.P9339185038132961670

/-! ## A275837.P2682046940732458141

`A225901(A276011(A275841(n)))`
-/

namespace A275837.P2682046940732458141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A276011 (A275841 n).toNat).toNat

end

end A275837.P2682046940732458141

/-! ## A275837.P7045891103023141806

`A273667(A275838(A273667(A273667(A273668(n)))))`
-/

namespace A275837.P7045891103023141806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A273667 (A273667 (A273668 n).toNat).toNat).toNat).toNat

end

end A275837.P7045891103023141806

/-! ## A275837.P18376173125643652760

`A273667(A275838(A257684(A273667(A153880(n)))))`
-/

namespace A275837.P18376173125643652760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A257684 (A273667 (A153880 n).toNat).toNat).toNat).toNat

end

end A275837.P18376173125643652760

/-! ## A275837.P15695409475654960981

`A275836(A273667(A273667(A257684(A255411(n)))))`
-/

namespace A275837.P15695409475654960981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 (A273667 (A257684 (A255411 n).toNat).toNat).toNat).toNat

end

end A275837.P15695409475654960981

/-! ## A275837.P16810785478967750166

`A275836(A273667(A273667(A275836(A275835(n)))))`
-/

namespace A275837.P16810785478967750166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 (A273667 (A275836 (A275835 n).toNat).toNat).toNat).toNat

end

end A275837.P16810785478967750166

/-! ## A275837.P7933027304565354361

`A273667(A275838(A275835(A273667(A275838(n)))))`
-/

namespace A275837.P7933027304565354361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275838 (A275835 (A273667 (A275838 n).toNat).toNat).toNat).toNat

end

end A275837.P7933027304565354361

/-!
# A275838: Permutation of nonnegative integers: a(n) = A273668(A225901(n)).

The programs for A275838, there is no canonical definition to state claims against.
-/

/-! ## A275838.P8182375756074360157

`A273668(A225901(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275838.P8182375756074360157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A225901 n).toNat

end

end A275838.P8182375756074360157

/-! ## A275838.P8777547238532788925

`A273668(A255411(n)-(A153880(n)+n))`
-/

namespace A275838.P8777547238532788925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A275838.P8777547238532788925

/-! ## A275838.P10978581462517202838

`A273668(A255411(n)-n-A153880(n))`
-/

namespace A275838.P10978581462517202838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A275838.P10978581462517202838

/-! ## A275838.P15668573223812763869

`A273668(A275837(A273668(n)))`
-/

namespace A275838.P15668573223812763869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A275837 (A273668 n).toNat).toNat

end

end A275838.P15668573223812763869

/-! ## A275838.P9689979839714982373

`A273668(A275836(A273667(n)))`
-/

namespace A275838.P9689979839714982373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A275836 (A273667 n).toNat).toNat

end

end A275838.P9689979839714982373

/-! ## A275838.P18231961418533607930

`A275842(A273663(A275952(n)))`
-/

namespace A275838.P18231961418533607930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A273663 (A275952 n).toNat).toNat

end

end A275838.P18231961418533607930

/-! ## A275838.P18377567318897602785

`A273668(A276012(A273662(A275954(n))))`
-/

namespace A275838.P18377567318897602785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A276012 (A273662 (A275954 n).toNat).toNat).toNat

end

end A275838.P18377567318897602785

/-! ## A275838.P1063563105125824075

`A275842(A276012(A225901(A276012(A276011(n)))))`
-/

namespace A275838.P1063563105125824075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A276012 (A225901 (A276012 (A276011 n).toNat).toNat).toNat).toNat

end

end A275838.P1063563105125824075

/-! ## A275838.P1825594302830395831

`A275842(A276012(A275837(A275842(A276012(n)))))`
-/

namespace A275838.P1825594302830395831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A276012 (A275837 (A275842 (A276012 n).toNat).toNat).toNat).toNat

end

end A275838.P1825594302830395831

/-! ## A275838.P13955510203273476882

`A275842(A276012(A225901(A275842(A275841(n)))))`
-/

namespace A275838.P13955510203273476882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275842 (A276012 (A225901 (A275842 (A275841 n).toNat).toNat).toNat).toNat

end

end A275838.P13955510203273476882

/-! ## A275838.P17567877591529155458

`A225901(A275836(A225901(A257684(A255411(n)))))`
-/

namespace A275838.P17567877591529155458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275836 (A225901 (A257684 (A255411 n).toNat).toNat).toNat).toNat

end

end A275838.P17567877591529155458

/-! ## A275838.P17839332704857669577

`A225901(A275836(A275837(A225901(A275836(n)))))`
-/

namespace A275838.P17839332704857669577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275836 (A275837 (A225901 (A275836 n).toNat).toNat).toNat).toNat

end

end A275838.P17839332704857669577

/-! ## A275838.P12564651333715979601

`A273668(A273668(A275835(n)))`
-/

namespace A275838.P12564651333715979601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A273668 (A275835 n).toNat).toNat

end

end A275838.P12564651333715979601

/-!
# A275839: Fixed points of permutations A275837 & A275838.

The programs for A275839, there is no canonical definition to state claims against.
-/

/-! ## A275839.P6410952891470899169

`eq[n, A275837(n)]`
-/

namespace A275839.P6410952891470899169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275839.P6410952891470899169

/-! ## A275839.P6964149807820631283

`eq[n, A275838(n)]`
-/

namespace A275839.P6964149807820631283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275839.P6964149807820631283

/-! ## A275839.P3336710182941923313

`eq[n, A273668(A225901(n))]`
-/

namespace A275839.P3336710182941923313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275839.P3336710182941923313

/-! ## A275839.P16005368427475643388

`eq[A273667(n), A275957(A060125(n))]`
-/

namespace A275839.P16005368427475643388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A060125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275839.P16005368427475643388

/-! ## A275839.P440758842456839842

`eq[A255565(A225901(n)), A273665(n)]`
-/

namespace A275839.P440758842456839842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (A225901 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275839.P440758842456839842

/-!
# A275840: a(n) = A273670(n) - A256450(n).

The programs for A275840, the canonical program `A275840.P13098094200477927866` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275840 has offset 0).

The definition of A275840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256450, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275840.P13098094200477927866

`A273670(n)-A256450(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A275840

/-- `A273670(n)-A256450(n)` -/
def P13098094200477927866.Spec : Prop :=
  ∀ n, P13098094200477927866.a n = A275840 n

theorem P13098094200477927866.correct : P13098094200477927866.Spec := by
  intro n
  simp only [A275840]

end A275840

/-! ## A275840.P14186610332220125833

`comp[A153880(n)]-A256450(n)`
-/

namespace A275840.P14186610332220125833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A256450 n

end

end A275840.P14186610332220125833

namespace A275840

/-- `comp[A153880(n)]-A256450(n)` -/
def P14186610332220125833.Spec : Prop :=
  ∀ n, P14186610332220125833.a n = A275840 n

end A275840

/-! ## A275840.P7294152005179817303

`lt[1, A275832(n)]-A256450(n)`
-/

namespace A275840.P7294152005179817303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A256450 n

end

end A275840.P7294152005179817303

namespace A275840

/-- `lt[1, A275832(n)]-A256450(n)` -/
def P7294152005179817303.Spec : Prop :=
  ∀ n, P7294152005179817303.a n = A275840 n

end A275840

/-! ## A275840.P15291445348689456211

`A273670(n)%A256450(n%A256450(n))`
-/

namespace A275840.P15291445348689456211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273670 n) (A256450 (Int.tmod (n : ℤ) (A256450 n)).toNat)

end

end A275840.P15291445348689456211

namespace A275840

/-- `A273670(n)%A256450(n%A256450(n))` -/
def P15291445348689456211.Spec : Prop :=
  ∀ n, P15291445348689456211.a n = A275840 n

end A275840

/-! ## A275840.P1522420470867104396

`A273670(n)-lt[0, A257081(n)]`
-/

namespace A275840.P1522420470867104396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A275840.P1522420470867104396

namespace A275840

/-- `A273670(n)-lt[0, A257081(n)]` -/
def P1522420470867104396.Spec : Prop :=
  ∀ n, P1522420470867104396.a n = A275840 n

end A275840

/-! ## A275840.P15573034777353882654

`A273670(n)-eq[1, A257680(n)]`
-/

namespace A275840.P15573034777353882654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A275840.P15573034777353882654

namespace A275840

/-- `A273670(n)-eq[1, A257680(n)]` -/
def P15573034777353882654.Spec : Prop :=
  ∀ n, P15573034777353882654.a n = A275840 n

end A275840

/-! ## A275840.P8046133217070668837

`A273670(n)-record[n+1-A257685(n+1)]`
-/

namespace A275840.P8046133217070668837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A257685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275840.P8046133217070668837

namespace A275840

/-- `A273670(n)-record[n+1-A257685(n+1)]` -/
def P8046133217070668837.Spec : Prop :=
  ∀ n, P8046133217070668837.a n = A275840 n

end A275840

/-! ## A275840.P3200974215998396266

`A273670(n)-record[(n+1)*A257680(n+1)]`
-/

namespace A275840.P3200974215998396266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275840.P3200974215998396266

namespace A275840

/-- `A273670(n)-record[(n+1)*A257680(n+1)]` -/
def P3200974215998396266.Spec : Prop :=
  ∀ n, P3200974215998396266.a n = A275840 n

end A275840

/-! ## A275840.P2755705724814847180

`record[A275848(n+1)]-A256450(n)`
-/

namespace A275840.P2755705724814847180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A256450 n

end

end A275840.P2755705724814847180

namespace A275840

/-- `record[A275848(n+1)]-A256450(n)` -/
def P2755705724814847180.Spec : Prop :=
  ∀ n, P2755705724814847180.a n = A275840 n

end A275840

/-! ## A275840.P10700843575531690553

`abs(A256450(n)-lt[n, 2*A276951(n)])`
-/

namespace A275840.P10700843575531690553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256450 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)|

end

end A275840.P10700843575531690553

namespace A275840

/-- `abs(A256450(n)-lt[n, 2*A276951(n)])` -/
def P10700843575531690553.Spec : Prop :=
  ∀ n, P10700843575531690553.a n = A275840 n

end A275840

/-! ## A275840.P6740631525599881162

`A273670(n)-lt[1, A275832(A275848(n))]`
-/

namespace A275840.P6740631525599881162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 (A275848 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A275840.P6740631525599881162

namespace A275840

/-- `A273670(n)-lt[1, A275832(A275848(n))]` -/
def P6740631525599881162.Spec : Prop :=
  ∀ n, P6740631525599881162.a n = A275840 n

end A275840

/-! ## A275840.P11063312152299053745

`A273670(n)-comp[A225901(A153880(n))]`
-/

namespace A275840.P11063312152299053745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A153880 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A275840.P11063312152299053745

namespace A275840

/-- `A273670(n)-comp[A225901(A153880(n))]` -/
def P11063312152299053745.Spec : Prop :=
  ∀ n, P11063312152299053745.a n = A275840 n

end A275840

/-!
# A275841: Permutation of nonnegative integers: a(n) = A273663(A275837(A273670(n))).

The programs for A275841, there is no canonical definition to state claims against.
-/

/-! ## A275841.P12419137679771920852

`A273663(A275837(A273670(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275841.P12419137679771920852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275837 (A273670 n).toNat).toNat

end

end A275841.P12419137679771920852

/-! ## A275841.P7945276188326897472

`A276012(A273667(n))`
-/

namespace A275841.P7945276188326897472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A273667 n).toNat

end

end A275841.P7945276188326897472

/-! ## A275841.P5811045846947757807

`A276012(A275835(A225901(n)))`
-/

namespace A275841.P5811045846947757807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A275835 (A225901 n).toNat).toNat

end

end A275841.P5811045846947757807

/-! ## A275841.P3853407011922486388

`A276012(A275835(A275957(A060125(n))))`
-/

namespace A275841.P3853407011922486388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A275835 (A275957 (A060125 n).toNat).toNat).toNat

end

end A275841.P3853407011922486388

/-! ## A275841.P4122339237508577650

`A276012(A275835(A060125(A275958(n))))`
-/

namespace A275841.P4122339237508577650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A275835 (A060125 (A275958 n).toNat).toNat).toNat

end

end A275841.P4122339237508577650

/-! ## A275841.P472130503351696417

`A276012(A225901(A275837(n)))`
-/

namespace A275841.P472130503351696417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 (A225901 (A275837 n).toNat).toNat

end

end A275841.P472130503351696417

/-! ## A275841.P2135731275460976683

`A273663(A275952(A275837(A275837(A275838(n)))))`
-/

namespace A275841.P2135731275460976683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275952 (A275837 (A275837 (A275838 n).toNat).toNat).toNat).toNat

end

end A275841.P2135731275460976683

/-! ## A275841.P12404570030028752206

`A273663(A275837(A275952(A275837(A275842(n)))))`
-/

namespace A275841.P12404570030028752206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275837 (A275952 (A275837 (A275842 n).toNat).toNat).toNat).toNat

end

end A275841.P12404570030028752206

/-! ## A275841.P3440565713491636302

`A273663(A275952(A275837(A276012(A276011(n)))))`
-/

namespace A275841.P3440565713491636302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275952 (A275837 (A276012 (A276011 n).toNat).toNat).toNat).toNat

end

end A275841.P3440565713491636302

/-!
# A275842: Permutation of nonnegative integers: a(n) = A273663(A275838(A273670(n))).

The programs for A275842, there is no canonical definition to state claims against.
-/

/-! ## A275842.P16391716360953979835

`A273663(A275838(A273670(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275842.P16391716360953979835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275838 (A273670 n).toNat).toNat

end

end A275842.P16391716360953979835

/-! ## A275842.P7850692795371191147

`A273668(A276011(n))`
-/

namespace A275842.P7850692795371191147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 (A276011 n).toNat

end

end A275842.P7850692795371191147

/-! ## A275842.P12425247053035742484

`A273663(A275838(A275848(A256450(n))))`
-/

namespace A275842.P12425247053035742484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275838 (A275848 (A256450 n).toNat).toNat).toNat

end

end A275842.P12425247053035742484

/-! ## A275842.P10356852568095809511

`A273663(A273668(A275954(A275837(A273668(n)))))`
-/

namespace A275842.P10356852568095809511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A273668 (A275954 (A275837 (A273668 n).toNat).toNat).toNat).toNat

end

end A275842.P10356852568095809511

/-! ## A275842.P7953910249743754624

`A273663(A275838(A275838(A275952(A275837(n)))))`
-/

namespace A275842.P7953910249743754624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275838 (A275838 (A275952 (A275837 n).toNat).toNat).toNat).toNat

end

end A275842.P7953910249743754624

/-! ## A275842.P17951254770398461785

`A273663(A273668(A275954(A273668(A275835(n)))))`
-/

namespace A275842.P17951254770398461785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A273668 (A275954 (A273668 (A275835 n).toNat).toNat).toNat).toNat

end

end A275842.P17951254770398461785

/-!
# A275843: Fixed points of A275957; numbers n for which A060125(n) = A225901(n).

The programs for A275843, there is no canonical definition to state claims against.
-/

/-! ## A275843.P9516794906831449477

`comp[A275844(n+1)]`
-/

namespace A275843.P9516794906831449477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275843.P9516794906831449477

/-! ## A275843.P13904004562989375648

`eq[n, A275957(n)]`
-/

namespace A275843.P13904004562989375648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275843.P13904004562989375648

/-! ## A275843.P14156640903544511874

`eq[n, A275958(n)]`
-/

namespace A275843.P14156640903544511874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275843.P14156640903544511874

/-! ## A275843.P16447478238086766298

`eq[n, A225901(A060125(n))]`
-/

namespace A275843.P16447478238086766298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A060125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275843.P16447478238086766298

/-! ## A275843.P15686303038214786853

`eq[A273667(A060125(n)), A275835(n)]`
-/

namespace A275843.P15686303038214786853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A060125 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275843.P15686303038214786853

/-!
# A275844: Numbers n for which A060125(n) <> A225901(n).

The programs for A275844, there is no canonical definition to state claims against.
-/

/-! ## A275844.P18108110756860090368

`comp[A275843(n)]`
-/

namespace A275844.P18108110756860090368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275844.P18108110756860090368

/-! ## A275844.P9782661770559403099

`comp[eq[n, A275957(n)]]`
-/

namespace A275844.P9782661770559403099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A275844.P9782661770559403099

/-! ## A275844.P13400913476754854098

`comp[eq[n, A275958(n)]]`
-/

namespace A275844.P13400913476754854098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A275844.P13400913476754854098

/-! ## A275844.P4313561653377696290

`comp[eq[n, A225901(A060125(n))]]`
-/

namespace A275844.P4313561653377696290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A060125 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A275844.P4313561653377696290

/-! ## A275844.P7930621252142788681

`eq[2, A020639(∏{p}[n-A275957(n), #])]`
-/

namespace A275844.P7930621252142788681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P7930621252142788681

/-! ## A275844.P3058492258201692596

`lt[2, A020639(abs(n-A275958(n))+1)]`
-/

namespace A275844.P3058492258201692596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|(n : ℤ) - A275958 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275844.P3058492258201692596

/-! ## A275844.P10264749572122067144

`eq[0, A000007((n-A275958(n))²)]`
-/

namespace A275844.P10264749572122067144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P10264749572122067144

/-! ## A275844.P3050567659795201724

`eq[0, A000038((n-A275958(n))²)]`
-/

namespace A275844.P3050567659795201724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P3050567659795201724

/-! ## A275844.P3043669688781093491

`eq[1, A002828((n-A275958(n))²)]`
-/

namespace A275844.P3043669688781093491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P3043669688781093491

/-! ## A275844.P5563579933686806112

`eq[1, A057427((n-A275958(n))²)]`
-/

namespace A275844.P5563579933686806112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P5563579933686806112

/-! ## A275844.P2452536495079290304

`eq[2, A000122((n-A275958(n))²)]`
-/

namespace A275844.P2452536495079290304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P2452536495079290304

/-! ## A275844.P11358863088640449272

`eq[2, A043529((n-A275958(n))²)]`
-/

namespace A275844.P11358863088640449272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P11358863088640449272

/-! ## A275844.P15438979285999010921

`eq[2, A323202((n-A275958(n))²)]`
-/

namespace A275844.P15438979285999010921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (((n : ℤ) - A275958 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275844.P15438979285999010921

/-!
# A275846: Permutation of natural numbers: a(0) = 0, a(A255411(n)) = A153880(n), a(A256450(n)) = A273670(a(n)).

The programs for A275846, there is no canonical definition to state claims against.
-/

/-! ## A275846.P10637861597918637130

`A273668(n)-A275964(A028384(n))`
-/

namespace A275846.P10637861597918637130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 n - A275964 (A028384 n).toNat

end

end A275846.P10637861597918637130

/-! ## A275846.P3188155864605998597

`A273668(n)-A025480(A286080(n))`
-/

namespace A275846.P3188155864605998597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 n - A025480 (A286080 n).toNat

end

end A275846.P3188155864605998597

/-! ## A275846.P1619533985175153318

`A273668(n)-A185035(A245049(n))`
-/

namespace A275846.P1619533985175153318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273668 n - A185035 (A245049 n).toNat

end

end A275846.P1619533985175153318

/-!
# A275849: Number of unoccupied slopes in factorial base representation of n: a(n) = A084558(n) - A060502(n).

The programs for A275849, there is no canonical definition to state claims against.
-/

/-! ## A275849.P17924260114113415351

`A060501(n)-1`
-/

namespace A275849.P17924260114113415351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n - 1

end

end A275849.P17924260114113415351

/-! ## A275849.P10192264537349039457

`A084558(n)-A060502(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275849.P10192264537349039457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A060502 n

end

end A275849.P10192264537349039457

/-! ## A275849.P4895897018110962975

`A275850(A225901(n))`
-/

namespace A275849.P4895897018110962975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A225901 n).toNat

end

end A275849.P4895897018110962975

/-! ## A275849.P15727404347851248614

`A275853(A060125(n))-1`
-/

namespace A275849.P15727404347851248614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A060125 n).toNat - 1

end

end A275849.P15727404347851248614

/-! ## A275849.P15836073560937383739

`A060500(n)+A275851(n)-1`
-/

namespace A275849.P15836073560937383739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275851 n - 1)

end

end A275849.P15836073560937383739

/-! ## A275849.P10178384007146875077

`A127229(n+5)%A060501(n)`
-/

namespace A275849.P10178384007146875077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A060501 n)

end

end A275849.P10178384007146875077

/-! ## A275849.P7282783427574995469

`A000027(A060501(n)+n)%(n+1)`
-/

namespace A275849.P7282783427574995469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A060501 n + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A275849.P7282783427574995469

/-! ## A275849.P16540286649300203664

`A084558(n)-A060500(A060125(n))`
-/

namespace A275849.P16540286649300203664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A060500 (A060125 n).toNat

end

end A275849.P16540286649300203664

/-! ## A275849.P9171516113839119395

`A060502(A060125(n))+A275851(n)-1`
-/

namespace A275849.P9171516113839119395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060125 n).toNat + (A275851 n - 1)

end

end A275849.P9171516113839119395

/-! ## A275849.P1269578777782807165

`A275851(A060125(n))-(1-A060500(n))`
-/

namespace A275849.P1269578777782807165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 (A060125 n).toNat - (1 - A060500 n)

end

end A275849.P1269578777782807165

/-! ## A275849.P4889169779173017282

`A060500(n)+A084558(n)-A060129(n)`
-/

namespace A275849.P4889169779173017282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A084558 n - A060129 n)

end

end A275849.P4889169779173017282

/-! ## A275849.P10470808371599697919

`A275806(n)+A275850(n)-A060502(n)`
-/

namespace A275849.P10470808371599697919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n + (A275850 n - A060502 n)

end

end A275849.P10470808371599697919

/-! ## A275849.P6414406711158752376

`A084558(n)+A275851(n)-A275853(n)`
-/

namespace A275849.P6414406711158752376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (A275851 n - A275853 n)

end

end A275849.P6414406711158752376

/-! ## A275849.P1989908289012645635

`A084558(n)-A275806(A225901(n))`
-/

namespace A275849.P1989908289012645635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275806 (A225901 n).toNat

end

end A275849.P1989908289012645635

/-! ## A275849.P16528812106095892424

`A083800(n+1)%A060501(n)`
-/

namespace A275849.P16528812106095892424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A060501 n)

end

end A275849.P16528812106095892424

/-! ## A275849.P7332599052235744650

`A070198(n)%A060501(n)`
-/

namespace A275849.P7332599052235744650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A060501 n)

end

end A275849.P7332599052235744650

/-! ## A275849.P15840741230266347922

`A079782(n+1)%A060501(n)`
-/

namespace A275849.P15840741230266347922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A060501 n)

end

end A275849.P15840741230266347922

/-! ## A275849.P13819006202983831450

`A083685(n+1)%A060501(n)`
-/

namespace A275849.P13819006202983831450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A060501 n)

end

end A275849.P13819006202983831450

/-! ## A275849.P7956036175265889575

`A121934(n+1)%A060501(n)`
-/

namespace A275849.P7956036175265889575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A060501 n)

end

end A275849.P7956036175265889575

/-! ## A275849.P5815445683617072273

`A081973(n+1)%A060501(n)`
-/

namespace A275849.P5815445683617072273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081973 (n + 1)) (A060501 n)

end

end A275849.P5815445683617072273

/-!
# A275850: Number of digits in range [1..A084558(n)] that do not occur in factorial base representation of n: a(n) = A084558(n) - A275806(n).

The programs for A275850, there is no canonical definition to state claims against.
-/

/-! ## A275850.P3951182528396381145

`A084558(n)-A275806(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275850.P3951182528396381145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275806 n

end

end A275850.P3951182528396381145

/-! ## A275850.P16965141440802858044

`A275849(A225901(n))`
-/

namespace A275850.P16965141440802858044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A225901 n).toNat

end

end A275850.P16965141440802858044

/-! ## A275850.P14494028199026260716

`∑[char[n!]]-A001221(A275735(n))`
-/

namespace A275850.P14494028199026260716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001221 (A275735 n).toNat

end

end A275850.P14494028199026260716

/-! ## A275850.P7045815258258398576

`A084558(n)-A001221(A275735(n))`
-/

namespace A275850.P7045815258258398576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A001221 (A275735 n).toNat

end

end A275850.P7045815258258398576

/-! ## A275850.P9207486136284935571

`A060502(n)+A275849(n)-A275806(n)`
-/

namespace A275850.P9207486136284935571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + (A275849 n - A275806 n)

end

end A275850.P9207486136284935571

/-! ## A275850.P12476722931816509018

`A084558(n)-A060502(A225901(n))`
-/

namespace A275850.P12476722931816509018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A060502 (A225901 n).toNat

end

end A275850.P12476722931816509018

/-!
# A275851: a(n) = number of elements in range [1..(1+A084558(n))] fixed by the permutation with rank n of permutation list A060117 (or A060118).

The programs for A275851, there is no canonical definition to state claims against.
-/

/-! ## A275851.P17938396855410000223

`1+A084558(n)-A060129(n)`
-/

namespace A275851.P17938396855410000223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084558 n - A060129 n

end

end A275851.P17938396855410000223

/-! ## A275851.P13930423525702358211

`A056169(A275725(n))`
-/

namespace A275851.P13930423525702358211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A275725 n).toNat

end

end A275851.P13930423525702358211

/-! ## A275851.P4895768709574001830

`A060501(n)-A060500(n)`
-/

namespace A275851.P4895768709574001830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n - A060500 n

end

end A275851.P4895768709574001830

/-! ## A275851.P15898994634819751110

`A275853(n)-A060502(n)`
-/

namespace A275851.P15898994634819751110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 n - A060502 n

end

end A275851.P15898994634819751110

/-! ## A275851.P17181948855182900070

`A090529(n+1)-A060129(n)`
-/

namespace A275851.P17181948855182900070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - A060129 n

end

end A275851.P17181948855182900070

/-! ## A275851.P8565346031022516053

`A275849(n)+1-A060500(n)`
-/

namespace A275851.P8565346031022516053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n + (1 - A060500 n)

end

end A275851.P8565346031022516053

/-! ## A275851.P9191921709778090599

`A060501(n)-A060502(A060125(n))`
-/

namespace A275851.P9191921709778090599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n - A060502 (A060125 n).toNat

end

end A275851.P9191921709778090599

/-! ## A275851.P16131848554680265279

`A275849(A060125(n))+1-A060502(n)`
-/

namespace A275851.P16131848554680265279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A060125 n).toNat + (1 - A060502 n)

end

end A275851.P16131848554680265279

/-! ## A275851.P1476923570690946884

`1-(A060502(A060125(n))-A275849(n))`
-/

namespace A275851.P1476923570690946884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A060502 (A060125 n).toNat - A275849 n)

end

end A275851.P1476923570690946884

/-! ## A275851.P10452789166722344073

`A060501(n)+A060502(n)-A060129(n)`
-/

namespace A275851.P10452789166722344073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n + (A060502 n - A060129 n)

end

end A275851.P10452789166722344073

/-! ## A275851.P12778545261642702638

`A060500(n)+A275853(n)-A060129(n)`
-/

namespace A275851.P12778545261642702638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275853 n - A060129 n)

end

end A275851.P12778545261642702638

/-! ## A275851.P12257097913889691629

`A275849(n)+A275853(n)-A084558(n)`
-/

namespace A275851.P12257097913889691629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n + (A275853 n - A084558 n)

end

end A275851.P12257097913889691629

/-! ## A275851.P17684450585884329824

`A060502(A231720(n))-A060502(n)`
-/

namespace A275851.P17684450585884329824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A231720 n).toNat - A060502 n

end

end A275851.P17684450585884329824

/-! ## A275851.P14930903077410984904

`A275849(n)+1-A275849(A231720(n))`
-/

namespace A275851.P14930903077410984904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n + (1 - A275849 (A231720 n).toNat)

end

end A275851.P14930903077410984904

/-! ## A275851.P13453086704129379275

`A056169(A278225(n))`
-/

namespace A275851.P13453086704129379275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A278225 n).toNat

end

end A275851.P13453086704129379275

/-! ## A275851.P8471008146783995920

`A001222(A275725(n))-A060129(n)`
-/

namespace A275851.P8471008146783995920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275725 n).toNat - A060129 n

end

end A275851.P8471008146783995920

/-! ## A275851.P4113527291066051433

`A001222(A290095(n))-A060129(n)`
-/

namespace A275851.P4113527291066051433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290095 n).toNat - A060129 n

end

end A275851.P4113527291066051433

/-! ## A275851.P6867322137328616729

`A064532(A060496(n))`
-/

namespace A275851.P6867322137328616729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A060496 n).toNat

end

end A275851.P6867322137328616729

/-! ## A275851.P14818531327920109301

`A064532(A060498(n))`
-/

namespace A275851.P14818531327920109301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A060498 n).toNat

end

end A275851.P14818531327920109301

/-! ## A275851.P5273825609929082141

`A064532(A060499(n))`
-/

namespace A275851.P5273825609929082141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A060499 n).toNat

end

end A275851.P5273825609929082141

/-!
# A275852: Positions of zeros in A275851.

The programs for A275852, there is no canonical definition to state claims against.
-/

/-! ## A275852.P8363336962884717418

`eq[0, A275851(n)]`
-/

namespace A275852.P8363336962884717418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275852.P8363336962884717418

/-! ## A275852.P18271978263746772784

`record[(n+1)*(1-A275851(n+1))]`
-/

namespace A275852.P18271978263746772784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A275851 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275852.P18271978263746772784

/-! ## A275852.P6987992844201228875

`A000027(lt[A275851(n), 1])`
-/

namespace A275852.P6987992844201228875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A275852.P6987992844201228875

/-! ## A275852.P14670249682210689919

`eq[A060502(n), A275853(n)]`
-/

namespace A275852.P14670249682210689919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275852.P14670249682210689919

/-! ## A275852.P14878964505535406463

`lt[A275851(n), A330749(A001316(n))]`
-/

namespace A275852.P14878964505535406463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275852.P14878964505535406463

/-! ## A275852.P7522596777138888933

`record[(n+1)/A000005(n*A275851(n+1)+1)]`
-/

namespace A275852.P7522596777138888933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 ((n : ℤ) * A275851 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275852.P7522596777138888933

/-! ## A275852.P6150382298823757914

`lt[A028310(n), A060129(n)!]`
-/

namespace A275852.P6150382298823757914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A060129 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275852.P6150382298823757914

/-! ## A275852.P13287178971515077694

`eq[A060500(n), A060501(n)]`
-/

namespace A275852.P13287178971515077694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275852.P13287178971515077694

/-! ## A275852.P2603306969937716943

`record[(n+1)/A173143(n*A275851(n+1)+1)]`
-/

namespace A275852.P2603306969937716943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A173143 ((n : ℤ) * A275851 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275852.P2603306969937716943

/-! ## A275852.P4004881491030803240

`eq[A001222(A275725(n)), A060129(n)]`
-/

namespace A275852.P4004881491030803240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275852.P4004881491030803240

/-! ## A275852.P17028871288175799224

`eq[A001222(A290095(n)), A060129(n)]`
-/

namespace A275852.P17028871288175799224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275852.P17028871288175799224

/-!
# A275853: a(n) = A060502(n) + A275851(n).

The programs for A275853, there is no canonical definition to state claims against.
-/

/-! ## A275853.P13394460160768730044

`A060502(n)+A275851(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275853.P13394460160768730044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + A275851 n

end

end A275853.P13394460160768730044

/-! ## A275853.P7044978821707580074

`A275849(A060125(n))+1`
-/

namespace A275853.P7044978821707580074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A060125 n).toNat + 1

end

end A275853.P7044978821707580074

/-! ## A275853.P5939713478958323568

`A084558(n)+1-A060500(n)`
-/

namespace A275853.P5939713478958323568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A060500 n)

end

end A275853.P5939713478958323568

/-! ## A275853.P17035493991859155573

`A275851(n)+A060500(A060125(n))`
-/

namespace A275853.P17035493991859155573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n + A060500 (A060125 n).toNat

end

end A275853.P17035493991859155573

/-! ## A275853.P13256938393150204479

`A060501(n)+A060502(n)-A060500(n)`
-/

namespace A275853.P13256938393150204479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n + (A060502 n - A060500 n)

end

end A275853.P13256938393150204479

/-! ## A275853.P11364112888707556757

`A060129(n)+A275851(n)-A060500(n)`
-/

namespace A275853.P11364112888707556757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n + (A275851 n - A060500 n)

end

end A275853.P11364112888707556757

/-! ## A275853.P8041126568986154815

`A084558(n)+A275851(n)-A275849(n)`
-/

namespace A275853.P8041126568986154815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (A275851 n - A275849 n)

end

end A275853.P8041126568986154815

/-! ## A275853.P2339497059272180334

`A060501(n)+A060502(n)-A060502(A060125(n))`
-/

namespace A275853.P2339497059272180334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n + (A060502 n - A060502 (A060125 n).toNat)

end

end A275853.P2339497059272180334

/-! ## A275853.P12309065121559516584

`A060501(A060125(n))`
-/

namespace A275853.P12309065121559516584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A060125 n).toNat

end

end A275853.P12309065121559516584

/-! ## A275853.P3701488532139815490

`A060502(A231720(n))`
-/

namespace A275853.P3701488532139815490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A231720 n).toNat

end

end A275853.P3701488532139815490

/-!
# A275854: Number of labeled directed graphs on n nodes (allowing self loops) such that the out-degree of each node is at most 2.

The programs for A275854, the canonical program `A275854.P5496768946083056562` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275854 has offset 0).

The definition of A275854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275854.P5496768946083056562

`A000124(n)^n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275854

/-- `A000124(n)^n` -/
def P5496768946083056562.Spec : Prop :=
  ∀ n, P5496768946083056562.a n = A275854 n

theorem P5496768946083056562.correct : P5496768946083056562.Spec := by
  intro n
  simp only [A275854]

end A275854

/-! ## A275854.P10265264576662871016

`2^-n*(n²+n+2)^n`
-/

namespace A275854.P10265264576662871016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-(n : ℤ) : ℤ) * ((n ^ 2 + n + 2) ^ n : ℚ)

end

end A275854.P10265264576662871016

namespace A275854

/-- `2^-n*(n²+n+2)^n` -/
def P10265264576662871016.Spec : Prop :=
  ∀ n, P10265264576662871016.a n = (A275854 n : ℚ)

end A275854

/-! ## A275854.P11495400030646480669

`abs(xor(-1, ∑[n])^n)`
-/

namespace A275854.P11495400030646480669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ^ n|

end

end A275854.P11495400030646480669

namespace A275854

/-- `abs(xor(-1, ∑[n])^n)` -/
def P11495400030646480669.Spec : Prop :=
  ∀ n, P11495400030646480669.a n = A275854 n

end A275854

/-! ## A275854.P14365386360027562774

`(C(n+2, 2)-n)^n`
-/

namespace A275854.P14365386360027562774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ)) ^ n

end

end A275854.P14365386360027562774

namespace A275854

/-- `(C(n+2, 2)-n)^n` -/
def P14365386360027562774.Spec : Prop :=
  ∀ n, P14365386360027562774.a n = A275854 n

end A275854

/-! ## A275854.P7908019163572591642

`abs((-(C(n+1, 2)+1))^n)`
-/

namespace A275854.P7908019163572591642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 1) 2 + 1 : ℤ)) ^ n|

end

end A275854.P7908019163572591642

namespace A275854

/-- `abs((-(C(n+1, 2)+1))^n)` -/
def P7908019163572591642.Spec : Prop :=
  ∀ n, P7908019163572591642.a n = A275854 n

end A275854

/-!
# A275855: Platinum mean sequence: fixed point of the morphism 0 -> 0001, 1 -> 001.

The programs for A275855, the canonical program `A275855.P14141112771092971446` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275855 has offset 1).

The definition of A275855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275855.P14141112771092971446

`2-Δ[ceil(n*sqrt(3))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275855

/-- `2-Δ[ceil(n*sqrt(3))]` -/
def P14141112771092971446.Spec : Prop :=
  ∀ n, P14141112771092971446.a n = A275855 (n + 1)

theorem P14141112771092971446.correct : P14141112771092971446.Spec := by
  intro n
  simp only [A275855, Nat.add_sub_cancel]

end A275855

/-! ## A275855.P5655909573036369530

`char[A003512(n+1)]`
-/

namespace A275855.P5655909573036369530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P5655909573036369530

namespace A275855

/-- `char[A003512(n+1)]` -/
def P5655909573036369530.Spec : Prop :=
  ∀ n, (P5655909573036369530.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P17047566179797663231

`char[∑[A276865(n+1)]]`
-/

namespace A275855.P17047566179797663231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P17047566179797663231

namespace A275855

/-- `char[∑[A276865(n+1)]]` -/
def P17047566179797663231.Spec : Prop :=
  ∀ n, (P17047566179797663231.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P5280100961921500031

`char[∑[A080757(n)+2]]`
-/

namespace A275855.P5280100961921500031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P5280100961921500031

namespace A275855

/-- `char[∑[A080757(n)+2]]` -/
def P5280100961921500031.Spec : Prop :=
  ∀ n, (P5280100961921500031.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P2422872272914459412

`char[A180123(n+1)+1]`
-/

namespace A275855.P2422872272914459412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P2422872272914459412

namespace A275855

/-- `char[A180123(n+1)+1]` -/
def P2422872272914459412.Spec : Prop :=
  ∀ n, (P2422872272914459412.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P15094892620529333550

`char[A080590(n+1)-2]`
-/

namespace A275855.P15094892620529333550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P15094892620529333550

namespace A275855

/-- `char[A080590(n+1)-2]` -/
def P15094892620529333550.Spec : Prop :=
  ∀ n, (P15094892620529333550.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P17169388362822704423

`char[A188069(n+2)-1]`
-/

namespace A275855.P17169388362822704423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P17169388362822704423

namespace A275855

/-- `char[A188069(n+2)-1]` -/
def P17169388362822704423.Spec : Prop :=
  ∀ n, (P17169388362822704423.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P4610563115163268372

`char[A188070(2*(n+1))+n]`
-/

namespace A275855.P4610563115163268372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (2 * (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275855.P4610563115163268372

namespace A275855

/-- `char[A188070(2*(n+1))+n]` -/
def P4610563115163268372.Spec : Prop :=
  ∀ n, (P4610563115163268372.a n : ℤ) = A275855 (n + 1)

end A275855

/-! ## A275855.P16461703806218653930

`and(A054977(n), A080757(n))`
-/

namespace A275855.P16461703806218653930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A080757 n)

end

end A275855.P16461703806218653930

namespace A275855

/-- `and(A054977(n), A080757(n))` -/
def P16461703806218653930.Spec : Prop :=
  ∀ n, P16461703806218653930.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P6810723646029151452

`and(A057427(n), A080757(n))`
-/

namespace A275855.P6810723646029151452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A080757 n)

end

end A275855.P6810723646029151452

namespace A275855

/-- `and(A057427(n), A080757(n))` -/
def P6810723646029151452.Spec : Prop :=
  ∀ n, P6810723646029151452.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P5919807151161468159

`and(A061351(n), A080757(n))`
-/

namespace A275855.P5919807151161468159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061351 n) (A080757 n)

end

end A275855.P5919807151161468159

namespace A275855

/-- `and(A061351(n), A080757(n))` -/
def P5919807151161468159.Spec : Prop :=
  ∀ n, P5919807151161468159.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P168492615528672442

`A048701(n)%A007538(n+1)`
-/

namespace A275855.P168492615528672442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048701 n) (A007538 (n + 1))

end

end A275855.P168492615528672442

namespace A275855

/-- `A048701(n)%A007538(n+1)` -/
def P168492615528672442.Spec : Prop :=
  ∀ n, P168492615528672442.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P17543781629082470033

`A113923(n)%A007538(n+1)`
-/

namespace A275855.P17543781629082470033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113923 n) (A007538 (n + 1))

end

end A275855.P17543781629082470033

namespace A275855

/-- `A113923(n)%A007538(n+1)` -/
def P17543781629082470033.Spec : Prop :=
  ∀ n, P17543781629082470033.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P11699897644701251523

`A180599(n)%A007538(n+1)`
-/

namespace A275855.P11699897644701251523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180599 n) (A007538 (n + 1))

end

end A275855.P11699897644701251523

namespace A275855

/-- `A180599(n)%A007538(n+1)` -/
def P11699897644701251523.Spec : Prop :=
  ∀ n, P11699897644701251523.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P6677768328290312056

`A211441(n)%A007538(n+1)`
-/

namespace A275855.P6677768328290312056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211441 n) (A007538 (n + 1))

end

end A275855.P6677768328290312056

namespace A275855

/-- `A211441(n)%A007538(n+1)` -/
def P6677768328290312056.Spec : Prop :=
  ∀ n, P6677768328290312056.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P5799823337269591220

`A337461(n)%A007538(n+1)`
-/

namespace A275855.P5799823337269591220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337461 n) (A007538 (n + 1))

end

end A275855.P5799823337269591220

namespace A275855

/-- `A337461(n)%A007538(n+1)` -/
def P5799823337269591220.Spec : Prop :=
  ∀ n, P5799823337269591220.a n = A275855 (n + 1)

end A275855

/-! ## A275855.P13302851609093686012

`A160410(n)%A276865(n+1)`
-/

namespace A275855.P13302851609093686012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160410 n) (A276865 (n + 1))

end

end A275855.P13302851609093686012

namespace A275855

/-- `A160410(n)%A276865(n+1)` -/
def P13302851609093686012.Spec : Prop :=
  ∀ n, P13302851609093686012.a n = A275855 (n + 1)

end A275855

/-!
# A275856: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 1.

The programs for A275856, the canonical program `A275856.P12583488271180502337` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275856 has offset 0).

The definition of A275856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275856.P12583488271180502337

`floor((a(n-1)+a(n-2))*ϕ²)-1-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275856

/-- `floor((a(n-1)+a(n-2))*ϕ²)-1-a(n-2)` -/
def P12583488271180502337.Spec : Prop :=
  ∀ n, P12583488271180502337.a n = A275856 n

theorem P12583488271180502337.correct : P12583488271180502337.Spec := by
  intro n
  simp only [A275856]

end A275856

/-! ## A275856.P2179110117116852004

`floor((ϕ+1)*(a(n-1)+a(n-2)))-1-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A275856.P2179110117116852004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(Real.goldenRatio + 1) * (a (n - 1) + a (n - 2) : ℝ)⌋ - 1 - a (n - 2)

end

end A275856.P2179110117116852004

namespace A275856

/-- `floor((ϕ+1)*(a(n-1)+a(n-2)))-1-a(n-2)` -/
def P2179110117116852004.Spec : Prop :=
  ∀ n, P2179110117116852004.a n = A275856 n

theorem P2179110117116852004.correct : P2179110117116852004.Spec := by
  intro n
  simp only [A275856, Nat.add_sub_cancel, A275856.P2179110117116852004.a, A275856.P12583488271180502337.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A275856

/-! ## A275856.P9951793976059074291

`∑[(A192907(n)-a(n-1))/2]` with `a(0)=1`
-/

namespace A275856.P9951793976059074291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((A192907 n : ℚ) - f1 (n - 1)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275856.P9951793976059074291

namespace A275856

/-- `∑[(A192907(n)-a(n-1))/2]` -/
def P9951793976059074291.Spec : Prop :=
  ∀ n, P9951793976059074291.a n = (A275856 n : ℚ)

end A275856

/-! ## A275856.P2201790755380324744

`(A275857(n+2)+1)%A275857(n+1)`
-/

namespace A275856.P2201790755380324744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275857 (n + 2) + 1) (A275857 (n + 1))

end

end A275856.P2201790755380324744

namespace A275856

/-- `(A275857(n+2)+1)%A275857(n+1)` -/
def P2201790755380324744.Spec : Prop :=
  ∀ n, P2201790755380324744.a n = A275856 n

end A275856

/-! ## A275856.P806695777546028341

`A022342(a(n-1)+a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A275856.P806695777546028341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A022342 (a (n - 1) + a (n - 2)).toNat + a (n - 1)

end

end A275856.P806695777546028341

namespace A275856

/-- `A022342(a(n-1)+a(n-2))+a(n-1)` -/
def P806695777546028341.Spec : Prop :=
  ∀ n, P806695777546028341.a n = A275856 n

end A275856

/-!
# A275857: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 2.

The programs for A275857, the canonical program `A275857.P3012977211852040062` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275857 has offset 0).

The definition of A275857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275857.P10289412511399924941

`floor(ϕ*(a(n-2)+ϕ*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A275857.P10289412511399924941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊Real.goldenRatio * ((a (n - 2) : ℝ) + Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A275857.P10289412511399924941

namespace A275857

/-- `floor(ϕ*(a(n-2)+ϕ*a(n-1)))` -/
def P10289412511399924941.Spec : Prop :=
  ∀ n, P10289412511399924941.a n = A275857 n

end A275857

/-! ## A275857.P3012977211852040062

`A192910(n)+ceil(A192909(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275857

/-- `A192910(n)+ceil(A192909(n)/2)` -/
def P3012977211852040062.Spec : Prop :=
  ∀ n, P3012977211852040062.a n = A275857 n

theorem P3012977211852040062.correct : P3012977211852040062.Spec := by
  intro n
  simp only [A275857]

end A275857

/-! ## A275857.P12346841238031751834

`A275856(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A275857.P12346841238031751834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275856 (n + 1) - a (n - 1)

end

end A275857.P12346841238031751834

namespace A275857

/-- `A275856(n+1)-a(n-1)` -/
def P12346841238031751834.Spec : Prop :=
  ∀ n, P12346841238031751834.a n = A275857 n

end A275857

/-! ## A275857.P17042454343114856313

`abs(∑[A033999(n)*A275856(n+1)])`
-/

namespace A275857.P17042454343114856313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A275856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A275857.P17042454343114856313

namespace A275857

/-- `abs(∑[A033999(n)*A275856(n+1)])` -/
def P17042454343114856313.Spec : Prop :=
  ∀ n, P17042454343114856313.a n = A275857 n

end A275857

/-! ## A275857.P6089572559173747457

`A000201(a(n-1)+a(n-2))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A275857.P6089572559173747457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000201 (a (n - 1) + a (n - 2)).toNat + a (n - 1)

end

end A275857.P6089572559173747457

namespace A275857

/-- `A000201(a(n-1)+a(n-2))+a(n-1)` -/
def P6089572559173747457.Spec : Prop :=
  ∀ n, P6089572559173747457.a n = A275857 n

end A275857

/-!
# A275858: a(n) = floor(c*r*a(n-1)) - floor(d*s*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 1.

The programs for A275858, the canonical program `A275858.P14342720566579972518` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275858 has offset 0).

The definition of A275858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275858.P7683192508875470917

`ogf(1/(1-x+2x^2+x^3+x^4))`
-/

namespace A275858.P7683192508875470917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 2, 1, 1] n

end

end A275858.P7683192508875470917

namespace A275858

/-- `ogf(1/(1-x+2x^2+x^3+x^4))` -/
def P7683192508875470917.Spec : Prop :=
  ∀ n, P7683192508875470917.a n = A275858 n

end A275858

/-! ## A275858.P14342720566579972518

`∑[∑[A212804(n)]*A010892(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275858

/-- `∑[∑[A212804(n)]*A010892(n+1)]` -/
def P14342720566579972518.Spec : Prop :=
  ∀ n, P14342720566579972518.a n = A275858 n

theorem P14342720566579972518.correct : P14342720566579972518.Spec := by
  intro n
  simp only [A275858]

end A275858

/-! ## A275858.P2210004146171075469

`∑[A000045(n+1)*A010892(n+1)]`
-/

namespace A275858.P2210004146171075469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A010892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P2210004146171075469

namespace A275858

/-- `∑[A000045(n+1)*A010892(n+1)]` -/
def P2210004146171075469.Spec : Prop :=
  ∀ n, P2210004146171075469.a n = A275858 n

end A275858

/-! ## A275858.P929091153075936464

`∑[A000045(n+1)*A128834(n+2)]`
-/

namespace A275858.P929091153075936464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A128834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P929091153075936464

namespace A275858

/-- `∑[A000045(n+1)*A128834(n+2)]` -/
def P929091153075936464.Spec : Prop :=
  ∀ n, P929091153075936464.a n = A275858 n

end A275858

/-! ## A275858.P6497560174530295712

`∑[A000045(n+1)*A110161(2*n+1)]`
-/

namespace A275858.P6497560174530295712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A110161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P6497560174530295712

namespace A275858

/-- `∑[A000045(n+1)*A110161(2*n+1)]` -/
def P6497560174530295712.Spec : Prop :=
  ∀ n, P6497560174530295712.a n = A275858 n

end A275858

/-! ## A275858.P13236190501690548951

`A000045(n+2)*A010892(n)-a(n-1)` with `a(0)=1`
-/

namespace A275858.P13236190501690548951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 2) * A010892 n - a (n - 1)

end

end A275858.P13236190501690548951

namespace A275858

/-- `A000045(n+2)*A010892(n)-a(n-1)` -/
def P13236190501690548951.Spec : Prop :=
  ∀ n, P13236190501690548951.a n = A275858 n

end A275858

/-! ## A275858.P8622905163547411507

`A173343(n)-a(n-1)` with `a(0)=1`
-/

namespace A275858.P8622905163547411507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173343 n - a (n - 1)

end

end A275858.P8622905163547411507

namespace A275858

/-- `A173343(n)-a(n-1)` -/
def P8622905163547411507.Spec : Prop :=
  ∀ n, P8622905163547411507.a n = A275858 n

end A275858

/-! ## A275858.P16817963477057318980

`∑[A173344(n+1)]`
-/

namespace A275858.P16817963477057318980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P16817963477057318980

namespace A275858

/-- `∑[A173344(n+1)]` -/
def P16817963477057318980.Spec : Prop :=
  ∀ n, P16817963477057318980.a n = A275858 n

end A275858

/-!
# A275859: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = 1 + sqrt(2), s = r/(r-1), c = 2, d = 1, a(0) = 1, a(1) = 1.

The programs for A275859, there is no canonical definition to state claims against.
-/

/-! ## A275859.P5027618608665680199

`Δ[A105512(A111662(2*n+1)+1)]`
-/

namespace A275859.P5027618608665680199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A111662 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275859.P5027618608665680199

/-! ## A275859.P8485692389477797677

`A100682(A007583(n)-A346754(n))`
-/

namespace A275859.P8485692389477797677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A007583 n - A346754 n).toNat

end

end A275859.P8485692389477797677

/-! ## A275859.P5134617749576866841

`A112689(A037702(n+1))-A002265(n)`
-/

namespace A275859.P5134617749576866841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A037702 (n + 1)).toNat - A002265 n

end

end A275859.P5134617749576866841

/-!
# A275860: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = (3 + sqrt(13))/2, s = r/(r-1), c = 3, d = 1, a(0) = 1, a(1) = 1.

The programs for A275860, there is no canonical definition to state claims against.
-/

/-! ## A275860.P7061564113698072708

`A117451(A055842(n)+A000088(n))`
-/

namespace A275860.P7061564113698072708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A055842 n + A000088 n).toNat

end

end A275860.P7061564113698072708

/-! ## A275860.P11918391573307456258

`A054895(A119578(n))+A000294(n)`
-/

namespace A275860.P11918391573307456258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A119578 n).toNat + A000294 n

end

end A275860.P11918391573307456258

/-!
# A275861: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = 2 + sqrt(5), s = r/(r-1), c = 4, d = 1, a(0) = 1, a(1) = 1.

The programs for A275861, there is no canonical definition to state claims against.
-/

/-! ## A275861.P5401787666615140253

`A092196(A172402(n))+A073994(n+1)`
-/

namespace A275861.P5401787666615140253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A172402 n).toNat + A073994 (n + 1)

end

end A275861.P5401787666615140253

/-!
# A275862: floor(r*a(n-1)) + floor(r*a(n-2)), where r = 3/2, a(0) = 1, a(1) = 1.

The programs for A275862, the canonical program `A275862.P11052057522076817528` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275862 has offset 0).

The definition of A275862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275862.P11052057522076817528

`floor(3*a(n-1)/2)+floor(3*a(n-2)/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275862

/-- `floor(3*a(n-1)/2)+floor(3*a(n-2)/2)` -/
def P11052057522076817528.Spec : Prop :=
  ∀ n, P11052057522076817528.a n = A275862 n

theorem P11052057522076817528.correct : P11052057522076817528.Spec := by
  intro n
  simp only [A275862]

end A275862

/-! ## A275862.P13830805507263256211

`A032766(a(n-1))+A032766(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A275862.P13830805507263256211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A032766 (a (n - 1)).toNat + A032766 (a (n - 2)).toNat

end

end A275862.P13830805507263256211

namespace A275862

/-- `A032766(a(n-1))+A032766(a(n-2))` -/
def P13830805507263256211.Spec : Prop :=
  ∀ n, P13830805507263256211.a n = A275862 n

end A275862

/-! ## A275862.P17260238887928831477

`A157271(A132275(n+2))`
-/

namespace A275862.P17260238887928831477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A132275 (n + 2)).toNat

end

end A275862.P17260238887928831477

namespace A275862

/-- `A157271(A132275(n+2))` -/
def P17260238887928831477.Spec : Prop :=
  ∀ n, P17260238887928831477.a n = A275862 n

end A275862

/-! ## A275862.P5131592494815923605

`A100196(A085449(n)+A000041(n))`
-/

namespace A275862.P5131592494815923605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A085449 n + A000041 n).toNat

end

end A275862.P5131592494815923605

namespace A275862

/-- `A100196(A085449(n)+A000041(n))` -/
def P5131592494815923605.Spec : Prop :=
  ∀ n, P5131592494815923605.a n = A275862 n

end A275862

/-! ## A275862.P10278500473673476270

`A184416(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A275862.P10278500473673476270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A184416 (a (n - 1)).toNat

end

end A275862.P10278500473673476270

namespace A275862

/-- `A184416(a(n-1))` -/
def P10278500473673476270.Spec : Prop :=
  ∀ n, P10278500473673476270.a n = A275862 n

end A275862

/-!
# A275863: Floor(r*a(n-1)) + floor(r*a(n-2)), where r = 5/2, a(0) = 1, a(1) = 1.

The programs for A275863, there is no canonical definition to state claims against.
-/

/-! ## A275863.P6539777659216723502

`A273526(n+1)+A001222(A354436(n))`
-/

namespace A275863.P6539777659216723502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273526 (n + 1) + A001222 (A354436 n).toNat

end

end A275863.P6539777659216723502

/-! ## A275863.P9643620439734073871

`A000108(n+1)-A007895(A000311(n))`
-/

namespace A275863.P9643620439734073871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A007895 (A000311 n).toNat

end

end A275863.P9643620439734073871

/-! ## A275863.P10595456143028232669

`A000108(n+1)-A352513(A008000(n))`
-/

namespace A275863.P10595456143028232669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A352513 (A008000 n).toNat

end

end A275863.P10595456143028232669

/-!
# A275864: Floor(r*a(n-1)) + floor(r*a(n-2)), where r = 5/3, a(0) = 1, a(1) = 1.

The programs for A275864, there is no canonical definition to state claims against.
-/

/-! ## A275864.P16686671262500044887

`A276796(A152090(n+1))`
-/

namespace A275864.P16686671262500044887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A152090 (n + 1)).toNat

end

end A275864.P16686671262500044887

/-! ## A275864.P7443744607594550777

`A261585(A130082(3*(n+1)+1))`
-/

namespace A275864.P7443744607594550777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A130082 (3 * (n + 1) + 1)).toNat

end

end A275864.P7443744607594550777

/-! ## A275864.P8221984914873305419

`A095773(A294815(n))`
-/

namespace A275864.P8221984914873305419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A294815 n).toNat

end

end A275864.P8221984914873305419

/-! ## A275864.P4843735510725421079

`A218379(A118759(C(n, 2)+n²))`
-/

namespace A275864.P4843735510725421079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 (A118759 (Nat.choose n 2 + n ^ 2)).toNat

end

end A275864.P4843735510725421079

/-! ## A275864.P18438796126139292048

`A218379(A118759(C(3*n, 2)/3))`
-/

namespace A275864.P18438796126139292048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 (A118759 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat).toNat

end

end A275864.P18438796126139292048

/-!
# A275865: Floor(r*a(n-1)) - floor(r*a(n-2)), where r = 3/2, a(0) = 1, a(1) = 1.

The programs for A275865, the canonical program `A275865.P7617361304853089540` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275865 has offset 0).

The definition of A275865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275865.P7617361304853089540

`floor(3*a(n-1)/2)-floor(3*a(n-2)/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275865

/-- `floor(3*a(n-1)/2)-floor(3*a(n-2)/2)` -/
def P7617361304853089540.Spec : Prop :=
  ∀ n, P7617361304853089540.a n = A275865 n

theorem P7617361304853089540.correct : P7617361304853089540.Spec := by
  intro n
  simp only [A275865]

end A275865

/-!
# A275866: Number of semiprimes in {n, f(n), f(f(n)), ...., 1}, where f is the Collatz function.

The programs for A275866, there is no canonical definition to state claims against.
-/

/-! ## A275866.P14989630955605189996

`A020753(A078719(n+1))-A080339(n+1)`
-/

namespace A275866.P14989630955605189996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A078719 (n + 1)).toNat - A080339 (n + 1)

end

end A275866.P14989630955605189996

/-! ## A275866.P14679663045614303321

`A078719(n+1)-A210709(A297168(n+1))`
-/

namespace A275866.P14679663045614303321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A210709 (A297168 (n + 1)).toNat

end

end A275866.P14679663045614303321

/-! ## A275866.P17558533427168158633

`A078719(n+1)-A000007(A061376((n+1)^3)%(n+1))`
-/

namespace A275866.P17558533427168158633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A000007 (Int.tmod (A061376 ((n + 1) ^ 3)) (n + 1 : ℤ)).toNat

end

end A275866.P17558533427168158633

/-! ## A275866.P17858075642335314826

`A124010(A080211(n+1))+A006667(n+1)`
-/

namespace A275866.P17858075642335314826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A080211 (n + 1)).toNat + A006667 (n + 1)

end

end A275866.P17858075642335314826

/-! ## A275866.P4556161875356248374

`A078719(n+1)-A080339(A080211(n+1))`
-/

namespace A275866.P4556161875356248374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A080339 (A080211 (n + 1)).toNat

end

end A275866.P4556161875356248374

/-!
# A275867: Number of simple disconnected asymmetric graph on n vertices.

The programs for A275867, there is no canonical definition to state claims against.
-/

/-! ## A275867.P7886694386683231156

`A003400(n+1)-A124059(n+1)`
-/

namespace A275867.P7886694386683231156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003400 (n + 1) - A124059 (n + 1)

end

end A275867.P7886694386683231156

/-! ## A275867.P14262602632335181844

`A330343(n+1)/(n+1)!-A124059(n+1)`
-/

namespace A275867.P14262602632335181844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ) - (A124059 (n + 1) : ℚ)

end

end A275867.P14262602632335181844

/-! ## A275867.P5830542927251758908

`A330343(n+1)/A000142(n+1)-A124059(n+1)`
-/

namespace A275867.P5830542927251758908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) - (A124059 (n + 1) : ℚ)

end

end A275867.P5830542927251758908

/-! ## A275867.P13390277035480783917

`A124059(A364915(n)+2)`
-/

namespace A275867.P13390277035480783917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124059 (A364915 n + 2).toNat

end

end A275867.P13390277035480783917

/-! ## A275867.P16340015092585410820

`A124059(∑[A352522(n)]+1)`
-/

namespace A275867.P16340015092585410820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124059 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A275867.P16340015092585410820

/-!
# A275868: Numbers n tracing out a spiral path in a pentagonal Z module thereby creating a ten-fold twin pattern with relations to quasicrystals.

The programs for A275868, the canonical program `A275868.P16994241827659316143` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275868 has offset 1).

The definition of A275868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275868.P16994241827659316143

`A086520(A053438(n))%10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275868

/-- `A086520(A053438(n))%10` -/
def P16994241827659316143.Spec : Prop :=
  ∀ n, P16994241827659316143.a n = A275868 (n + 1)

theorem P16994241827659316143.correct : P16994241827659316143.Spec := by
  intro n
  simp only [A275868, Nat.add_sub_cancel]

end A275868

/-! ## A275868.P3356815501970254398

`A086520(Δ[A035608(n)])%10`
-/

namespace A275868.P3356815501970254398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (f1 (n + 1) - f1 n).toNat) 10

end

end A275868.P3356815501970254398

namespace A275868

/-- `A086520(Δ[A035608(n)])%10` -/
def P3356815501970254398.Spec : Prop :=
  ∀ n, P3356815501970254398.a n = A275868 (n + 1)

end A275868

/-! ## A275868.P5536423993187690704

`A086520(A042948(n+1))%10`
-/

namespace A275868.P5536423993187690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A042948 (n + 1)).toNat) 10

end

end A275868.P5536423993187690704

namespace A275868

/-- `A086520(A042948(n+1))%10` -/
def P5536423993187690704.Spec : Prop :=
  ∀ n, P5536423993187690704.a n = A275868 (n + 1)

end A275868

/-! ## A275868.P16382119716019184079

`A086520(A042963(n+1))%10`
-/

namespace A275868.P16382119716019184079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A042963 (n + 1)).toNat) 10

end

end A275868.P16382119716019184079

namespace A275868

/-- `A086520(A042963(n+1))%10` -/
def P16382119716019184079.Spec : Prop :=
  ∀ n, P16382119716019184079.a n = A275868 (n + 1)

end A275868

/-! ## A275868.P16192759234719165183

`A086520(A338062(n+1))%10`
-/

namespace A275868.P16192759234719165183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A338062 (n + 1)).toNat) 10

end

end A275868.P16192759234719165183

namespace A275868

/-- `A086520(A338062(n+1))%10` -/
def P16192759234719165183.Spec : Prop :=
  ∀ n, P16192759234719165183.a n = A275868 (n + 1)

end A275868

/-!
# A275869: Number of nonequivalent ways to place k>=0 nonattacking kings on an n X n board.

The programs for A275869, there is no canonical definition to state claims against.
-/

/-! ## A275869.P2893940300960678721

`A233583(A232798(4^n))`
-/

namespace A275869.P2893940300960678721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A232798 (4 ^ n)).toNat

end

end A275869.P2893940300960678721

/-!
# A275871: Row sums and second diagonal of A046934.

The programs for A275871, there is no canonical definition to state claims against.
-/

/-! ## A275871.P9799924690133709646

`Δ[A032347(n+1)]`
-/

namespace A275871.P9799924690133709646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275871.P9799924690133709646

/-! ## A275871.P12569576029926683366

`Δ[A046934(∑[n+1])]`
-/

namespace A275871.P12569576029926683366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275871.P12569576029926683366

/-! ## A275871.P457433632717221446

`Δ[record[A032347(abs(1-n))]]`
-/

namespace A275871.P457433632717221446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275871.P457433632717221446

/-! ## A275871.P7482821042555971030

`or(Δ[A032346(n)], char[n²])`
-/

namespace A275871.P7482821042555971030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032346 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A275871.P7482821042555971030

/-! ## A275871.P16756907920789281957

`A046934(A027379(n)+1)`
-/

namespace A275871.P16756907920789281957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (A027379 n + 1).toNat

end

end A275871.P16756907920789281957

/-! ## A275871.P13688845996006584861

`A032346(n+1)-A032347(n+1)`
-/

namespace A275871.P13688845996006584861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032346 (n + 1) - A032347 (n + 1)

end

end A275871.P13688845996006584861

/-! ## A275871.P4991038532358421490

`A032347(n+2)-A032347(n+1)`
-/

namespace A275871.P4991038532358421490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (n + 2) - A032347 (n + 1)

end

end A275871.P4991038532358421490

/-!
# A275872: A binomial convolution recurrence sequence.

The programs for A275872, there is no canonical definition to state claims against.
-/

/-! ## A275872.P1321222829458293186

`A007476(n+1)-A351437(n)`
-/

namespace A275872.P1321222829458293186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 (n + 1) - A351437 n

end

end A275872.P1321222829458293186

/-! ## A275872.P6842252083702275381

`A210545(∑[n+2])-A351437(n)`
-/

namespace A275872.P6842252083702275381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (∑ j ∈ Finset.range (n + 1), f1 j) - A351437 n

end

end A275872.P6842252083702275381

/-! ## A275872.P17385886139360905246

`A245163(A106232(n+2))-A351437(n)`
-/

namespace A275872.P17385886139360905246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A106232 (n + 2)).toNat - A351437 n

end

end A275872.P17385886139360905246

/-! ## A275872.P12155245978669603793

`A245163(A132209(n+2))-A351437(n)`
-/

namespace A275872.P12155245978669603793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A132209 (n + 2)).toNat - A351437 n

end

end A275872.P12155245978669603793

/-! ## A275872.P15819547782969331871

`A245160(n+1)-A000265(A351437(n))`
-/

namespace A275872.P15819547782969331871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245160 (n + 1) - A000265 (A351437 n).toNat

end

end A275872.P15819547782969331871

/-!
# A275873: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)) + floor(r*a(n-3)), where r = 3/2, a(0) = a(1) = a(2) = 1.

The programs for A275873, there is no canonical definition to state claims against.
-/

/-! ## A275873.P6347539676203832294

`A265370(2*A005751(n+1))`
-/

namespace A275873.P6347539676203832294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (2 * A005751 (n + 1)).toNat

end

end A275873.P6347539676203832294

/-! ## A275873.P7603571778520442375

`ceil(A306971(n+1)/A349794(n+3))`
-/

namespace A275873.P7603571778520442375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A306971 (n + 1) : ℚ) / (A349794 (n + 3) : ℚ)⌉

end

end A275873.P7603571778520442375

/-! ## A275873.P8929226648880052177

`A000006(A063018(n)+A025767(n))`
-/

namespace A275873.P8929226648880052177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A063018 n + A025767 n).toNat

end

end A275873.P8929226648880052177

/-! ## A275873.P8271822776591670221

`A000006(A063018(n)+A037027(n))`
-/

namespace A275873.P8271822776591670221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A063018 n + A037027 n).toNat

end

end A275873.P8271822776591670221

/-! ## A275873.P13895459204786389150

`A096753(n)-A001221(A051451(n+1))`
-/

namespace A275873.P13895459204786389150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096753 n - A001221 (A051451 (n + 1)).toNat

end

end A275873.P13895459204786389150

/-!
# A275874: a(n) = (n-4)*(n+1)*(n+3)/6.

The programs for A275874, the canonical program `A275874.P17292639708143574947` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275874 has offset 4).

The definition of A275874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)*(n+7)/6` (program `A275874.P17595885813690177333`, by `A275874.P17595885813690177333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275874.P17595885813690177333

`n*(n+5)*(n+7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275874.P17595885813690177333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) * (n + 7) : ℚ) / 6

end

end A275874.P17595885813690177333

namespace A275874

/-- `n*(n+5)*(n+7)/6` -/
def P17595885813690177333.Spec : Prop :=
  ∀ n, P17595885813690177333.a n = (A275874 (n + 4) : ℚ)

theorem P17595885813690177333.correct : P17595885813690177333.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A275874, Nat.add_sub_cancel, A275874.P17595885813690177333.a, A275874.P17292639708143574947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A275874, Nat.add_sub_cancel, A275874.P17595885813690177333.a, A275874.P17292639708143574947.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275874

/-! ## A275874.P17292639708143574947

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=21, a(3)=40`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275874

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17292639708143574947.Spec : Prop :=
  ∀ n, P17292639708143574947.a n = A275874 (n + 4)

theorem P17292639708143574947.correct : P17292639708143574947.Spec := by
  intro n
  simp only [A275874, Nat.add_sub_cancel]

end A275874

/-! ## A275874.P5963342941981877629

`record[C(n, 3)-2*n]`
-/

namespace A275874.P5963342941981877629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275874.P5963342941981877629

namespace A275874

/-- `record[C(n, 3)-2*n]` -/
def P5963342941981877629.Spec : Prop :=
  ∀ n, P5963342941981877629.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P10440377584318828455

`record[C(n, 3)-n-n]`
-/

namespace A275874.P10440377584318828455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275874.P10440377584318828455

namespace A275874

/-- `record[C(n, 3)-n-n]` -/
def P10440377584318828455.Spec : Prop :=
  ∀ n, P10440377584318828455.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P12543847846190910829

`C(n+5, 3)-2*(n+5)`
-/

namespace A275874.P12543847846190910829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 3 : ℤ) - (2 * (n + 5) : ℤ)

end

end A275874.P12543847846190910829

namespace A275874

/-- `C(n+5, 3)-2*(n+5)` -/
def P12543847846190910829.Spec : Prop :=
  ∀ n, P12543847846190910829.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P10235929578709736404

`∑[(∑[n+3]+1)%(n+2)²]`
-/

namespace A275874.P10235929578709736404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275874.P10235929578709736404

namespace A275874

/-- `∑[(∑[n+3]+1)%(n+2)²]` -/
def P10235929578709736404.Spec : Prop :=
  ∀ n, (P10235929578709736404.a n : ℤ) = A275874 (n + 4)

end A275874

/-! ## A275874.P2632131712935205054

`floor(n+1+a(n-1)+C(n+3, 2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A275874.P2632131712935205054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + 1 + (a (n - 1) + Nat.choose (n + 3) 2)

end

end A275874.P2632131712935205054

namespace A275874

/-- `floor(n+1+a(n-1)+C(n+3, 2))` -/
def P2632131712935205054.Spec : Prop :=
  ∀ n, (P2632131712935205054.a n : ℤ) = A275874 (n + 4)

end A275874

/-! ## A275874.P16313771328010967237

`A323221(n)-1`
-/

namespace A275874.P16313771328010967237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - 1

end

end A275874.P16313771328010967237

namespace A275874

/-- `A323221(n)-1` -/
def P16313771328010967237.Spec : Prop :=
  ∀ n, P16313771328010967237.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P15237016909167883053

`A008778(n+1)-5`
-/

namespace A275874.P15237016909167883053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) - 5

end

end A275874.P15237016909167883053

namespace A275874

/-- `A008778(n+1)-5` -/
def P15237016909167883053.Spec : Prop :=
  ∀ n, P15237016909167883053.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P12715111659273621226

`A034857(n+1)+1+n`
-/

namespace A275874.P12715111659273621226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1) + 1 + (n : ℤ)

end

end A275874.P12715111659273621226

namespace A275874

/-- `A034857(n+1)+1+n` -/
def P12715111659273621226.Spec : Prop :=
  ∀ n, P12715111659273621226.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P13522368785432983373

`A006416(n+2)-1+n`
-/

namespace A275874.P13522368785432983373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2) - 1 + (n : ℤ)

end

end A275874.P13522368785432983373

namespace A275874

/-- `A006416(n+2)-1+n` -/
def P13522368785432983373.Spec : Prop :=
  ∀ n, P13522368785432983373.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P877533172116516653

`∑[(∑[n+3]+1)*and(1, A000040(n+1))]`
-/

namespace A275874.P877533172116516653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * Int.land 1 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275874.P877533172116516653

namespace A275874

/-- `∑[(∑[n+3]+1)*and(1, A000040(n+1))]` -/
def P877533172116516653.Spec : Prop :=
  ∀ n, P877533172116516653.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P11359490085597683655

`A026057(n)+A008592(n)`
-/

namespace A275874.P11359490085597683655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026057 n + A008592 n

end

end A275874.P11359490085597683655

namespace A275874

/-- `A026057(n)+A008592(n)` -/
def P11359490085597683655.Spec : Prop :=
  ∀ n, P11359490085597683655.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P5296838758727053394

`A033537(n)+A004006(n)`
-/

namespace A275874.P5296838758727053394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n + A004006 n

end

end A275874.P5296838758727053394

namespace A275874

/-- `A033537(n)+A004006(n)` -/
def P5296838758727053394.Spec : Prop :=
  ∀ n, P5296838758727053394.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P9871755945020450039

`A046691(n)+A005286(n)`
-/

namespace A275874.P9871755945020450039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A005286 n

end

end A275874.P9871755945020450039

namespace A275874

/-- `A046691(n)+A005286(n)` -/
def P9871755945020450039.Spec : Prop :=
  ∀ n, P9871755945020450039.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P6058613803279984135

`A059845(n)+A000292(n)`
-/

namespace A275874.P6058613803279984135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + A000292 n

end

end A275874.P6058613803279984135

namespace A275874

/-- `A059845(n)+A000292(n)` -/
def P6058613803279984135.Spec : Prop :=
  ∀ n, P6058613803279984135.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P8582302960781684253

`A055998(n)+A005586(n)`
-/

namespace A275874.P8582302960781684253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A005586 n

end

end A275874.P8582302960781684253

namespace A275874

/-- `A055998(n)+A005586(n)` -/
def P8582302960781684253.Spec : Prop :=
  ∀ n, P8582302960781684253.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P10802492480792849347

`A056000(n)+A006503(n)`
-/

namespace A275874.P10802492480792849347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A006503 n

end

end A275874.P10802492480792849347

namespace A275874

/-- `A056000(n)+A006503(n)` -/
def P10802492480792849347.Spec : Prop :=
  ∀ n, P10802492480792849347.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P6214438643364260366

`A092286(n)+A000096(n)`
-/

namespace A275874.P6214438643364260366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + A000096 n

end

end A275874.P6214438643364260366

namespace A275874

/-- `A092286(n)+A000096(n)` -/
def P6214438643364260366.Spec : Prop :=
  ∀ n, P6214438643364260366.a n = A275874 (n + 4)

end A275874

/-! ## A275874.P17147176376450114955

`A140672(n)+A005581(n)`
-/

namespace A275874.P17147176376450114955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + A005581 n

end

end A275874.P17147176376450114955

namespace A275874

/-- `A140672(n)+A005581(n)` -/
def P17147176376450114955.Spec : Prop :=
  ∀ n, P17147176376450114955.a n = A275874 (n + 4)

end A275874

/-!
# A275875: Subadditive triangle read by rows associated with the Grundy function A025480.

The programs for A275875, there is no canonical definition to state claims against.
-/

/-! ## A275875.P6573506366029513191

`A070939(A010783(A185870(n+1)))`
-/

namespace A275875.P6573506366029513191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A010783 (A185870 (n + 1)).toNat).toNat

end

end A275875.P6573506366029513191

/-! ## A275875.P9573277074898030277

`ceil(A059870(n+1)/A213777(n+1))`
-/

namespace A275875.P9573277074898030277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059870 (n + 1) : ℚ) / (A213777 (n + 1) : ℚ)⌉

end

end A275875.P9573277074898030277

/-! ## A275875.P469722809926851172

`A001221(A132056(n+1)+A101793(n+1))`
-/

namespace A275875.P469722809926851172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A132056 (n + 1) + A101793 (n + 1)).toNat

end

end A275875.P469722809926851172

/-! ## A275875.P2432301579862534687

`A276333(A011972(n)*A105970(2*(n+1)))`
-/

namespace A275875.P2432301579862534687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (A011972 n * A105970 (2 * (n + 1))).toNat

end

end A275875.P2432301579862534687

/-! ## A275875.P1610614854394099275

`A099563(A323372(3*(n+1))+A217745(n+3))`
-/

namespace A275875.P1610614854394099275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A323372 (3 * (n + 1)) + A217745 (n + 3)).toNat

end

end A275875.P1610614854394099275

/-!
# A275876: a(n) = 4*n*(n^2 - 3*n - 1)/3.

The programs for A275876, the canonical program `A275876.P17604970659613847979` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275876 has offset 0).

The definition of A275876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n²-3*n-1)/3` (program `A275876.P13793519078164509027`, by `A275876.P13793519078164509027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275876.P13793519078164509027

`4*n*(n²-3*n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275876.P13793519078164509027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) - 1) : ℚ) / 3

end

end A275876.P13793519078164509027

namespace A275876

/-- `4*n*(n²-3*n-1)/3` -/
def P13793519078164509027.Spec : Prop :=
  ∀ n, P13793519078164509027.a n = (A275876 n : ℚ)

theorem P13793519078164509027.correct : P13793519078164509027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A275876, Nat.add_sub_cancel, A275876.P13793519078164509027.a, A275876.P17604970659613847979.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A275876, Nat.add_sub_cancel, A275876.P13793519078164509027.a, A275876.P17604970659613847979.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275876

/-! ## A275876.P17604970659613847979

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-4, a(2)=-8, a(3)=-4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275876

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17604970659613847979.Spec : Prop :=
  ∀ n, P17604970659613847979.a n = A275876 n

theorem P17604970659613847979.correct : P17604970659613847979.Spec := by
  intro n
  simp only [A275876]

end A275876

/-! ## A275876.P4990954469268767825

`C(2*n, 3)-∑[4*n]`
-/

namespace A275876.P4990954469268767825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A275876.P4990954469268767825

namespace A275876

/-- `C(2*n, 3)-∑[4*n]` -/
def P4990954469268767825.Spec : Prop :=
  ∀ n, P4990954469268767825.a n = A275876 n

end A275876

/-! ## A275876.P15591076909533330039

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=-4, a(2)=0`
-/

namespace A275876.P15591076909533330039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -4, 0] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275876.P15591076909533330039

namespace A275876

/-- `∑[∑[a(n-1)+8]]` -/
def P15591076909533330039.Spec : Prop :=
  ∀ n, P15591076909533330039.a n = A275876 n

end A275876

/-! ## A275876.P8829786671247951115

`C(2*n+1, 3)-(2*n)²-n`
-/

namespace A275876.P8829786671247951115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) - ((2 * n) ^ 2 : ℤ) - (n : ℤ)

end

end A275876.P8829786671247951115

namespace A275876

/-- `C(2*n+1, 3)-(2*n)²-n` -/
def P8829786671247951115.Spec : Prop :=
  ∀ n, P8829786671247951115.a n = A275876 n

end A275876

/-! ## A275876.P17581653535345992654

`4*(A109620(n)+1)`
-/

namespace A275876.P17581653535345992654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A109620 n + 1)

end

end A275876.P17581653535345992654

namespace A275876

/-- `4*(A109620(n)+1)` -/
def P17581653535345992654.Spec : Prop :=
  ∀ n, P17581653535345992654.a n = A275876 n

end A275876

/-! ## A275876.P8548218800207520893

`4*(A007290(n)-n)`
-/

namespace A275876.P8548218800207520893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007290 n - (n : ℤ))

end

end A275876.P8548218800207520893

namespace A275876

/-- `4*(A007290(n)-n)` -/
def P8548218800207520893.Spec : Prop :=
  ∀ n, P8548218800207520893.a n = A275876 n

end A275876

/-! ## A275876.P2522000158584732155

`A000447(n)-A007742(n)`
-/

namespace A275876.P2522000158584732155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - A007742 n

end

end A275876.P2522000158584732155

namespace A275876

/-- `A000447(n)-A007742(n)` -/
def P2522000158584732155.Spec : Prop :=
  ∀ n, P2522000158584732155.a n = A275876 n

end A275876

/-! ## A275876.P558112791731917505

`A007585(n)-A022267(n)`
-/

namespace A275876.P558112791731917505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n - A022267 n

end

end A275876.P558112791731917505

namespace A275876

/-- `A007585(n)-A022267(n)` -/
def P558112791731917505.Spec : Prop :=
  ∀ n, P558112791731917505.a n = A275876 n

end A275876

/-! ## A275876.P14079768771722226531

`A002492(n)-A033580(n)`
-/

namespace A275876.P14079768771722226531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n - A033580 n

end

end A275876.P14079768771722226531

namespace A275876

/-- `A002492(n)-A033580(n)` -/
def P14079768771722226531.Spec : Prop :=
  ∀ n, P14079768771722226531.a n = A275876 n

end A275876

/-! ## A275876.P8715985763485603962

`A035597(n)-A002943(n)`
-/

namespace A275876.P8715985763485603962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n - A002943 n

end

end A275876.P8715985763485603962

namespace A275876

/-- `A035597(n)-A002943(n)` -/
def P8715985763485603962.Spec : Prop :=
  ∀ n, P8715985763485603962.a n = A275876 n

end A275876

/-! ## A275876.P12331544838017676426

`A015240(n)-A037235(n)`
-/

namespace A275876.P12331544838017676426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - A037235 n

end

end A275876.P12331544838017676426

namespace A275876

/-- `A015240(n)-A037235(n)` -/
def P12331544838017676426.Spec : Prop :=
  ∀ n, P12331544838017676426.a n = A275876 n

end A275876

/-! ## A275876.P8689046463744606076

`A001845(n)-A080859(n)`
-/

namespace A275876.P8689046463744606076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A080859 n

end

end A275876.P8689046463744606076

namespace A275876

/-- `A001845(n)-A080859(n)` -/
def P8689046463744606076.Spec : Prop :=
  ∀ n, P8689046463744606076.a n = A275876 n

end A275876

/-! ## A275876.P18143730047702445090

`A100503(n)-A033951(n)`
-/

namespace A275876.P18143730047702445090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n - A033951 n

end

end A275876.P18143730047702445090

namespace A275876

/-- `A100503(n)-A033951(n)` -/
def P18143730047702445090.Spec : Prop :=
  ∀ n, P18143730047702445090.a n = A275876 n

end A275876

/-! ## A275876.P6530515492869932938

`A168547(n)-A001845(n)`
-/

namespace A275876.P6530515492869932938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - A001845 n

end

end A275876.P6530515492869932938

namespace A275876

/-- `A168547(n)-A001845(n)` -/
def P6530515492869932938.Spec : Prop :=
  ∀ n, P6530515492869932938.a n = A275876 n

end A275876

/-! ## A275876.P5410534647300176630

`A161703(n)-A016921(n)`
-/

namespace A275876.P5410534647300176630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n - A016921 n

end

end A275876.P5410534647300176630

namespace A275876

/-- `A161703(n)-A016921(n)` -/
def P5410534647300176630.Spec : Prop :=
  ∀ n, P5410534647300176630.a n = A275876 n

end A275876

/-! ## A275876.P9514929783147471040

`A161707(n)-A082111(n)`
-/

namespace A275876.P9514929783147471040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161707 n - A082111 n

end

end A275876.P9514929783147471040

namespace A275876

/-- `A161707(n)-A082111(n)` -/
def P9514929783147471040.Spec : Prop :=
  ∀ n, P9514929783147471040.a n = A275876 n

end A275876

/-! ## A275876.P8189709122873068323

`A050533(n)-A195319(n)`
-/

namespace A275876.P8189709122873068323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050533 n - A195319 n

end

end A275876.P8189709122873068323

namespace A275876

/-- `A050533(n)-A195319(n)` -/
def P8189709122873068323.Spec : Prop :=
  ∀ n, P8189709122873068323.a n = A275876 n

end A275876

/-! ## A275876.P2281407282147466960

`A217873(n)-A033996(n)`
-/

namespace A275876.P2281407282147466960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n - A033996 n

end

end A275876.P2281407282147466960

namespace A275876

/-- `A217873(n)-A033996(n)` -/
def P2281407282147466960.Spec : Prop :=
  ∀ n, P2281407282147466960.a n = A275876 n

end A275876

/-! ## A275876.P17910839038743405453

`A006597(n)-A245301(n)`
-/

namespace A275876.P17910839038743405453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 n - A245301 n

end

end A275876.P17910839038743405453

namespace A275876

/-- `A006597(n)-A245301(n)` -/
def P17910839038743405453.Spec : Prop :=
  ∀ n, P17910839038743405453.a n = A275876 n

end A275876

/-!
# A275877: Numbers on the East-West axis of A274640 in order of appearance.

The programs for A275877, there is no canonical definition to state claims against.
-/

/-! ## A275877.P12571904936853909860

`A274640(∑[comp[or(2, n)]])`
-/

namespace A275877.P12571904936853909860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275877.P12571904936853909860

/-! ## A275877.P18427164672141016297

`A274640(∑[lt[n, or(2, n)]])`
-/

namespace A275877.P18427164672141016297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275877.P18427164672141016297

/-! ## A275877.P15309193222322486815

`A274640(∑[lt[n, xor(2, n)]])`
-/

namespace A275877.P15309193222322486815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275877.P15309193222322486815

/-! ## A275877.P4335345144580630401

`A274640(∑[record[and(n, -3)]])`
-/

namespace A275877.P4335345144580630401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275877.P4335345144580630401

/-! ## A275877.P18209775006097387670

`A274640(floor((1/4+n)²))`
-/

namespace A275877.P18209775006097387670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ⌊((1 : ℚ) / 4 + (n : ℚ)) ^ 2⌋.toNat

end

end A275877.P18209775006097387670

/-! ## A275877.P16596751029959867975

`A274641(∑[comp[or(2, n)]])+1`
-/

namespace A275877.P16596751029959867975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A275877.P16596751029959867975

/-! ## A275877.P5325457698394515260

`A274641(∑[record[xor(2, n)-2]])+1`
-/

namespace A275877.P5325457698394515260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A275877.P5325457698394515260

/-! ## A275877.P4944573283088653240

`A274641(∑[and(n, -2)+n])+1`
-/

namespace A275877.P4944573283088653240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A275877.P4944573283088653240

/-! ## A275877.P15926066765516096455

`A274641(∑[record[and(2, n)+n]])+1`
-/

namespace A275877.P15926066765516096455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A275877.P15926066765516096455

/-! ## A275877.P16391320841482663220

`A274641(∑[2*n-n%2])+1`
-/

namespace A275877.P16391320841482663220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A275877.P16391320841482663220

/-! ## A275877.P11914864962984619326

`A274641(∑[or(1, n)-1+n])+1`
-/

namespace A275877.P11914864962984619326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A275877.P11914864962984619326

/-! ## A275877.P3599960251408930503

`A274641(∑[2*n-and(1, n)])+1`
-/

namespace A275877.P3599960251408930503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A275877.P3599960251408930503

/-! ## A275877.P12827929814677799311

`A274641(∑[xor(1, or(1, n))+n])+1`
-/

namespace A275877.P12827929814677799311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A275877.P12827929814677799311

/-! ## A275877.P14529597696412419557

`A274641(∑[eq[0, n*and(2, n)]])+1`
-/

namespace A275877.P14529597696412419557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A275877.P14529597696412419557

/-! ## A275877.P7868989692435977978

`A274641(∑[eq[n+2, or(2, n)]])+1`
-/

namespace A275877.P7868989692435977978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A275877.P7868989692435977978

/-! ## A275877.P11062618448832995002

`A274641(A035608(n))+1`
-/

namespace A275877.P11062618448832995002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A035608 n).toNat + 1

end

end A275877.P11062618448832995002

/-! ## A275877.P17826228030834740419

`A274640(A035608(n))%A001513(n)`
-/

namespace A275877.P17826228030834740419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274640 (A035608 n).toNat) (A001513 n)

end

end A275877.P17826228030834740419

/-! ## A275877.P6289556187121547951

`∑{d}[A274640(A035608(n)), A000010(#)]`
-/

namespace A275877.P6289556187121547951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A035608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A275877.P6289556187121547951

/-! ## A275877.P9073403227385850247

`A000045(gcd(n, n+1))*A274640(A035608(n))`
-/

namespace A275877.P9073403227385850247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A274640 (A035608 n).toNat

end

end A275877.P9073403227385850247

/-! ## A275877.P6364054032880862677

`A274640(A035608(n))+A008683(4*A000040(n+1))`
-/

namespace A275877.P6364054032880862677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A035608 n).toNat + A008683 (4 * A000040 (n + 1)).toNat

end

end A275877.P6364054032880862677

/-!
# A275878: Standard Jacobi primes.

The programs for A275878, there is no canonical definition to state claims against.
-/

/-! ## A275878.P4350311588773095485

`∩[A002407(n+1), A068626(A017209(n))]`
-/

namespace A275878.P4350311588773095485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A017209 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275878.P4350311588773095485

/-! ## A275878.P1710599725016680693

`∩[A003215(3*n+1), A002407(n+1)]`
-/

namespace A275878.P1710599725016680693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275878.P1710599725016680693

/-! ## A275878.P2363926293842402882

`∩[A002407(n+1), A003215(A016777(n))]`
-/

namespace A275878.P2363926293842402882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275878.P2363926293842402882

/-! ## A275878.P11651318835385492460

`A003215(∩[A111251(n+1), A016777(n)])`
-/

namespace A275878.P11651318835385492460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A275878.P11651318835385492460

/-! ## A275878.P4927718104193053601

`∩[A334520(n+1), A003215(A016777(n))]`
-/

namespace A275878.P4927718104193053601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A016777 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275878.P4927718104193053601

/-! ## A275878.P2894148918954931475

`record[A081256(A017221(n))]`
-/

namespace A275878.P2894148918954931475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A017221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P2894148918954931475

/-! ## A275878.P4910107014561878484

`record[A081256(sqrt(A017222(n)))]`
-/

namespace A275878.P4910107014561878484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.roundAway (Real.sqrt (A017222 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P4910107014561878484

/-! ## A275878.P5029384173978348543

`record[A081256(A017209(n)+1)]`
-/

namespace A275878.P5029384173978348543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A017209 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P5029384173978348543

/-! ## A275878.P18386251038164059540

`record[A081256(A168418(n+1))]`
-/

namespace A275878.P18386251038164059540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A168418 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P18386251038164059540

/-! ## A275878.P16511003584558767929

`record[A081256(A017197(n)+2)]`
-/

namespace A275878.P16511003584558767929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A017197 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P16511003584558767929

/-! ## A275878.P12587190631189359963

`record[A081256(A017233(n)-1)]`
-/

namespace A275878.P12587190631189359963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A017233 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P12587190631189359963

/-! ## A275878.P2888299283239343063

`record[A081256(A008591(n)+5)]`
-/

namespace A275878.P2888299283239343063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A008591 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P2888299283239343063

/-! ## A275878.P5364095885075099016

`record[A081256(A082286(n)/2)]`
-/

namespace A275878.P5364095885075099016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.roundAway ((A082286 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P5364095885075099016

/-! ## A275878.P16268563780615399405

`record[A081256(A017329(n)-n)]`
-/

namespace A275878.P16268563780615399405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A017329 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P16268563780615399405

/-! ## A275878.P15064398864094928763

`record[A081256(A016789(A016777(n)))]`
-/

namespace A275878.P15064398864094928763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A016789 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P15064398864094928763

/-! ## A275878.P16920594744136205897

`record[A081256(A138153(A017233(n)))]`
-/

namespace A275878.P16920594744136205897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A138153 (A017233 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P16920594744136205897

/-! ## A275878.P16472906383024226136

`record[A081256(A330396(A017197(n)))]`
-/

namespace A275878.P16472906383024226136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A330396 (A017197 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P16472906383024226136

/-! ## A275878.P13784888273792524045

`record[A081256(A016777(2*n)+A016777(n+1))]`
-/

namespace A275878.P13784888273792524045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A016777 (2 * n) + A016777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P13784888273792524045

/-! ## A275878.P8339476127766200852

`record[A081256(A032742(A082286(n)))]`
-/

namespace A275878.P8339476127766200852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A032742 (A082286 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275878.P8339476127766200852

/-!
# A275883: Maximal element in n-th antidiagonal of A269526.

The programs for A275883, there is no canonical definition to state claims against.
-/

/-! ## A275883.P478751665542439207

`A274529(n+1)-A000038(A073304(n))`
-/

namespace A275883.P478751665542439207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (n + 1) - A000038 (A073304 n).toNat

end

end A275883.P478751665542439207

/-! ## A275883.P10447935775381393179

`A274529(n+1)-A345197(A316623(n))`
-/

namespace A275883.P10447935775381393179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (n + 1) - A345197 (A316623 n).toNat

end

end A275883.P10447935775381393179

/-! ## A275883.P13629166443752374014

`A135672(2*n+5)-A269175(A344236(n))`
-/

namespace A275883.P13629166443752374014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (2 * n + 5) - A269175 (A344236 n).toNat

end

end A275883.P13629166443752374014

/-! ## A275883.P8597670217908631625

`A351519(A007952(n+1))-A000038(A073304(n))`
-/

namespace A275883.P8597670217908631625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (A007952 (n + 1)).toNat - A000038 (A073304 n).toNat

end

end A275883.P8597670217908631625

/-!
# A275884: Indices of Greedy Queens (see A065188) on or above the main diagonal.

The programs for A275884, there is no canonical definition to state claims against.
-/

/-! ## A275884.P16496461750172713176

`A275894(n)+1`
-/

namespace A275884.P16496461750172713176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n + 1

end

end A275884.P16496461750172713176

/-! ## A275884.P2137825293867500380

`comp[A275893(n)]+1`
-/

namespace A275884.P2137825293867500380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A275884.P2137825293867500380

/-! ## A275884.P10761876829436878668

`A294427(n+1)-n`
-/

namespace A275884.P10761876829436878668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294427 (n + 1) - (n : ℤ)

end

end A275884.P10761876829436878668

/-! ## A275884.P10209214609208437851

`A275888(n)+a(n-1)` with `a(0)=1`
-/

namespace A275884.P10209214609208437851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275888 n + a (n - 1)

end

end A275884.P10209214609208437851

/-! ## A275884.P8873352353834061990

`A001478(n+1)+A294427(n+1)+1`
-/

namespace A275884.P8873352353834061990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A294427 (n + 1) + 1)

end

end A275884.P8873352353834061990

/-! ## A275884.P10737004594364036807

`∑[A275888(n+1)]+1-A275888(n+1)`
-/

namespace A275884.P10737004594364036807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A275888 (n + 1))

end

end A275884.P10737004594364036807

/-! ## A275884.P3202446230667174477

`record[A065188(n+1)]-n`
-/

namespace A275884.P3202446230667174477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275884.P3202446230667174477

/-! ## A275884.P13734239337675205460

`record[A275895(n)+1]-n`
-/

namespace A275884.P13734239337675205460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275884.P13734239337675205460

/-! ## A275884.P3600831170001780078

`record[A065185(n+1)+1+n]-n`
-/

namespace A275884.P3600831170001780078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275884.P3600831170001780078

/-! ## A275884.P13518684452075620735

`record[A275902(n)+1]-n`
-/

namespace A275884.P13518684452075620735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275884.P13518684452075620735

/-! ## A275884.P12168239610841550558

`A065189(A294427(n+1))`
-/

namespace A275884.P12168239610841550558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A294427 (n + 1)).toNat

end

end A275884.P12168239610841550558

/-! ## A275884.P7728969166747945434

`A065189(record[A065188(n+1)])`
-/

namespace A275884.P7728969166747945434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275884.P7728969166747945434

/-! ## A275884.P2650144640688680951

`A275896(record[A275895(n)])+1`
-/

namespace A275884.P2650144640688680951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A275884.P2650144640688680951

/-! ## A275884.P17672524330893764018

`A275896(record[A275902(n)])+1`
-/

namespace A275884.P17672524330893764018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A275884.P17672524330893764018

/-! ## A275884.P10353862446811975094

`record[A275900(n+1)]-n`
-/

namespace A275884.P10353862446811975094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275884.P10353862446811975094

/-! ## A275884.P13821583322849273499

`A065189(record[A275900(n+1)])`
-/

namespace A275884.P13821583322849273499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275884.P13821583322849273499

/-! ## A275884.P6011720545751571259

`A275901(lt[n, A275900(n+1)])+1`
-/

namespace A275884.P6011720545751571259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A275884.P6011720545751571259

/-!
# A275885: Lengths of runs of successive terms in A199134.

The programs for A275885, there is no canonical definition to state claims against.
-/

/-! ## A275885.P2532319443209725072

`A275888(∑[A275886(n+1)])-1`
-/

namespace A275885.P2532319443209725072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A275885.P2532319443209725072

/-! ## A275885.P5970424245737837586

`A165295(n+1)%p?[A275888(n+1)]`
-/

namespace A275885.P5970424245737837586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165295 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275885.P5970424245737837586

/-! ## A275885.P2814016997225142511

`A246760(n+1)%p?[A275888(n+1)]`
-/

namespace A275885.P2814016997225142511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246760 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275885.P2814016997225142511

/-! ## A275885.P2682145938897471279

`A010873(A107007(n+1)+p?[A275888(n+1)])`
-/

namespace A275885.P2682145938897471279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A107007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A275885.P2682145938897471279

/-! ## A275885.P10255285260687348897

`A000051(2*n)%A275888(∑[A275886(n+1)])`
-/

namespace A275885.P10255285260687348897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (2 * n)) (A275888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A275885.P10255285260687348897

/-! ## A275885.P11946381399426954757

`A229907(n+1)%p?[A275888(n+1)]`
-/

namespace A275885.P11946381399426954757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229907 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275885.P11946381399426954757

/-!
# A275887: Lengths of successive runs of identical terms in A275885.

The programs for A275887, there is no canonical definition to state claims against.
-/

/-! ## A275887.P7772210909256341263

`A000688(or(A000001(n), (6*n+7)²))`
-/

namespace A275887.P7772210909256341263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (Int.lor (A000001 n) ((6 * n + 7) ^ 2 : ℤ)).toNat

end

end A275887.P7772210909256341263

/-!
# A275888: First differences of A275884.

The programs for A275888, there is no canonical definition to state claims against.
-/

/-! ## A275888.P13903808140101003872

`Δ[A275894(n)]`
-/

namespace A275888.P13903808140101003872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275888.P13903808140101003872

/-! ## A275888.P901684319127340033

`Δ[A275884(n+1)]`
-/

namespace A275888.P901684319127340033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275888.P901684319127340033

/-! ## A275888.P13375637931574755517

`Δ[A294427(n+1)]-1`
-/

namespace A275888.P13375637931574755517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A275888.P13375637931574755517

/-! ## A275888.P14133279690044091791

`A002113(Δ[A294427(n+1)])`
-/

namespace A275888.P14133279690044091791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A275888.P14133279690044091791

/-! ## A275888.P6429205010120542716

`A275894(n+1)-A275894(n)`
-/

namespace A275888.P6429205010120542716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 (n + 1) - A275894 n

end

end A275888.P6429205010120542716

/-! ## A275888.P8235415119556312423

`A275884(n+2)-A275884(n+1)`
-/

namespace A275888.P8235415119556312423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 2) - A275884 (n + 1)

end

end A275888.P8235415119556312423

/-! ## A275888.P510376149835181934

`Δ[comp[A275893(n)]]`
-/

namespace A275888.P510376149835181934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275888.P510376149835181934

/-! ## A275888.P10036484768316007524

`Δ[record[A275895(n)]]-1`
-/

namespace A275888.P10036484768316007524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A275888.P10036484768316007524

/-! ## A275888.P11395881781658148799

`Δ[lt[1, A065185(n+1)+2]]`
-/

namespace A275888.P11395881781658148799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275888.P11395881781658148799

/-! ## A275888.P16830643978953534922

`Δ[record[A275902(n)]]-1`
-/

namespace A275888.P16830643978953534922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A275888.P16830643978953534922

/-! ## A275888.P14106016217907177700

`Δ[A275896(record[A275902(n)])]`
-/

namespace A275888.P14106016217907177700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275888.P14106016217907177700

/-!
# A275889: First differences of A199134.

The programs for A275889, there is no canonical definition to state claims against.
-/

/-! ## A275889.P17066442240861408837

`Δ[A275893(n)]`
-/

namespace A275889.P17066442240861408837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275889.P17066442240861408837

/-! ## A275889.P7129077255334570825

`Δ[A199134(n+1)]`
-/

namespace A275889.P7129077255334570825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275889.P7129077255334570825

/-! ## A275889.P14640798468307383136

`A275893(n+1)-A275893(n)`
-/

namespace A275889.P14640798468307383136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 (n + 1) - A275893 n

end

end A275889.P14640798468307383136

/-! ## A275889.P9552461651197635052

`A199134(n+2)-A199134(n+1)`
-/

namespace A275889.P9552461651197635052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 2) - A199134 (n + 1)

end

end A275889.P9552461651197635052

/-! ## A275889.P12993043654667907149

`Δ[comp[A275894(n)]]`
-/

namespace A275889.P12993043654667907149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275889.P12993043654667907149

/-! ## A275889.P7099281433640759371

`Δ[A065189(A294428(n+1))]`
-/

namespace A275889.P7099281433640759371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A294428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275889.P7099281433640759371

/-! ## A275889.P17088060011601028313

`Δ[lt[A275895(n), n]]`
-/

namespace A275889.P17088060011601028313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275889.P17088060011601028313

/-! ## A275889.P4322206724432264227

`Δ[lt[A065185(n+1), 0]]`
-/

namespace A275889.P4322206724432264227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275889.P4322206724432264227

/-! ## A275889.P8821916645483181934

`Δ[eq[1, floor(n/A065188(n+1))]]`
-/

namespace A275889.P8821916645483181934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A275889.P8821916645483181934

/-!
# A275890: a(n) is the number of i <= n such that A065188(i) >= i.

The programs for A275890, there is no canonical definition to state claims against.
-/

/-! ## A275890.P12058139288556132542

`∑[char[A275894(n)]]`
-/

namespace A275890.P12058139288556132542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275890.P12058139288556132542

/-! ## A275890.P10634372176386760450

`∑[char[comp[A275893(n)]]]`
-/

namespace A275890.P10634372176386760450
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275890.P10634372176386760450

/-! ## A275890.P14476925808120628736

`lt[n, A275896(n)]-n`
-/

namespace A275890.P14476925808120628736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A275890.P14476925808120628736

/-! ## A275890.P2928381077600523171

`comp[record[A275895(n)]]-n`
-/

namespace A275890.P2928381077600523171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A275890.P2928381077600523171

/-! ## A275890.P11377861653161887210

`comp[record[A275902(n)]]-n`
-/

namespace A275890.P11377861653161887210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A275890.P11377861653161887210

/-! ## A275890.P5413398847727010373

`1-A275891(n+1)+n`
-/

namespace A275890.P5413398847727010373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275891 (n + 1) + (n : ℤ)

end

end A275890.P5413398847727010373

/-! ## A275890.P9727225892001154528

`∑[char[A275884(n+1)-1]]`
-/

namespace A275890.P9727225892001154528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275890.P9727225892001154528

/-! ## A275890.P1681049900239421387

`ceil((A275892(n+1)+n)/2)`
-/

namespace A275890.P1681049900239421387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275892 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A275890.P1681049900239421387

/-! ## A275890.P3749652593187586700

`∑[char[∑[A275888(n+1)]]]+1`
-/

namespace A275890.P3749652593187586700
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A275890.P3749652593187586700

/-! ## A275890.P8893476974708491019

`∑[1-char[A199134(n+1)-1]]`
-/

namespace A275890.P8893476974708491019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275890.P8893476974708491019

/-!
# A275891: a(n) is the number of i <= n such that A065188(i) < i.

The programs for A275891, there is no canonical definition to state claims against.
-/

/-! ## A275891.P6092710188283616601

`∑[char[A275893(n)]]`
-/

namespace A275891.P6092710188283616601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P6092710188283616601

/-! ## A275891.P12297410356188002094

`∑[char[comp[A275894(n)]]]`
-/

namespace A275891.P12297410356188002094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P12297410356188002094

/-! ## A275891.P4885793217108379856

`∑[char[lt[A275895(n), n]]]`
-/

namespace A275891.P4885793217108379856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P4885793217108379856

/-! ## A275891.P17094056273818687512

`∑[char[A199134(n+1)-1]]`
-/

namespace A275891.P17094056273818687512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P17094056273818687512

/-! ## A275891.P16178250896324542565

`∑[char[lt[A065185(n+1), 0]]]`
-/

namespace A275891.P16178250896324542565
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P16178250896324542565

/-! ## A275891.P12742750249248643894

`∑[floor(n/A065188(n+1))]`
-/

namespace A275891.P12742750249248643894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275891.P12742750249248643894

/-! ## A275891.P1314260166058084653

`ceil((n-A275892(n+1))/2)`
-/

namespace A275891.P1314260166058084653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A275892 (n + 1) : ℚ) / 2⌉

end

end A275891.P1314260166058084653

/-! ## A275891.P17185025764471854791

`A057979(2-A275892(n+1)+n)`
-/

namespace A275891.P17185025764471854791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 - A275892 (n + 1) + (n : ℤ)).toNat

end

end A275891.P17185025764471854791

/-! ## A275891.P14424185512714493606

`a(n-1)+floor(n/A065188(n+1))^A005117(n+1)` with `a(0)=0`
-/

namespace A275891.P14424185512714493606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋ : ℚ) ^ (A005117 (n + 1) : ℤ)

end

end A275891.P14424185512714493606

/-! ## A275891.P9066179296184171092

`1-A275890(n+1)+n`
-/

namespace A275891.P9066179296184171092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275890 (n + 1) + (n : ℤ)

end

end A275891.P9066179296184171092

/-!
# A275892: a(n) = A275890(n) - A275891(n).

The programs for A275892, there is no canonical definition to state claims against.
-/

/-! ## A275892.P15343716677908871835

`A275890(n+1)-A275891(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275892.P15343716677908871835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 (n + 1) - A275891 (n + 1)

end

end A275892.P15343716677908871835

/-! ## A275892.P9162006831772675511

`∑[1-2*char[A275893(n)]]`
-/

namespace A275892.P9162006831772675511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P9162006831772675511

/-! ## A275892.P1112055510574041801

`∑[or(1, A065185(n+1))%2]`
-/

namespace A275892.P1112055510574041801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A065185 (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P1112055510574041801

/-! ## A275892.P6724681599788290131

`∑[(-1)^floor(n/A065188(n+1))]`
-/

namespace A275892.P6724681599788290131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P6724681599788290131

/-! ## A275892.P7318085468129356397

`∑[floor((1-n)^(char[A275894(n)]-1))]`
-/

namespace A275892.P7318085468129356397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℚ) ^ (((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P7318085468129356397

/-! ## A275892.P12073279688483328776

`A004273(∑[char[A275894(n)]])-n`
-/

namespace A275892.P12073279688483328776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A275892.P12073279688483328776

/-! ## A275892.P9519556733292990138

`∑[A007325(floor(n/A065188(n+1)))]`
-/

namespace A275892.P9519556733292990138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P9519556733292990138

/-! ## A275892.P15437355618384285122

`∑[A010815(floor(n/A065188(n+1)))]`
-/

namespace A275892.P15437355618384285122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P15437355618384285122

/-! ## A275892.P13444726251784782085

`∑[A015571(floor(n/A065188(n+1)))]`
-/

namespace A275892.P13444726251784782085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015571 ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P13444726251784782085

/-! ## A275892.P18206806369368273620

`∑[A015811(floor(n/A065188(n+1)))]`
-/

namespace A275892.P18206806369368273620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 ⌊(n : ℚ) / (A065188 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275892.P18206806369368273620

/-!
# A275893: a(n) = A199134(n+1)-1.

The programs for A275893, there is no canonical definition to state claims against.
-/

/-! ## A275893.P15966421438016641226

`A199134(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275893.P15966421438016641226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 1) - 1

end

end A275893.P15966421438016641226

/-! ## A275893.P12686005793666094919

`comp[A275894(n)]`
-/

namespace A275893.P12686005793666094919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275893.P12686005793666094919

/-! ## A275893.P7226160419224930912

`comp[A275884(n+1)-1]`
-/

namespace A275893.P7226160419224930912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275893.P7226160419224930912

/-! ## A275893.P7700461359074489182

`A275889(n)+a(n-1)` with `a(0)=3`
-/

namespace A275893.P7700461359074489182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A275889 n + a (n - 1)

end

end A275893.P7700461359074489182

/-! ## A275893.P5840005579597972288

`A065189(A294428(n+1))-1`
-/

namespace A275893.P5840005579597972288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A294428 (n + 1)).toNat - 1

end

end A275893.P5840005579597972288

/-! ## A275893.P15124200048112433363

`A275896(A294428(n+1)-1)`
-/

namespace A275893.P15124200048112433363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A294428 (n + 1) - 1).toNat

end

end A275893.P15124200048112433363

/-! ## A275893.P1914496338976099917

`lt[A275895(n), n]`
-/

namespace A275893.P1914496338976099917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275893.P1914496338976099917

/-! ## A275893.P17783616102093845896

`lt[A065185(n+1), 0]`
-/

namespace A275893.P17783616102093845896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275893.P17783616102093845896

/-! ## A275893.P14938734649958501853

`lt[A065188(n+1), n+1]`
-/

namespace A275893.P14938734649958501853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275893.P14938734649958501853

/-! ## A275893.P10516432268723875390

`A023443(A199134(n+1))`
-/

namespace A275893.P10516432268723875390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A199134 (n + 1)).toNat

end

end A275893.P10516432268723875390

/-!
# A275894: a(n) = A275884(n+1) - 1.

The programs for A275894, there is no canonical definition to state claims against.
-/

/-! ## A275894.P8211723192794051275

`A275884(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275894.P8211723192794051275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 1) - 1

end

end A275894.P8211723192794051275

/-! ## A275894.P11345270546996937626

`comp[A275893(n)]`
-/

namespace A275894.P11345270546996937626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275894.P11345270546996937626

/-! ## A275894.P2674538710523995091

`comp[A199134(n+1)-1]`
-/

namespace A275894.P2674538710523995091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199134 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275894.P2674538710523995091

/-! ## A275894.P10549042399677770460

`A294427(n+1)-(n+1)`
-/

namespace A275894.P10549042399677770460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294427 (n + 1) - (n + 1 : ℤ)

end

end A275894.P10549042399677770460

/-! ## A275894.P14613410221509134368

`A275888(n)+a(n-1)` with `a(0)=0`
-/

namespace A275894.P14613410221509134368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275888 n + a (n - 1)

end

end A275894.P14613410221509134368

/-! ## A275894.P2785745187368934036

`∑[A275888(n+1)]-A275888(n+1)`
-/

namespace A275894.P2785745187368934036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275888 (n + 1)

end

end A275894.P2785745187368934036

/-! ## A275894.P6156311334441067091

`record[A275895(n)]-n`
-/

namespace A275894.P6156311334441067091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275894.P6156311334441067091

/-! ## A275894.P15696466387908654055

`lt[n, A065188(n+1)]`
-/

namespace A275894.P15696466387908654055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275894.P15696466387908654055

/-! ## A275894.P2254472471780728377

`lt[1, A065185(n+1)+2]`
-/

namespace A275894.P2254472471780728377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275894.P2254472471780728377

/-! ## A275894.P3565232294454763269

`A023443(A275884(n+1))`
-/

namespace A275894.P3565232294454763269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275884 (n + 1)).toNat

end

end A275894.P3565232294454763269

/-! ## A275894.P7607827882485124976

`record[A065188(n+1)]-A065188(A065189(n+1))`
-/

namespace A275894.P7607827882485124976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065188 (A065189 (n + 1)).toNat

end

end A275894.P7607827882485124976

/-! ## A275894.P16885757198910367826

`record[A275902(n)]-n`
-/

namespace A275894.P16885757198910367826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A275894.P16885757198910367826

/-! ## A275894.P8601062555271024909

`A275896(record[A275895(n)])`
-/

namespace A275894.P8601062555271024909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275894.P8601062555271024909

/-! ## A275894.P9354637198770705030

`A275896(record[A275902(n)])`
-/

namespace A275894.P9354637198770705030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275894.P9354637198770705030

/-! ## A275894.P12070018961665652631

`A065189(A294427(n+1))-1`
-/

namespace A275894.P12070018961665652631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A294427 (n + 1)).toNat - 1

end

end A275894.P12070018961665652631

/-! ## A275894.P11514692347058943214

`A275896(A294427(n+1)-1)`
-/

namespace A275894.P11514692347058943214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A294427 (n + 1) - 1).toNat

end

end A275894.P11514692347058943214

/-! ## A275894.P10289293044836901656

`A275896(lt[A275896(n), n+1])`
-/

namespace A275894.P10289293044836901656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A275894.P10289293044836901656

/-! ## A275894.P11917505279155827901

`A275896(lt[A275896(n)-1, n])`
-/

namespace A275894.P11917505279155827901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A275894.P11917505279155827901

/-! ## A275894.P14209616351574171602

`A065189(record[A065188(n+1)])-1`
-/

namespace A275894.P14209616351574171602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A275894.P14209616351574171602

/-! ## A275894.P8806702767342957306

`record[A275900(n+1)]-(n+1)`
-/

namespace A275894.P8806702767342957306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A275894.P8806702767342957306

/-!
# A275895: "Greedy Queens" permutation of the nonnegative integers.

The programs for A275895, there is no canonical definition to state claims against.
-/

/-! ## A275895.P15126072939499214333

`A065188(n+1)-1`
-/

namespace A275895.P15126072939499214333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1) - 1

end

end A275895.P15126072939499214333

/-! ## A275895.P11848102691718964634

`A065185(n+1)+n`
-/

namespace A275895.P11848102691718964634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1) + (n : ℤ)

end

end A275895.P11848102691718964634

/-! ## A275895.P7728274826451732439

`A001478(n+1)+A065188(n+1)+n`
-/

namespace A275895.P7728274826451732439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A065188 (n + 1) + (n : ℤ))

end

end A275895.P7728274826451732439

/-! ## A275895.P6614079584449691698

`A355689(A020639(n+5))+A065188(n+1)`
-/

namespace A275895.P6614079584449691698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A020639 (n + 5)).toNat + A065188 (n + 1)

end

end A275895.P6614079584449691698

/-! ## A275895.P12360983683359858523

`A153881(n+2)+A065188(n+1)`
-/

namespace A275895.P12360983683359858523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A065188 (n + 1)

end

end A275895.P12360983683359858523

/-! ## A275895.P5062953181114314375

`A023443(A065188(n+1))`
-/

namespace A275895.P5062953181114314375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065188 (n + 1)).toNat

end

end A275895.P5062953181114314375

/-! ## A275895.P14788571711906626029

`A087960(A042963(n+1))+A065188(n+1)`
-/

namespace A275895.P14788571711906626029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A042963 (n + 1)).toNat + A065188 (n + 1)

end

end A275895.P14788571711906626029

/-!
# A275896: a(n) = A065189(n+1)-1.

The programs for A275896, there is no canonical definition to state claims against.
-/

/-! ## A275896.P13718320488350123008

`A065189(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275896.P13718320488350123008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (n + 1) - 1

end

end A275896.P13718320488350123008

/-! ## A275896.P530903753904395489

`A106400(A080100(n))+A065189(n+1)`
-/

namespace A275896.P530903753904395489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A080100 n).toNat + A065189 (n + 1)

end

end A275896.P530903753904395489

/-! ## A275896.P5984852587140866133

`abs(A065189(n+1)+A057428(A003557(n+1)))`
-/

namespace A275896.P5984852587140866133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065189 (n + 1) + A057428 (A003557 (n + 1)).toNat|

end

end A275896.P5984852587140866133

/-! ## A275896.P1805363277809707684

`(A065189(n+1)+A057428(n))%A065189(n+1)`
-/

namespace A275896.P1805363277809707684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065189 (n + 1) + A057428 n) (A065189 (n + 1))

end

end A275896.P1805363277809707684

/-! ## A275896.P553720496774525079

`A153881(n+2)+A065189(n+1)`
-/

namespace A275896.P553720496774525079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A065189 (n + 1)

end

end A275896.P553720496774525079

/-! ## A275896.P12291851989785155565

`A134824(n+2)+A065189(n+1)`
-/

namespace A275896.P12291851989785155565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A065189 (n + 1)

end

end A275896.P12291851989785155565

/-! ## A275896.P5115328716951643207

`abs(A065189(n+1)+A008683(A008578(n+2)))`
-/

namespace A275896.P5115328716951643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065189 (n + 1) + A008683 (A008578 (n + 2)).toNat|

end

end A275896.P5115328716951643207

/-! ## A275896.P4736825144005358010

`A302050(A065091(n+1))+A065189(n+1)`
-/

namespace A275896.P4736825144005358010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A065091 (n + 1)).toNat + A065189 (n + 1)

end

end A275896.P4736825144005358010

/-! ## A275896.P14350965379710512424

`A023443(A065189(n+1))`
-/

namespace A275896.P14350965379710512424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065189 (n + 1)).toNat

end

end A275896.P14350965379710512424

/-! ## A275896.P1024151892659773467

`A280193(2*n+1)+A065189(n+1)`
-/

namespace A275896.P1024151892659773467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A065189 (n + 1)

end

end A275896.P1024151892659773467

/-! ## A275896.P10239420140873162016

`abs(A065189(n+1)+A008683(A002145(n+1)))`
-/

namespace A275896.P10239420140873162016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065189 (n + 1) + A008683 (A002145 (n + 1)).toNat|

end

end A275896.P10239420140873162016

/-! ## A275896.P1557261344168101645

`A131379(Δ[A093328(n)])+A065189(n+1)`
-/

namespace A275896.P1557261344168101645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (f1 (n + 1) - f1 n).toNat + A065189 (n + 1)

end

end A275896.P1557261344168101645

/-! ## A275896.P217431385953118191

`A152163(A014963(12*n+6))+A065189(n+1)`
-/

namespace A275896.P217431385953118191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (A014963 (12 * n + 6)).toNat + A065189 (n + 1)

end

end A275896.P217431385953118191

/-! ## A275896.P6240413113962318794

`A302050(A039949(n+1))+A065189(n+1)`
-/

namespace A275896.P6240413113962318794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A039949 (n + 1)).toNat + A065189 (n + 1)

end

end A275896.P6240413113962318794

/-! ## A275896.P6145402822728903257

`A094267(A002144(n+1))+A065189(n+1)`
-/

namespace A275896.P6145402822728903257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A002144 (n + 1)).toNat + A065189 (n + 1)

end

end A275896.P6145402822728903257

/-! ## A275896.P12655548310469633284

`A115638(2*n+1)+A065189(n+1)`
-/

namespace A275896.P12655548310469633284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A065189 (n + 1)

end

end A275896.P12655548310469633284

/-! ## A275896.P15763173867762594800

`A103452(∑[n+1])+A065189(n+1)`
-/

namespace A275896.P15763173867762594800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (∑ j ∈ Finset.range (n + 1), f1 j) + A065189 (n + 1)

end

end A275896.P15763173867762594800

/-!
# A275897: Read the infinite chessboard underlying A065188 by successive antidiagonals and record when the queens are encountered. Here the rows and columns are indexed starting at 0 (as in A275895).

The programs for A275897, there is no canonical definition to state claims against.
-/

/-! ## A275897.P17346828750362819947

`A275898(n+1)-1`
-/

namespace A275897.P17346828750362819947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275898 (n + 1) - 1

end

end A275897.P17346828750362819947

/-! ## A275897.P18168566304820432532

`A321800(A001316(n))+A275898(n+1)`
-/

namespace A275897.P18168566304820432532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001316 n).toNat + A275898 (n + 1)

end

end A275897.P18168566304820432532

/-! ## A275897.P13675448887577904844

`A000217(A276324(n+1))-(A275902(n)+1)`
-/

namespace A275897.P13675448887577904844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A276324 (n + 1)).toNat - (A275902 n + 1)

end

end A275897.P13675448887577904844

/-! ## A275897.P14563124556595941425

`A275901(n)+A000217(A276324(n+1)-1)`
-/

namespace A275897.P14563124556595941425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A000217 (A276324 (n + 1) - 1).toNat

end

end A275897.P14563124556595941425

/-! ## A275897.P1865032474028112170

`A328732(∏{e}[A006530(n+1), #])+A275898(n+1)`
-/

namespace A275897.P1865032474028112170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328732 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + A275898 (n + 1)

end

end A275897.P1865032474028112170

/-! ## A275897.P13619241812323916491

`A280193(2*n+1)+A275898(n+1)`
-/

namespace A275897.P13619241812323916491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A275898 (n + 1)

end

end A275897.P13619241812323916491

/-! ## A275897.P16987683868407175912

`A275901(n)+A161680(A276324(n+1))`
-/

namespace A275897.P16987683868407175912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A161680 (A276324 (n + 1)).toNat

end

end A275897.P16987683868407175912

/-! ## A275897.P15193093871402532950

`A000124(A276324(n+1))-(A275900(n+1)+1)`
-/

namespace A275897.P15193093871402532950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A276324 (n + 1)).toNat - (A275900 (n + 1) + 1)

end

end A275897.P15193093871402532950

/-! ## A275897.P7573772229531215417

`A321800(A001222((n+1)²+n))+A275898(n+1)`
-/

namespace A275897.P7573772229531215417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001222 ((n + 1) ^ 2 + n)).toNat + A275898 (n + 1)

end

end A275897.P7573772229531215417

/-! ## A275897.P14419393305818720546

`eq[0, A274528(n)]`
-/

namespace A275897.P14419393305818720546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275897.P14419393305818720546

/-!
# A275898: Read the infinite chessboard underlying A065188 by successive antidiagonals and record when the queens are encountered. Here the rows and columns are indexed starting at 1 (as in A065188).

The programs for A275898, there is no canonical definition to state claims against.
-/

/-! ## A275898.P15053921763680827513

`A275897(n+1)+1`
-/

namespace A275898.P15053921763680827513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275897 (n + 1) + 1

end

end A275898.P15053921763680827513

/-! ## A275898.P12065710994920974200

`A000217(A276324(n+1))-A275902(n)`
-/

namespace A275898.P12065710994920974200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A276324 (n + 1)).toNat - A275902 n

end

end A275898.P12065710994920974200

/-! ## A275898.P12950329160949419495

`A275901(n)+A000217(A276324(n+1)-1)+1`
-/

namespace A275898.P12950329160949419495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A000217 (A276324 (n + 1) - 1).toNat + 1

end

end A275898.P12950329160949419495

/-! ## A275898.P4700712174828589801

`A000217(A276324(n+1))-A275895(A275901(n))`
-/

namespace A275898.P4700712174828589801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A276324 (n + 1)).toNat - A275895 (A275901 n).toNat

end

end A275898.P4700712174828589801

/-! ## A275898.P13109504420543578300

`A000124(A276324(n+1))-A275900(n+1)`
-/

namespace A275898.P13109504420543578300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A276324 (n + 1)).toNat - A275900 (n + 1)

end

end A275898.P13109504420543578300

/-! ## A275898.P7392932431973531027

`A000124(A276324(n+1))-A065188(A275899(n+1))`
-/

namespace A275898.P7392932431973531027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A276324 (n + 1)).toNat - A065188 (A275899 (n + 1)).toNat

end

end A275898.P7392932431973531027

/-! ## A275898.P11300619787320456186

`eq[0, A274528(n)]+1`
-/

namespace A275898.P11300619787320456186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275898.P11300619787320456186

/-! ## A275898.P9373195148108680588

`record[gcd(n+5, A274528(n+4))]`
-/

namespace A275898.P9373195148108680588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A274528 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275898.P9373195148108680588

/-! ## A275898.P8605530444663152739

`eq[1, A269526(n+1)]+1`
-/

namespace A275898.P8605530444663152739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275898.P8605530444663152739

/-!
# A275899: Following the successive antidiagonals in A065188, let the n-th queen appear in square (x(n),y(n)); sequence gives x(n).

The programs for A275899, there is no canonical definition to state claims against.
-/

/-! ## A275899.P14457639178949157067

`A275901(n)+1`
-/

namespace A275899.P14457639178949157067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + 1

end

end A275899.P14457639178949157067

/-! ## A275899.P13821715555138802732

`A065189(A275900(n+1))`
-/

namespace A275899.P13821715555138802732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A275900 (n + 1)).toNat

end

end A275899.P13821715555138802732

/-! ## A275899.P5405943004606041122

`A065189(A275902(n)+1)`
-/

namespace A275899.P5405943004606041122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A275902 n + 1).toNat

end

end A275899.P5405943004606041122

/-! ## A275899.P7900816620008494034

`A276324(n+1)-A275902(n)`
-/

namespace A275899.P7900816620008494034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - A275902 n

end

end A275899.P7900816620008494034

/-! ## A275899.P16720757522382122706

`n-(A023443(n)-A275901(n))`
-/

namespace A275899.P16720757522382122706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A275901 n)

end

end A275899.P16720757522382122706

/-! ## A275899.P16164282426859972514

`A275896(A275900(n+1)-1)+1`
-/

namespace A275899.P16164282426859972514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A275900 (n + 1) - 1).toNat + 1

end

end A275899.P16164282426859972514

/-! ## A275899.P4640136755825334510

`A276325(n+1)+A275900(n+1)`
-/

namespace A275899.P4640136755825334510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276325 (n + 1) + A275900 (n + 1)

end

end A275899.P4640136755825334510

/-! ## A275899.P5240576390084059640

`A276325(n+1)+A275902(n)+1`
-/

namespace A275899.P5240576390084059640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276325 (n + 1) + (A275902 n + 1)

end

end A275899.P5240576390084059640

/-! ## A275899.P13476827719521908362

`A276324(n+1)+1-A275900(n+1)`
-/

namespace A275899.P13476827719521908362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) + (1 - A275900 (n + 1))

end

end A275899.P13476827719521908362

/-! ## A275899.P4916218404861498058

`A276783(n)+1-A275902(n)`
-/

namespace A275899.P4916218404861498058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276783 n + (1 - A275902 n)

end

end A275899.P4916218404861498058

