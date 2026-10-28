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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271300: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 347", based on the 5-celled von Neumann neighborhood.

The programs for A271300, there is no canonical definition to state claims against.
-/

/-! ## A271300.P15507160163498540713

`Δ[A271297(n)]`
-/

namespace A271300.P15507160163498540713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271300.P15507160163498540713

/-! ## A271300.P12115498206258731692

`A271297(n+1)-A271297(n)`
-/

namespace A271300.P12115498206258731692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271297 (n + 1) - A271297 n

end

end A271300.P12115498206258731692

/-! ## A271300.P13531898681884887955

`Δ[A248576(8*n+14)+or(3, 2*n)²-A270329(n+1)]`
-/

namespace A271300.P13531898681884887955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248576 (8 * n + 14) + ((Nat.lor 3 (2 * n) ^ 2 : ℤ) - A270329 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271300.P13531898681884887955

/-! ## A271300.P10149994164159096688

`Δ[A248576(8*n+14)+Δ[A271119(n)]-A271120(n)]`
-/

namespace A271300.P10149994164159096688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248576 (8 * n + 14) + (f2 (n + 1) - f2 n - A271120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271300.P10149994164159096688

/-!
# A271301: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A271301, there is no canonical definition to state claims against.
-/

/-! ## A271301.P10309381913432033633

`A271304(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271301.P10309381913432033633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271304 (n - 1) + a (n - 1)

end

end A271301.P10309381913432033633

/-! ## A271301.P1900966918571952981

`Δ[A271303(n)]-A271304(n)`
-/

namespace A271301.P1900966918571952981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271304 n

end

end A271301.P1900966918571952981

/-! ## A271301.P7716775738291890654

`A271303(n+1)-(A271304(n)+A271303(n))`
-/

namespace A271301.P7716775738291890654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271303 (n + 1) - (A271304 n + A271303 n)

end

end A271301.P7716775738291890654

/-! ## A271301.P11868417333614395331

`∑[Δ[A016754(n)]-A272785(n)]`
-/

namespace A271301.P11868417333614395331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A272785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271301.P11868417333614395331

/-! ## A271301.P9080437190141553901

`∑[A004771(n)+1-A272785(n)]`
-/

namespace A271301.P9080437190141553901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A272785 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271301.P9080437190141553901

/-! ## A271301.P14549227334358948913

`(2*n+3)²-Δ[A272784(n)]`
-/

namespace A271301.P14549227334358948913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A271301.P14549227334358948913

/-! ## A271301.P15434930671584644172

`A016754(n+1)-A272782(n+1)`
-/

namespace A271301.P15434930671584644172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A272782 (n + 1)

end

end A271301.P15434930671584644172

/-!
# A271302: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A271302, there is no canonical definition to state claims against.
-/

/-! ## A271302.P8139505067434347041

`A271301(2^n-1)`
-/

namespace A271302.P8139505067434347041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 (2 ^ n - 1)

end

end A271302.P8139505067434347041

/-! ## A271302.P3056479637329525368

`record[A271301(A135481(n))]`
-/

namespace A271302.P3056479637329525368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271302.P3056479637329525368

/-! ## A271302.P14404638522478413357

`or(1, A271301(A000225(n)))`
-/

namespace A271302.P14404638522478413357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271301 (A000225 n).toNat)

end

end A271302.P14404638522478413357

/-! ## A271302.P18428011107248038638

`record[A271301(A253564(n+1))]`
-/

namespace A271302.P18428011107248038638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271302.P18428011107248038638

/-! ## A271302.P3739521794963967410

`record[A271301(A059268(n)-1)]`
-/

namespace A271302.P3739521794963967410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271302.P3739521794963967410

/-!
# A271303: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A271303, there is no canonical definition to state claims against.
-/

/-! ## A271303.P15600035211250194274

`∑[A271301(n)]`
-/

namespace A271303.P15600035211250194274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271303.P15600035211250194274

/-! ## A271303.P15682116488101231514

`a(n-1)+A271301(n)+A000007(n)` with `a(0)=1`
-/

namespace A271303.P15682116488101231514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271301 n + A000007 n)

end

end A271303.P15682116488101231514

/-! ## A271303.P2422548214314050165

`A271301(n%A014616(n))+a(n-1)` with `a(0)=1`
-/

namespace A271303.P2422548214314050165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271301 (Int.tmod (n : ℤ) (A014616 n)).toNat + a (n - 1)

end

end A271303.P2422548214314050165

/-! ## A271303.P5126871235963957052

`A271301(gcd(n, A228291(n)))+a(n-1)` with `a(0)=1`
-/

namespace A271303.P5126871235963957052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271301 (Int.gcd (n : ℤ) (A228291 n)) + a (n - 1)

end

end A271303.P5126871235963957052

/-! ## A271303.P16137447307772106014

`∑[A271304(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271303.P16137447307772106014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271304 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271303.P16137447307772106014

/-! ## A271303.P387985242753073347

`∑[∑[A271304(n)]+1-A271304(n)]`
-/

namespace A271303.P387985242753073347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271304 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271303.P387985242753073347

/-! ## A271303.P8687117649639943670

`∑[A016754(n+1)-A272782(n+1)]`
-/

namespace A271303.P8687117649639943670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A272782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271303.P8687117649639943670

/-!
# A271304: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 350", based on the 5-celled von Neumann neighborhood.

The programs for A271304, there is no canonical definition to state claims against.
-/

/-! ## A271304.P7712735856310399137

`Δ[A271301(n)]`
-/

namespace A271304.P7712735856310399137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271304.P7712735856310399137

/-! ## A271304.P1595286786961991377

`A271301(n+1)-A271301(n)`
-/

namespace A271304.P1595286786961991377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271301 (n + 1) - A271301 n

end

end A271304.P1595286786961991377

/-! ## A271304.P13544223913588433860

`8*(n+2)-A272785(n+1)`
-/

namespace A271304.P13544223913588433860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A272785 (n + 1)

end

end A271304.P13544223913588433860

/-! ## A271304.P12509222827489502492

`A004771(n+1)+1-A272785(n+1)`
-/

namespace A271304.P12509222827489502492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A272785 (n + 1))

end

end A271304.P12509222827489502492

/-! ## A271304.P2882180217559371913

`Δ[A271303(n)]-((2*n+3)²-Δ[A272784(n)])`
-/

namespace A271304.P2882180217559371913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((2 * n + 3) ^ 2 : ℤ) - (f2 (n + 1) - f2 n))

end

end A271304.P2882180217559371913

/-! ## A271304.P12113792359657562962

`Δ[A271303(n)]-(A016754(n+1)-A272782(n+1))`
-/

namespace A271304.P12113792359657562962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A016754 (n + 1) - A272782 (n + 1))

end

end A271304.P12113792359657562962

/-! ## A271304.P11932275048996641362

`Δ[A016754(n+1)-A272782(n+1)]`
-/

namespace A271304.P11932275048996641362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A272782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271304.P11932275048996641362

/-!
# A271305: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 353", based on the 5-celled von Neumann neighborhood.

The programs for A271305, there is no canonical definition to state claims against.
-/

/-! ## A271305.P3700526377594397474

`A271308(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271305.P3700526377594397474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271308 (n - 1) + a (n - 1)

end

end A271305.P3700526377594397474

/-! ## A271305.P16101810464638811764

`∑[A271308(A028310(n)-1)]-2`
-/

namespace A271305.P16101810464638811764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271308 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A271305.P16101810464638811764

/-! ## A271305.P7901809407279844462

`A271308(n-A054977(n))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A271305.P7901809407279844462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271308 ((n : ℤ) - A054977 n).toNat - (-a (n - 1))

end

end A271305.P7901809407279844462

/-! ## A271305.P710068424096697917

`Δ[A271307(n)]-A271308(n)`
-/

namespace A271305.P710068424096697917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271308 n

end

end A271305.P710068424096697917

/-! ## A271305.P14316073522941089434

`A271307(n+1)-(A271308(n)+A271307(n))`
-/

namespace A271305.P14316073522941089434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271307 (n + 1) - (A271308 n + A271307 n)

end

end A271305.P14316073522941089434

/-!
# A271306: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 353", based on the 5-celled von Neumann neighborhood.

The programs for A271306, there is no canonical definition to state claims against.
-/

/-! ## A271306.P13811253231225843732

`A271305(2^n-1)`
-/

namespace A271306.P13811253231225843732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (2 ^ n - 1)

end

end A271306.P13811253231225843732

/-! ## A271306.P17031065065672128500

`record[A271305(A227351(n))]`
-/

namespace A271306.P17031065065672128500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271306.P17031065065672128500

/-! ## A271306.P10678629803470623909

`record[A271305(A303765(n))]`
-/

namespace A271306.P10678629803470623909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271306.P10678629803470623909

/-! ## A271306.P6422836989082485764

`record[A271305(A243071(n+1))]`
-/

namespace A271306.P6422836989082485764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271306.P6422836989082485764

/-! ## A271306.P6282096979263938724

`record[A271305(A324573(n+1))]`
-/

namespace A271306.P6282096979263938724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (A324573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271306.P6282096979263938724

/-!
# A271307: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 353", based on the 5-celled von Neumann neighborhood.

The programs for A271307, there is no canonical definition to state claims against.
-/

/-! ## A271307.P7397054765458524353

`∑[A271305(n)]`
-/

namespace A271307.P7397054765458524353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271307.P7397054765458524353

/-! ## A271307.P1066569996337120531

`∑[A271308(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271307.P1066569996337120531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271308 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271307.P1066569996337120531

/-! ## A271307.P1719370813243380810

`∑[∑[A271308(n)]+1-A271308(n)]`
-/

namespace A271307.P1719370813243380810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271308 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271307.P1719370813243380810

/-! ## A271307.P7264683652086688783

`A271305(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A271307.P7264683652086688783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271305 (A004526 (2 * n)).toNat + a (n - 1)

end

end A271307.P7264683652086688783

/-! ## A271307.P11337689573946584936

`A271305(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A271307.P11337689573946584936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271305 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A271307.P11337689573946584936

/-!
# A271308: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 353", based on the 5-celled von Neumann neighborhood.

The programs for A271308, there is no canonical definition to state claims against.
-/

/-! ## A271308.P8335687657561556008

`Δ[A271305(n)]`
-/

namespace A271308.P8335687657561556008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271308.P8335687657561556008

/-! ## A271308.P13432166022042093685

`A271305(n+1)-A271305(n)`
-/

namespace A271308.P13432166022042093685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271305 (n + 1) - A271305 n

end

end A271308.P13432166022042093685

/-!
# A271311: Values of n such that A080221(n)=6; i.e., values of n such that n is divisible by the sum of digits of n when expressed in exactly 6 of the bases b=1...n.

The programs for A271311, there is no canonical definition to state claims against.
-/

/-! ## A271311.P17432180335753172174

`eq[6, A080221(A028310(n))]`
-/

namespace A271311.P17432180335753172174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271311.P17432180335753172174

/-! ## A271311.P13599451548307047828

`A014681(eq[6, A080221(n+1)])`
-/

namespace A271311.P13599451548307047828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271311.P13599451548307047828

/-! ## A271311.P17619066143576372343

`eq[6, A080221(A065190(n+1))]`
-/

namespace A271311.P17619066143576372343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271311.P17619066143576372343

/-! ## A271311.P17870759717825440625

`eq[6, A080221(A060000(n+1))]`
-/

namespace A271311.P17870759717825440625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271311.P17870759717825440625

/-! ## A271311.P4596869877693194735

`eq[6, A080221(A123108(2*n))]`
-/

namespace A271311.P4596869877693194735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271311.P4596869877693194735

/-!
# A271313: Values of n such that A080221(n)=7; i.e., values of n such that n is divisible by the sum of digits of n when expressed in exactly 7 of the bases b=1...n.

The programs for A271313, there is no canonical definition to state claims against.
-/

/-! ## A271313.P16303255669337825549

`eq[7, A080221(n+1)]+1`
-/

namespace A271313.P16303255669337825549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A271313.P16303255669337825549

/-! ## A271313.P477987177408209166

`eq[7, A080221(A028310(n))]`
-/

namespace A271313.P477987177408209166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271313.P477987177408209166

/-! ## A271313.P14664084187948090822

`A020725(eq[7, A080221(n+1)])`
-/

namespace A271313.P14664084187948090822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271313.P14664084187948090822

/-! ## A271313.P5513470580862173758

`A065475(eq[7, A080221(n+1)])`
-/

namespace A271313.P5513470580862173758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271313.P5513470580862173758

/-! ## A271313.P8444284472559241199

`eq[7, A080221(A000007(n)+n)]`
-/

namespace A271313.P8444284472559241199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271313.P8444284472559241199

/-! ## A271313.P5128986398248571665

`eq[7, A080221(A123108(2*n))]`
-/

namespace A271313.P5128986398248571665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271313.P5128986398248571665

/-!
# A271315: Array T(n,k) read by diagonals: T(n,k) = T(n,k-1) + T(n,k-2) where T(n,0) = F(n+1), T(n,1) = F(n); F(n) = Fibonacci(n) = A000045(n).

The programs for A271315, there is no canonical definition to state claims against.
-/

/-! ## A271315.P16942224562526683620

`A106345(A209492(n+1))`
-/

namespace A271315.P16942224562526683620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A209492 (n + 1)).toNat

end

end A271315.P16942224562526683620

/-! ## A271315.P11712208536029085366

`A106345(A099627(n)-1)`
-/

namespace A271315.P11712208536029085366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A099627 n - 1).toNat

end

end A271315.P11712208536029085366

/-! ## A271315.P3030425451327075301

`A106345(A173786(n)-2)`
-/

namespace A271315.P3030425451327075301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A173786 n - 2).toNat

end

end A271315.P3030425451327075301

/-! ## A271315.P3511963377877188990

`A082498(xor(1, A089633(n)))`
-/

namespace A271315.P3511963377877188990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (Int.xor 1 (A089633 n)).toNat

end

end A271315.P3511963377877188990

/-! ## A271315.P14863384332833752427

`A106345(2*A099627(n)+1)`
-/

namespace A271315.P14863384332833752427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (2 * A099627 n + 1).toNat

end

end A271315.P14863384332833752427

/-! ## A271315.P6376315915477846692

`A082498(xor(3, A081118(n+1)))`
-/

namespace A271315.P6376315915477846692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (Int.xor 3 (A081118 (n + 1))).toNat

end

end A271315.P6376315915477846692

/-! ## A271315.P4299743227453928131

`A082498(A004442(A089633(n)))`
-/

namespace A271315.P4299743227453928131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004442 (A089633 n).toNat).toNat

end

end A271315.P4299743227453928131

/-! ## A271315.P10471924844209686129

`A106345(A005408(A099627(n)))`
-/

namespace A271315.P10471924844209686129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A005408 (A099627 n).toNat).toNat

end

end A271315.P10471924844209686129

/-! ## A271315.P1988761197380664543

`A039913(A007401(n+1))-A039913(n)`
-/

namespace A271315.P1988761197380664543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A007401 (n + 1)).toNat - A039913 n

end

end A271315.P1988761197380664543

/-!
# A271316: Triangle of numbers where T(n,k) is the number of k-dimensional faces on a partially truncated n-cube, 0 <= k <= n.

The programs for A271316, there is no canonical definition to state claims against.
-/

/-! ## A271316.P11296834366055381905

`A130321(n)*A260999(A225117(n))`
-/

namespace A271316.P11296834366055381905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A260999 (A225117 n).toNat

end

end A271316.P11296834366055381905

/-!
# A271318: Expansion of 1/(-x*sqrt(4*x^2+1)-x^2+1).

The programs for A271318, there is no canonical definition to state claims against.
-/

/-! ## A271318.P14680719045361239156

`A189076(n)+A122288(A335455(n))`
-/

namespace A271318.P14680719045361239156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189076 n + A122288 (A335455 n).toNat

end

end A271318.P14680719045361239156

/-!
# A271319: Number of distinct prime factors of the n-th n-gonal number (A060354).

The programs for A271319, the canonical program `A271319.P11966031781455970266` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271319 has offset 2).

The definition of A271319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271319.P11966031781455970266

`A001221(A060354(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271319

/-- `A001221(A060354(n+2))` -/
def P11966031781455970266.Spec : Prop :=
  ∀ n, P11966031781455970266.a n = A271319 (n + 2)

theorem P11966031781455970266.correct : P11966031781455970266.Spec := by
  intro n
  simp only [A271319, Nat.add_sub_cancel]

end A271319

/-! ## A271319.P14789476367808890778

`∑{e}[∏{p}[∑[∑[3*n]+1]+1, #], #]`
-/

namespace A271319.P14789476367808890778
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A271319.P14789476367808890778

namespace A271319

/-- `∑{e}[∏{p}[∑[∑[3*n]+1]+1, #], #]` -/
def P14789476367808890778.Spec : Prop :=
  ∀ n, (P14789476367808890778.a n : ℤ) = A271319 (n + 2)

end A271319

/-! ## A271319.P160609208777481892

`∑{p}[(n+2)*(∑[n]+1), A001221(#)]`
-/

namespace A271319.P160609208777481892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A271319.P160609208777481892

namespace A271319

/-- `∑{p}[(n+2)*(∑[n]+1), A001221(#)]` -/
def P160609208777481892.Spec : Prop :=
  ∀ n, P160609208777481892.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P12274381320752189319

`∑{p}[(n+2)*(∑[n]+1), A001222(#)]`
-/

namespace A271319.P12274381320752189319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A271319.P12274381320752189319

namespace A271319

/-- `∑{p}[(n+2)*(∑[n]+1), A001222(#)]` -/
def P12274381320752189319.Spec : Prop :=
  ∀ n, P12274381320752189319.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P13648183831493692648

`∑{p}[(n+2)*(∑[n]+1), A067029(#)]`
-/

namespace A271319.P13648183831493692648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A067029 p

end

end A271319.P13648183831493692648

namespace A271319

/-- `∑{p}[(n+2)*(∑[n]+1), A067029(#)]` -/
def P13648183831493692648.Spec : Prop :=
  ∀ n, P13648183831493692648.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P14507086852718130251

`∑{p}[(n+2)*(∑[n]+1), A008683(#)²]`
-/

namespace A271319.P14507086852718130251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 p ^ 2

end

end A271319.P14507086852718130251

namespace A271319

/-- `∑{p}[(n+2)*(∑[n]+1), A008683(#)²]` -/
def P14507086852718130251.Spec : Prop :=
  ∀ n, P14507086852718130251.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P14546995483096907622

`∑{p}[A060354(n+2), A010051(#)]`
-/

namespace A271319.P14546995483096907622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A271319.P14546995483096907622

namespace A271319

/-- `∑{p}[A060354(n+2), A010051(#)]` -/
def P14546995483096907622.Spec : Prop :=
  ∀ n, P14546995483096907622.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P1601251996781226689

`∑{p}[Δ[A004255(n+1)], A034380(#)]`
-/

namespace A271319.P1601251996781226689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034380 p

end

end A271319.P1601251996781226689

namespace A271319

/-- `∑{p}[Δ[A004255(n+1)], A034380(#)]` -/
def P1601251996781226689.Spec : Prop :=
  ∀ n, P1601251996781226689.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P2675876464490664673

`∑{p}[Δ[A004255(n+1)], A120263(#)]`
-/

namespace A271319.P2675876464490664673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A120263 p

end

end A271319.P2675876464490664673

namespace A271319

/-- `∑{p}[Δ[A004255(n+1)], A120263(#)]` -/
def P2675876464490664673.Spec : Prop :=
  ∀ n, P2675876464490664673.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P14183118298939836553

`∑{e}[Δ[A004255(n+1)], A317145(#)]`
-/

namespace A271319.P14183118298939836553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A317145 (Nat.factorization (f1 n).natAbs p)

end

end A271319.P14183118298939836553

namespace A271319

/-- `∑{e}[Δ[A004255(n+1)], A317145(#)]` -/
def P14183118298939836553.Spec : Prop :=
  ∀ n, P14183118298939836553.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P4890596341074682793

`∑{p}[A229183(n+1)-n, A320001(#)]`
-/

namespace A271319.P4890596341074682793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A320001 p

end

end A271319.P4890596341074682793

namespace A271319

/-- `∑{p}[A229183(n+1)-n, A320001(#)]` -/
def P4890596341074682793.Spec : Prop :=
  ∀ n, P4890596341074682793.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P11225810267772801964

`∑{p}[(n+2)*A000124(n), A003415(#)]`
-/

namespace A271319.P11225810267772801964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A271319.P11225810267772801964

namespace A271319

/-- `∑{p}[(n+2)*A000124(n), A003415(#)]` -/
def P11225810267772801964.Spec : Prop :=
  ∀ n, P11225810267772801964.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P8503001673356936678

`∑{p}[(n+2)*A000124(n), A008966(#)]`
-/

namespace A271319.P8503001673356936678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 p

end

end A271319.P8503001673356936678

namespace A271319

/-- `∑{p}[(n+2)*A000124(n), A008966(#)]` -/
def P8503001673356936678.Spec : Prop :=
  ∀ n, P8503001673356936678.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P13093304926576596090

`∑{e}[A060354(n+2), A273866(A000010(#))]`
-/

namespace A271319.P13093304926576596090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A273866 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A271319.P13093304926576596090

namespace A271319

/-- `∑{e}[A060354(n+2), A273866(A000010(#))]` -/
def P13093304926576596090.Spec : Prop :=
  ∀ n, P13093304926576596090.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P16286552421918811404

`A026741(∑{p}[A006003(n+1)+1, A000005(#)])`
-/

namespace A271319.P16286552421918811404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat

end

end A271319.P16286552421918811404

namespace A271319

/-- `A026741(∑{p}[A006003(n+1)+1, A000005(#)])` -/
def P16286552421918811404.Spec : Prop :=
  ∀ n, P16286552421918811404.a n = A271319 (n + 2)

end A271319

/-! ## A271319.P15616193780690991827

`A142150(∑{p}[A006003(n+1)+1, A000005(#)])`
-/

namespace A271319.P15616193780690991827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat

end

end A271319.P15616193780690991827

namespace A271319

/-- `A142150(∑{p}[A006003(n+1)+1, A000005(#)])` -/
def P15616193780690991827.Spec : Prop :=
  ∀ n, P15616193780690991827.a n = A271319 (n + 2)

end A271319

/-!
# A271320: Number of prime factors, with multiplicity, of the n-th n-gonal number (A060354).

The programs for A271320, the canonical program `A271320.P2709315363829811238` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271320 has offset 2).

The definition of A271320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271320.P2709315363829811238

`A001222(A060354(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271320

/-- `A001222(A060354(n+2))` -/
def P2709315363829811238.Spec : Prop :=
  ∀ n, P2709315363829811238.a n = A271320 (n + 2)

theorem P2709315363829811238.correct : P2709315363829811238.Spec := by
  intro n
  simp only [A271320, Nat.add_sub_cancel]

end A271320

/-! ## A271320.P15241027462389420166

`A001222(n+2)+∑{e}[A000217(n)+1, #]`
-/

namespace A271320.P15241027462389420166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A271320.P15241027462389420166

namespace A271320

/-- `A001222(n+2)+∑{e}[A000217(n)+1, #]` -/
def P15241027462389420166.Spec : Prop :=
  ∀ n, P15241027462389420166.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P17379648994038482115

`A001222(n+2)+A001222(∑[n]+1)`
-/

namespace A271320.P17379648994038482115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) + A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271320.P17379648994038482115

namespace A271320

/-- `A001222(n+2)+A001222(∑[n]+1)` -/
def P17379648994038482115.Spec : Prop :=
  ∀ n, P17379648994038482115.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P13322325378961992940

`A086436(n+2)+A001222(A000124(n))`
-/

namespace A271320.P13322325378961992940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 2) + A001222 (A000124 n).toNat

end

end A271320.P13322325378961992940

namespace A271320

/-- `A086436(n+2)+A001222(A000124(n))` -/
def P13322325378961992940.Spec : Prop :=
  ∀ n, P13322325378961992940.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P5216726105651456746

`A091304(A048673(n+2))+A001222(A000124(n))`
-/

namespace A271320.P5216726105651456746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A048673 (n + 2)).toNat + A001222 (A000124 n).toNat

end

end A271320.P5216726105651456746

namespace A271320

/-- `A091304(A048673(n+2))+A001222(A000124(n))` -/
def P5216726105651456746.Spec : Prop :=
  ∀ n, P5216726105651456746.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P14725883655028152539

`A056239(A105560(n+2))+A001222(A000124(n))`
-/

namespace A271320.P14725883655028152539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105560 (n + 2)).toNat + A001222 (A000124 n).toNat

end

end A271320.P14725883655028152539

namespace A271320

/-- `A056239(A105560(n+2))+A001222(A000124(n))` -/
def P14725883655028152539.Spec : Prop :=
  ∀ n, P14725883655028152539.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P12971597549512086374

`A061395(A105560(n+2)²)+A001222(A000124(n))`
-/

namespace A271320.P12971597549512086374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A105560 (n + 2) ^ 2).toNat + A001222 (A000124 n).toNat

end

end A271320.P12971597549512086374

namespace A271320

/-- `A061395(A105560(n+2)²)+A001222(A000124(n))` -/
def P12971597549512086374.Spec : Prop :=
  ∀ n, P12971597549512086374.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P9228814897792117619

`∑{e}[(n+2)*(∑[n]+1), #]`
-/

namespace A271320.P9228814897792117619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A271320.P9228814897792117619

namespace A271320

/-- `∑{e}[(n+2)*(∑[n]+1), #]` -/
def P9228814897792117619.Spec : Prop :=
  ∀ n, (P9228814897792117619.a n : ℤ) = A271320 (n + 2)

end A271320

/-! ## A271320.P2474562470077421814

`A325383(∑{e}[A060354(n+2), #])`
-/

namespace A271320.P2474562470077421814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325383 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A271320.P2474562470077421814

namespace A271320

/-- `A325383(∑{e}[A060354(n+2), #])` -/
def P2474562470077421814.Spec : Prop :=
  ∀ n, P2474562470077421814.a n = A271320 (n + 2)

end A271320

/-! ## A271320.P3333975958420905557

`A028310(∑{e}[(n+2)*A000124(n), #])`
-/

namespace A271320.P3333975958420905557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A271320.P3333975958420905557

namespace A271320

/-- `A028310(∑{e}[(n+2)*A000124(n), #])` -/
def P3333975958420905557.Spec : Prop :=
  ∀ n, P3333975958420905557.a n = A271320 (n + 2)

end A271320

/-!
# A271321: Smallest prime factor of the n-th n-gonal number (A060354).

The programs for A271321, the canonical program `A271321.P10606846602855489551` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271321 has offset 2).

The definition of A271321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A271321.P10606846602855489551

`A020639(A060354(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A271321

/-- `A020639(A060354(n+2))` -/
def P10606846602855489551.Spec : Prop :=
  ∀ n, P10606846602855489551.a n = A271321 (n + 2)

theorem P10606846602855489551.correct : P10606846602855489551.Spec := by
  intro n
  simp only [A271321, Nat.add_sub_cancel]

end A271321

/-! ## A271321.P16408083564147670593

`A020639(A020639(n+2)*A020639(∑[n]+1))`
-/

namespace A271321.P16408083564147670593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A271321.P16408083564147670593

namespace A271321

/-- `A020639(A020639(n+2)*A020639(∑[n]+1))` -/
def P16408083564147670593.Spec : Prop :=
  ∀ n, P16408083564147670593.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P11279568575719334563

`A020639((n+2)*A020639(∑[n]+1))`
-/

namespace A271321.P11279568575719334563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A271321.P11279568575719334563

namespace A271321

/-- `A020639((n+2)*A020639(∑[n]+1))` -/
def P11279568575719334563.Spec : Prop :=
  ∀ n, P11279568575719334563.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P10075505018785670806

`A020639(lcm(n+2, ∑[n]+1))`
-/

namespace A271321.P10075505018785670806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A271321.P10075505018785670806

namespace A271321

/-- `A020639(lcm(n+2, ∑[n]+1))` -/
def P10075505018785670806.Spec : Prop :=
  ∀ n, P10075505018785670806.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P14724950263886418101

`A020639(∏{p}[n+2, #]*A000124(n))`
-/

namespace A271321.P14724950263886418101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A000124 n).toNat

end

end A271321.P14724950263886418101

namespace A271321

/-- `A020639(∏{p}[n+2, #]*A000124(n))` -/
def P14724950263886418101.Spec : Prop :=
  ∀ n, P14724950263886418101.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P5084984331756863691

`A020639(A006003(n^(n%2)+1)+1)`
-/

namespace A271321.P5084984331756863691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006003 (n ^ (n % 2) + 1) + 1).toNat

end

end A271321.P5084984331756863691

namespace A271321

/-- `A020639(A006003(n^(n%2)+1)+1)` -/
def P5084984331756863691.Spec : Prop :=
  ∀ n, P5084984331756863691.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P978199771190801091

`A020639(A020639(n+2)*A000124(n))`
-/

namespace A271321.P978199771190801091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A000124 n).toNat

end

end A271321.P978199771190801091

namespace A271321

/-- `A020639(A020639(n+2)*A000124(n))` -/
def P978199771190801091.Spec : Prop :=
  ∀ n, P978199771190801091.a n = A271321 (n + 2)

end A271321

/-! ## A271321.P6548000654299124097

`A020639(A020639(n+2)*Δ[A004006(n)])`
-/

namespace A271321.P6548000654299124097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * (f1 (n + 1) - f1 n)).toNat

end

end A271321.P6548000654299124097

namespace A271321

/-- `A020639(A020639(n+2)*Δ[A004006(n)])` -/
def P6548000654299124097.Spec : Prop :=
  ∀ n, P6548000654299124097.a n = A271321 (n + 2)

end A271321

/-!
# A271322: Largest prime factor of the n-th n-gonal number (A060354).

The programs for A271322, the canonical program `A271322.P15050062181397390916` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271322 has offset 2).

The definition of A271322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A271322.P15050062181397390916

`A006530(A060354(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A271322

/-- `A006530(A060354(n+2))` -/
def P15050062181397390916.Spec : Prop :=
  ∀ n, P15050062181397390916.a n = A271322 (n + 2)

theorem P15050062181397390916.correct : P15050062181397390916.Spec := by
  intro n
  simp only [A271322, Nat.add_sub_cancel]

end A271322

/-! ## A271322.P6113491891760714142

`A006530(A006530(n+2)*A006530(∑[n]+1))`
-/

namespace A271322.P6113491891760714142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A271322.P6113491891760714142

namespace A271322

/-- `A006530(A006530(n+2)*A006530(∑[n]+1))` -/
def P6113491891760714142.Spec : Prop :=
  ∀ n, P6113491891760714142.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P10334240540739111663

`A006530(lcm(∑[n]+1, n+2))`
-/

namespace A271322.P10334240540739111663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 2))

end

end A271322.P10334240540739111663

namespace A271322

/-- `A006530(lcm(∑[n]+1, n+2))` -/
def P10334240540739111663.Spec : Prop :=
  ∀ n, P10334240540739111663.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P2426341290826184841

`A006530(∏{p}[A006003(n+1)+1, #])`
-/

namespace A271322.P2426341290826184841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A271322.P2426341290826184841

namespace A271322

/-- `A006530(∏{p}[A006003(n+1)+1, #])` -/
def P2426341290826184841.Spec : Prop :=
  ∀ n, P2426341290826184841.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P12888870415722766862

`A006530(∏{p}[(n+2)*A000124(n), #])`
-/

namespace A271322.P12888870415722766862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A271322.P12888870415722766862

namespace A271322

/-- `A006530(∏{p}[(n+2)*A000124(n), #])` -/
def P12888870415722766862.Spec : Prop :=
  ∀ n, P12888870415722766862.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P10464788075611822894

`A006530((∑[n]+1)*A006530(n+2))`
-/

namespace A271322.P10464788075611822894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A006530 (n + 2)).toNat

end

end A271322.P10464788075611822894

namespace A271322

/-- `A006530((∑[n]+1)*A006530(n+2))` -/
def P10464788075611822894.Spec : Prop :=
  ∀ n, P10464788075611822894.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P11281462081746684736

`A006530(A000124(n)*A002034(n+2))`
-/

namespace A271322.P11281462081746684736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000124 n * A002034 (n + 2)).toNat

end

end A271322.P11281462081746684736

namespace A271322

/-- `A006530(A000124(n)*A002034(n+2))` -/
def P11281462081746684736.Spec : Prop :=
  ∀ n, P11281462081746684736.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P451393341518160869

`A006530(A006530(n+2)*A000124(n))`
-/

namespace A271322.P451393341518160869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A000124 n).toNat

end

end A271322.P451393341518160869

namespace A271322

/-- `A006530(A006530(n+2)*A000124(n))` -/
def P451393341518160869.Spec : Prop :=
  ∀ n, P451393341518160869.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P8256272169472307898

`A006530(A006530(n+2)*A152947(n+2))`
-/

namespace A271322.P8256272169472307898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A152947 (n + 2)).toNat

end

end A271322.P8256272169472307898

namespace A271322

/-- `A006530(A006530(n+2)*A152947(n+2))` -/
def P8256272169472307898.Spec : Prop :=
  ∀ n, P8256272169472307898.a n = A271322 (n + 2)

end A271322

/-! ## A271322.P14748094288600835235

`A006530((n+2)*(∑[n]+1))`
-/

namespace A271322.P14748094288600835235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A271322.P14748094288600835235

namespace A271322

/-- `A006530((n+2)*(∑[n]+1))` -/
def P14748094288600835235.Spec : Prop :=
  ∀ n, P14748094288600835235.a n = A271322 (n + 2)

end A271322

/-!
# A271324: a(n) = n + floor(n/4) + (n mod 4).

The programs for A271324, the canonical program `A271324.P6633347137656778715` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271324 has offset 0).

The definition of A271324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(n/4)+n%4` (program `A271324.P6633347137656778715`, by `A271324.P6633347137656778715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271324.P6633347137656778715

`n+floor(n/4)+n%4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271324

/-- `n+floor(n/4)+n%4` -/
def P6633347137656778715.Spec : Prop :=
  ∀ n, P6633347137656778715.a n = A271324 n

theorem P6633347137656778715.correct : P6633347137656778715.Spec := by
  intro n
  simp only [A271324]

end A271324

/-! ## A271324.P12937838363013425823

`ogf((2x+2x^2+2x^3-x^4)/(1-x-x^4+x^5))`
-/

namespace A271324.P12937838363013425823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, -1] [1, -1, 0, 0, -1, 1] n

end

end A271324.P12937838363013425823

namespace A271324

/-- `ogf((2x+2x^2+2x^3-x^4)/(1-x-x^4+x^5))` -/
def P12937838363013425823.Spec : Prop :=
  ∀ n, P12937838363013425823.a n = A271324 n

end A271324

/-! ## A271324.P13318168025524716977

`1+(10*n-6*(-1)^((n-1)*n/2)-3*(-1)^n+1)/8`
-/

namespace A271324.P13318168025524716977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 + ((10 * n : ℝ) - 6 * (-1 : ℝ) ^ ((((n : ℤ) - 1) * (n : ℤ) : ℚ) / 2 : ℝ) - (3 * (-1) ^ n : ℝ) + 1) / 8

end

end A271324.P13318168025524716977

namespace A271324

/-- `1+(10*n-6*(-1)^((n-1)*n/2)-3*(-1)^n+1)/8` -/
def P13318168025524716977.Spec : Prop :=
  ∀ n, P13318168025524716977.a n = (A271324 n : ℝ)

end A271324

/-! ## A271324.P9401676101549658818

`a(n-4)+5` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A271324.P9401676101549658818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n a =>
  a (n - 4) + 5

end

end A271324.P9401676101549658818

namespace A271324

/-- `a(n-4)+5` -/
def P9401676101549658818.Spec : Prop :=
  ∀ n, (P9401676101549658818.a n : ℤ) = A271324 n

end A271324

/-! ## A271324.P15204707012703836573

`floor(n%4+n/4+n)`
-/

namespace A271324.P15204707012703836573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 4 : ℕ) : ℚ) + (n : ℚ) / 4 + (n : ℚ)⌋

end

end A271324.P15204707012703836573

namespace A271324

/-- `floor(n%4+n/4+n)` -/
def P15204707012703836573.Spec : Prop :=
  ∀ n, P15204707012703836573.a n = A271324 n

theorem P15204707012703836573.correct : P15204707012703836573.Spec := by
  intro n
  simp only [A271324, Nat.add_sub_cancel, A271324.P15204707012703836573.a, A271324.P6633347137656778715.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A271324

/-! ## A271324.P18363433640867742764

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A271324.P18363433640867742764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2, -1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271324.P18363433640867742764

namespace A271324

/-- `∑[floor(a(n-4))]` -/
def P18363433640867742764.Spec : Prop :=
  ∀ n, P18363433640867742764.a n = A271324 n

end A271324

/-! ## A271324.P2298919601407185858

`∑[3-gcd(n, a(n-2)²)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A271324.P2298919601407185858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  3 - (Int.gcd (n : ℤ) (f1 (n - 2) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271324.P2298919601407185858

namespace A271324

/-- `∑[3-gcd(n, a(n-2)²)]` -/
def P2298919601407185858.Spec : Prop :=
  ∀ n, P2298919601407185858.a n = A271324 n

end A271324

/-! ## A271324.P5443737475358186423

`∑[a(n-4)²-2]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=-1`
-/

namespace A271324.P5443737475358186423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2, -1] fun n f1 =>
  f1 (n - 4) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271324.P5443737475358186423

namespace A271324

/-- `∑[a(n-4)²-2]` -/
def P5443737475358186423.Spec : Prop :=
  ∀ n, P5443737475358186423.a n = A271324 n

end A271324

/-! ## A271324.P2999411420651763600

`A017137(n)%A193766(n+1)`
-/

namespace A271324.P2999411420651763600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017137 n) (A193766 (n + 1))

end

end A271324.P2999411420651763600

namespace A271324

/-- `A017137(n)%A193766(n+1)` -/
def P2999411420651763600.Spec : Prop :=
  ∀ n, P2999411420651763600.a n = A271324 n

end A271324

/-! ## A271324.P2317938865435437238

`A219721(n)%A047452(n+1)`
-/

namespace A271324.P2317938865435437238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219721 n) (A047452 (n + 1))

end

end A271324.P2317938865435437238

namespace A271324

/-- `A219721(n)%A047452(n+1)` -/
def P2317938865435437238.Spec : Prop :=
  ∀ n, P2317938865435437238.a n = A271324 n

end A271324

/-! ## A271324.P898238233346898583

`A047276(n+1)%A056527(n+1)`
-/

namespace A271324.P898238233346898583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047276 (n + 1)) (A056527 (n + 1))

end

end A271324.P898238233346898583

namespace A271324

/-- `A047276(n+1)%A056527(n+1)` -/
def P898238233346898583.Spec : Prop :=
  ∀ n, P898238233346898583.a n = A271324 n

end A271324

/-! ## A271324.P13598833795018038851

`A273669(n+1)%A379211(n+1)`
-/

namespace A271324.P13598833795018038851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273669 (n + 1)) (A379211 (n + 1))

end

end A271324.P13598833795018038851

namespace A271324

/-- `A273669(n+1)%A379211(n+1)` -/
def P13598833795018038851.Spec : Prop :=
  ∀ n, P13598833795018038851.a n = A271324 n

end A271324

/-! ## A271324.P17899528697013132967

`A030451(A047208(n+1))`
-/

namespace A271324.P17899528697013132967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A047208 (n + 1)).toNat

end

end A271324.P17899528697013132967

namespace A271324

/-- `A030451(A047208(n+1))` -/
def P17899528697013132967.Spec : Prop :=
  ∀ n, P17899528697013132967.a n = A271324 n

end A271324

/-! ## A271324.P2990788883353522804

`A028242(A008851(n+2))`
-/

namespace A271324.P2990788883353522804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008851 (n + 2)).toNat

end

end A271324.P2990788883353522804

namespace A271324

/-- `A028242(A008851(n+2))` -/
def P2990788883353522804.Spec : Prop :=
  ∀ n, P2990788883353522804.a n = A271324 n

end A271324

/-! ## A271324.P5003733452440674083

`A028242(∑[Δ[A028242(n)]²])`
-/

namespace A271324.P5003733452440674083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271324.P5003733452440674083

namespace A271324

/-- `A028242(∑[Δ[A028242(n)]²])` -/
def P5003733452440674083.Spec : Prop :=
  ∀ n, P5003733452440674083.a n = A271324 n

end A271324

/-! ## A271324.P14779424067140565306

`A028242(A047336(n+1)-n)`
-/

namespace A271324.P14779424067140565306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A047336 (n + 1) - (n : ℤ)).toNat

end

end A271324.P14779424067140565306

namespace A271324

/-- `A028242(A047336(n+1)-n)` -/
def P14779424067140565306.Spec : Prop :=
  ∀ n, P14779424067140565306.a n = A271324 n

end A271324

/-! ## A271324.P16903566382920046290

`A028242(∑[A040001(n+1)²])`
-/

namespace A271324.P16903566382920046290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271324.P16903566382920046290

namespace A271324

/-- `A028242(∑[A040001(n+1)²])` -/
def P16903566382920046290.Spec : Prop :=
  ∀ n, P16903566382920046290.a n = A271324 n

end A271324

/-! ## A271324.P17414816164248420996

`A028242(∑[A134451(n+1)²])`
-/

namespace A271324.P17414816164248420996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271324.P17414816164248420996

namespace A271324

/-- `A028242(∑[A134451(n+1)²])` -/
def P17414816164248420996.Spec : Prop :=
  ∀ n, P17414816164248420996.a n = A271324 n

end A271324

/-! ## A271324.P11214321436191720906

`A028242(∑[(2-A010702(n))²])`
-/

namespace A271324.P11214321436191720906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010702 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271324.P11214321436191720906

namespace A271324

/-- `A028242(∑[(2-A010702(n))²])` -/
def P11214321436191720906.Spec : Prop :=
  ∀ n, P11214321436191720906.a n = A271324 n

end A271324

/-! ## A271324.P10472030986704106714

`A028242(A028242(n+1)+2*n+1)`
-/

namespace A271324.P10472030986704106714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A028242 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A271324.P10472030986704106714

namespace A271324

/-- `A028242(A028242(n+1)+2*n+1)` -/
def P10472030986704106714.Spec : Prop :=
  ∀ n, P10472030986704106714.a n = A271324 n

end A271324

/-!
# A271326: a(n) = A269347(3n).

The programs for A271326, there is no canonical definition to state claims against.
-/

/-! ## A271326.P4998383642026790717

`A269347(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271326.P4998383642026790717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269347 (3 * (n + 1))

end

end A271326.P4998383642026790717

/-! ## A271326.P4217712859762334526

`3*A271328(n+1)`
-/

namespace A271326.P4217712859762334526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A271328 (n + 1)

end

end A271326.P4217712859762334526

/-! ## A271326.P17881799402301378041

`A271328(A000027(n+1))/(1-2/3)`
-/

namespace A271326.P17881799402301378041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271328 (A000027 (n + 1)).toNat : ℚ) / (1 - (2 : ℚ) / 3)

end

end A271326.P17881799402301378041

/-! ## A271326.P10944714668390472509

`A271328(A008619(2*n))/(1-2/3)`
-/

namespace A271326.P10944714668390472509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271328 (A008619 (2 * n)).toNat : ℚ) / (1 - (2 : ℚ) / 3)

end

end A271326.P10944714668390472509

/-! ## A271326.P13116128571952807120

`record[A269347(n+3)]`
-/

namespace A271326.P13116128571952807120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271326.P13116128571952807120

/-! ## A271326.P14287473422850106795

`record[lcm(3, A269347(A008619(n)))]`
-/

namespace A271326.P14287473422850106795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269347 (A008619 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271326.P14287473422850106795

/-! ## A271326.P8280704287865166609

`A008486(A271328(n+1))`
-/

namespace A271326.P8280704287865166609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A271328 (n + 1)).toNat

end

end A271326.P8280704287865166609

/-!
# A271327: Integers k such that the k-th prime divides the product of the first k nonzero Fibonacci numbers.

The programs for A271327, there is no canonical definition to state claims against.
-/

/-! ## A271327.P15123058767826512435

`lt[A001602(round(acot(n)+n)), n]`
-/

namespace A271327.P15123058767826512435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271327.P15123058767826512435

/-! ## A271327.P3602582601271629928

`lt[A001602(round(sqrt(n²+1))), n]`
-/

namespace A271327.P3602582601271629928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271327.P3602582601271629928

/-! ## A271327.P6130119543101183837

`lt[A001602(n+1), n+1]+1`
-/

namespace A271327.P6130119543101183837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271327.P6130119543101183837

/-! ## A271327.P12914684167961351291

`A020725(lt[A001602(n+1), n+1])`
-/

namespace A271327.P12914684167961351291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A271327.P12914684167961351291

/-! ## A271327.P14458704236563870991

`lt[A001177(A008578(n+1)), n]`
-/

namespace A271327.P14458704236563870991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A008578 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271327.P14458704236563870991

/-! ## A271327.P3060299506320000000

`lt[A001177(A000040(n+1)), n+1]+1`
-/

namespace A271327.P3060299506320000000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271327.P3060299506320000000

/-! ## A271327.P8083628993947252728

`lt[A001177(sqrt(A001248(n+1))), n+1]+1`
-/

namespace A271327.P8083628993947252728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271327.P8083628993947252728

/-!
# A271328: a(n) = A269347(3*n)/3.

The programs for A271328, there is no canonical definition to state claims against.
-/

/-! ## A271328.P11823297634119087385

`A269347(3*(n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271328.P11823297634119087385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269347 (3 * (n + 1)) : ℚ) / 3

end

end A271328.P11823297634119087385

/-! ## A271328.P15339692871616106194

`A271326(n+1)/3`
-/

namespace A271328.P15339692871616106194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271326 (n + 1) : ℚ) / 3

end

end A271328.P15339692871616106194

/-! ## A271328.P15821846166018646437

`(1-2/3)*A271326(A008619(2*n))`
-/

namespace A271328.P15821846166018646437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (2 : ℚ) / 3) * (A271326 (A008619 (2 * n)).toNat : ℚ)

end

end A271328.P15821846166018646437

/-! ## A271328.P10226843780438423840

`record[ratio[A269347(n+3)]]`
-/

namespace A271328.P10226843780438423840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269347 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271328.P10226843780438423840

/-! ## A271328.P7590006925166637273

`record[ceil(A269347(n+1)/3)]`
-/

namespace A271328.P7590006925166637273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269347 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271328.P7590006925166637273

/-! ## A271328.P9957659499204690529

`record[A269347(A008619(n))/A269347(n+1)]`
-/

namespace A271328.P9957659499204690529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269347 (A008619 n).toNat : ℚ) / (A269347 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271328.P9957659499204690529

/-! ## A271328.P16261630061262027672

`A002264(A271326(n+1))`
-/

namespace A271328.P16261630061262027672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A271326 (n + 1)).toNat

end

end A271328.P16261630061262027672

/-!
# A271329: a(n) is the sum of the divisors of the n-th sphenic number (A007304).

The programs for A271329, the canonical program `A271329.P13346107551120019866` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271329 has offset 1).

The definition of A271329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A271329.P13346107551120019866

`A000203(A007304(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A271329

/-- `A000203(A007304(n+1))` -/
def P13346107551120019866.Spec : Prop :=
  ∀ n, P13346107551120019866.a n = A271329 (n + 1)

theorem P13346107551120019866.correct : P13346107551120019866.Spec := by
  intro n
  simp only [A271329, Nat.add_sub_cancel]

end A271329

/-! ## A271329.P16519031655475004611

`∑{d}[A007304(n+1), #]`
-/

namespace A271329.P16519031655475004611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A271329.P16519031655475004611

namespace A271329

/-- `∑{d}[A007304(n+1), #]` -/
def P16519031655475004611.Spec : Prop :=
  ∀ n, (P16519031655475004611.a n : ℤ) = A271329 (n + 1)

end A271329

/-! ## A271329.P8783746273415126726

`A000203(sqrt(A162143(n+1)))`
-/

namespace A271329.P8783746273415126726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A271329.P8783746273415126726

namespace A271329

/-- `A000203(sqrt(A162143(n+1)))` -/
def P8783746273415126726.Spec : Prop :=
  ∀ n, P8783746273415126726.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P10675058966369474155

`A000203(root(A162143(n+1), 2))`
-/

namespace A271329.P10675058966369474155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A162143 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A271329.P10675058966369474155

namespace A271329

/-- `A000203(root(A162143(n+1), 2))` -/
def P10675058966369474155.Spec : Prop :=
  ∀ n, P10675058966369474155.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P16034756235308693623

`A000203(root(A162144(n+1), 3))`
-/

namespace A271329.P16034756235308693623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A271329.P16034756235308693623

namespace A271329

/-- `A000203(root(A162144(n+1), 3))` -/
def P16034756235308693623.Spec : Prop :=
  ∀ n, P16034756235308693623.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P15212716503929377577

`A348047(A007304(2*n+1-n))`
-/

namespace A271329.P15212716503929377577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348047 (A007304 (2 * n + 1 - n)).toNat

end

end A271329.P15212716503929377577

namespace A271329

/-- `A348047(A007304(2*n+1-n))` -/
def P15212716503929377577.Spec : Prop :=
  ∀ n, P15212716503929377577.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P7679764243558897079

`A033634(sqrt(A162143(n+1)))`
-/

namespace A271329.P7679764243558897079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A271329.P7679764243558897079

namespace A271329

/-- `A033634(sqrt(A162143(n+1)))` -/
def P7679764243558897079.Spec : Prop :=
  ∀ n, P7679764243558897079.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P1918682914523348361

`A000113(A007304(n+1))`
-/

namespace A271329.P1918682914523348361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A007304 (n + 1)).toNat

end

end A271329.P1918682914523348361

namespace A271329

/-- `A000113(A007304(n+1))` -/
def P1918682914523348361.Spec : Prop :=
  ∀ n, P1918682914523348361.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P14118531439207719172

`A000203(eq[6, A160086(n)])`
-/

namespace A271329.P14118531439207719172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271329.P14118531439207719172

namespace A271329

/-- `A000203(eq[6, A160086(n)])` -/
def P14118531439207719172.Spec : Prop :=
  ∀ n, P14118531439207719172.a n = A271329 (n + 1)

end A271329

/-! ## A271329.P17061503592226378017

`A000203(∏{p}[A162143(n+1), #])`
-/

namespace A271329.P17061503592226378017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A271329.P17061503592226378017

namespace A271329

/-- `A000203(∏{p}[A162143(n+1), #])` -/
def P17061503592226378017.Spec : Prop :=
  ∀ n, P17061503592226378017.a n = A271329 (n + 1)

end A271329

/-!
# A271330: Rank 2 cluster algebra recurrence with parameters b=c=3 and initial conditions a(0)=2 and a(1)=3.

The programs for A271330, the canonical program `A271330.P5042407682188181510` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271330 has offset 0).

The definition of A271330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271330.P5042407682188181510

`(1+a(n-1)^3)/a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271330

/-- `(1+a(n-1)^3)/a(n-2)` -/
def P5042407682188181510.Spec : Prop :=
  ∀ n, P5042407682188181510.a n = (A271330 n : ℚ)

end A271330

/-! ## A271330.P11034896614933106876

`ceil(a(n-1)^3/a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A271330.P11034896614933106876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌈(a (n - 1) ^ 3 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A271330.P11034896614933106876

namespace A271330

/-- `ceil(a(n-1)^3/a(n-2))` -/
def P11034896614933106876.Spec : Prop :=
  ∀ n, P11034896614933106876.a n = A271330 n

end A271330

/-! ## A271330.P5613462489049406621

`(a(n-1)²*a(n-1)+1)/a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A271330.P5613462489049406621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) ^ 2 * a (n - 1) + 1) / a (n - 2)

end

end A271330.P5613462489049406621

namespace A271330

/-- `(a(n-1)²*a(n-1)+1)/a(n-2)` -/
def P5613462489049406621.Spec : Prop :=
  ∀ n, P5613462489049406621.a n = (A271330 n : ℚ)

end A271330

/-!
# A271333: Number of nXnXn triangular 0..1 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271333, there is no canonical definition to state claims against.
-/

/-! ## A271333.P10211889517780425632

`A271339(∑[n+1])`
-/

namespace A271333.P10211889517780425632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271333.P10211889517780425632

/-! ## A271333.P16907232378598134855

`record[A271339(A115017(n+1))]`
-/

namespace A271333.P16907232378598134855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271333.P16907232378598134855

/-! ## A271333.P11005286212400133355

`record[A271339(record[A155170(n)+n])]`
-/

namespace A271333.P11005286212400133355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155170 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271333.P11005286212400133355

/-! ## A271333.P16913407205005372862

`record[A156241(n+1)*A271339(n+1)]`
-/

namespace A271333.P16913407205005372862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156241 (n + 1) * A271339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271333.P16913407205005372862

/-! ## A271333.P8169815464874867717

`record[gcd(A271339(n+1), A301823(n+1))]`
-/

namespace A271333.P8169815464874867717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271339 (n + 1)) (A301823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271333.P8169815464874867717

/-!
# A271334: Number of nXnXn triangular 0..2 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271334, there is no canonical definition to state claims against.
-/

/-! ## A271334.P14543382430534921711

`A271339(∑[n+2])`
-/

namespace A271334.P14543382430534921711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271334.P14543382430534921711

/-! ## A271334.P9129028163886889186

`record[A271339(A171233(n+1)+n)]`
-/

namespace A271334.P9129028163886889186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A171233 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271334.P9129028163886889186

/-! ## A271334.P7911985180849742930

`record[A271339(sqrt(A303054(n+1))+1)]`
-/

namespace A271334.P7911985180849742930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271334.P7911985180849742930

/-! ## A271334.P15476376481064893514

`record[Δ[A190164(n)]*A271339(n+1)]`
-/

namespace A271334.P15476376481064893514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A271339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271334.P15476376481064893514

/-! ## A271334.P3706164496883026589

`record[A271339(A056699(n+1)-A002262(n))]`
-/

namespace A271334.P3706164496883026589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A056699 (n + 1) - A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271334.P3706164496883026589

/-!
# A271335: Number of nXnXn triangular 0..3 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271335, there is no canonical definition to state claims against.
-/

/-! ## A271335.P16222635651482936108

`A271339(∑[n+3]+1)`
-/

namespace A271335.P16222635651482936108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271335.P16222635651482936108

/-! ## A271335.P9275846069806930861

`record[A271339(sqrt(A303054(n+1)))]`
-/

namespace A271335.P9275846069806930861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271335.P9275846069806930861

/-! ## A271335.P16954161013433341898

`record[A271339(gcd(n, A301823(n+2)))]`
-/

namespace A271335.P16954161013433341898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (Int.gcd (n : ℤ) (A301823 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271335.P16954161013433341898

/-! ## A271335.P3765885255678697281

`record[char[A141214(n)]*A271339(n+1)]`
-/

namespace A271335.P3765885255678697281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271335.P3765885255678697281

/-! ## A271335.P9749200577657954724

`record[A271339(A115017(n+1)+A002262(n))]`
-/

namespace A271335.P9749200577657954724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A115017 (n + 1) + A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271335.P9749200577657954724

/-!
# A271336: Number of nXnXn triangular 0..4 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271336, there is no canonical definition to state claims against.
-/

/-! ## A271336.P1027736555527983676

`A271339(A141214(n+1))`
-/

namespace A271336.P1027736555527983676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A141214 (n + 1)).toNat

end

end A271336.P1027736555527983676

/-! ## A271336.P1971234660675548087

`A271339(eq[4, A185782(n+1)])`
-/

namespace A271336.P1971234660675548087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271336.P1971234660675548087

/-! ## A271336.P1734197641122985476

`A271339(lt[A271316(n+2), A271315(n)])`
-/

namespace A271336.P1734197641122985476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271316 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A271336.P1734197641122985476

/-!
# A271337: Number of nXnXn triangular 0..5 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271337, there is no canonical definition to state claims against.
-/

/-! ## A271337.P16740075379454396179

`A271339(A056115(n)+11)`
-/

namespace A271337.P16740075379454396179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A056115 n + 11).toNat

end

end A271337.P16740075379454396179

/-! ## A271337.P10252735601792384322

`A271339(A000217(n+5)-4)`
-/

namespace A271337.P10252735601792384322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (A000217 (n + 5) - 4).toNat

end

end A271337.P10252735601792384322

/-! ## A271337.P8004488069342849359

`A271339(eq[8, A057728(n+1)])`
-/

namespace A271337.P8004488069342849359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271337.P8004488069342849359

/-!
# A271338: Number of nXnXn triangular 0..6 arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271338, there is no canonical definition to state claims against.
-/

/-! ## A271338.P15589895986267115817

`A271339(eq[3, A219347(n)])`
-/

namespace A271338.P15589895986267115817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271338.P15589895986267115817

/-! ## A271338.P8063932346289509026

`A271339(eq[5, A193592(n)])`
-/

namespace A271338.P8063932346289509026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271338.P8063932346289509026

/-! ## A271338.P171290450217437981

`A271339(eq[8, A185782(n+1)])`
-/

namespace A271338.P171290450217437981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271338.P171290450217437981

/-! ## A271338.P9672179424759513091

`A271339(Δ[Δ[A006504(n+1)]])`
-/

namespace A271338.P9672179424759513091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271339 (f1 (n + 1) - f1 n).toNat

end

end A271338.P9672179424759513091

/-!
# A271339: T(n,k)=Number of nXnXn triangular 0..k arrays with new values introduced in sequential zero-upwards order and exactly one upright 2x2x2 triangle having values all equal.

The programs for A271339, there is no canonical definition to state claims against.
-/

/-! ## A271339.P10537583470139195570

`A118766(A271075(n+1))`
-/

namespace A271339.P10537583470139195570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A271075 (n + 1)).toNat

end

end A271339.P10537583470139195570

/-! ## A271339.P1218193793636813789

`A398355(A224114(n+1))`
-/

namespace A271339.P1218193793636813789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398355 (A224114 (n + 1)).toNat

end

end A271339.P1218193793636813789

/-! ## A271339.P16193321714679560218

`A046155(A229001(n)^4)`
-/

namespace A271339.P16193321714679560218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A229001 n ^ 4).toNat

end

end A271339.P16193321714679560218

/-! ## A271339.P4451024041122387409

`A165592(A215083(n)^4)`
-/

namespace A271339.P4451024041122387409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 (A215083 n ^ 4).toNat

end

end A271339.P4451024041122387409

/-! ## A271339.P770197944041955139

`A088434(6^A213191(n))`
-/

namespace A271339.P770197944041955139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A213191 n : ℤ))).toNat

end

end A271339.P770197944041955139

/-!
# A271340: Numbers k such that (14*10^k + 73)/3 is prime.

The programs for A271340, there is no canonical definition to state claims against.
-/

/-! ## A271340.P10080114843912551901

`record[A286220(A351058(n+1))]`
-/

namespace A271340.P10080114843912551901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286220 (A351058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271340.P10080114843912551901

/-! ## A271340.P1043528018594398365

`A029359(A094056(n+1))+n`
-/

namespace A271340.P1043528018594398365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 (A094056 (n + 1)).toNat + (n : ℤ)

end

end A271340.P1043528018594398365

/-! ## A271340.P8301963421903450972

`eq[A140207(n), A140207(A300788(n))]`
-/

namespace A271340.P8301963421903450972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 (A300788 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271340.P8301963421903450972

/-! ## A271340.P3612408161443445041

`eq[A233543(n), A233543(A300788(n))]`
-/

namespace A271340.P3612408161443445041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (A300788 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271340.P3612408161443445041

/-!
# A271341: Somos's sequence {a(4,n)} defined in comment in A018896.

The programs for A271341, the canonical program `A271341.P13705107240801705234` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271341 has offset 0).

The definition of A271341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271341.P13705107240801705234

`(a(n-1)*a(n-9)+a(n-5)²)/a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271341

/-- `(a(n-1)*a(n-9)+a(n-5)²)/a(n-10)` -/
def P13705107240801705234.Spec : Prop :=
  ∀ n, P13705107240801705234.a n = (A271341 n : ℚ)

end A271341

/-! ## A271341.P14198511688880048537

`ceil(A270929(2*(n+2))/A202777(n+4))`
-/

namespace A271341.P14198511688880048537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A270929 (2 * (n + 2)) : ℚ) / (A202777 (n + 4) : ℚ)⌉

end

end A271341.P14198511688880048537

namespace A271341

/-- `ceil(A270929(2*(n+2))/A202777(n+4))` -/
def P14198511688880048537.Spec : Prop :=
  ∀ n, P14198511688880048537.a n = A271341 n

end A271341

/-!
# A271342: Sum of all even divisors of all positive integers <= n.

The programs for A271342, the canonical program `A271342.P3433703997216414430` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271342 has offset 1).

The definition of A271342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271342.P3433703997216414430

`A024916(n+1)-A078471(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A271342

/-- `A024916(n+1)-A078471(n+1)` -/
def P3433703997216414430.Spec : Prop :=
  ∀ n, P3433703997216414430.a n = A271342 (n + 1)

theorem P3433703997216414430.correct : P3433703997216414430.Spec := by
  intro n
  simp only [A271342, Nat.add_sub_cancel]

end A271342

/-! ## A271342.P2013255683388120452

`∑[∑{d}[n+1, #%or(1, #)]]`
-/

namespace A271342.P2013255683388120452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % Nat.lor 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P2013255683388120452

namespace A271342

/-- `∑[∑{d}[n+1, #%or(1, #)]]` -/
def P2013255683388120452.Spec : Prop :=
  ∀ n, (P2013255683388120452.a n : ℤ) = A271342 (n + 1)

end A271342

/-! ## A271342.P13045732367913042288

`∑[2*∑{d}[∑[n]%(n+1), #]]`
-/

namespace A271342.P13045732367913042288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P13045732367913042288

namespace A271342

/-- `∑[2*∑{d}[∑[n]%(n+1), #]]` -/
def P13045732367913042288.Spec : Prop :=
  ∀ n, (P13045732367913042288.a n : ℤ) = A271342 (n + 1)

end A271342

/-! ## A271342.P17539828671793475384

`∑[A146076(n+1)]`
-/

namespace A271342.P17539828671793475384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P17539828671793475384

namespace A271342

/-- `∑[A146076(n+1)]` -/
def P17539828671793475384.Spec : Prop :=
  ∀ n, P17539828671793475384.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P15688027185062767642

`∑[A010673(n)*A245092(n)]`
-/

namespace A271342.P15688027185062767642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A245092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P15688027185062767642

namespace A271342

/-- `∑[A010673(n)*A245092(n)]` -/
def P15688027185062767642.Spec : Prop :=
  ∀ n, P15688027185062767642.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P257946851947061211

`A093353(n)-A024931(n+2)`
-/

namespace A271342.P257946851947061211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n - A024931 (n + 2)

end

end A271342.P257946851947061211

namespace A271342

/-- `A093353(n)-A024931(n+2)` -/
def P257946851947061211.Spec : Prop :=
  ∀ n, P257946851947061211.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P16201211629710523951

`∑[(1-A033999(n))*A245092(n)]`
-/

namespace A271342.P16201211629710523951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033999 n) * A245092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P16201211629710523951

namespace A271342

/-- `∑[(1-A033999(n))*A245092(n)]` -/
def P16201211629710523951.Spec : Prop :=
  ∀ n, P16201211629710523951.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P12317525414736879373

`A078471(n+1)+A024919(n+1)`
-/

namespace A271342.P12317525414736879373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078471 (n + 1) + A024919 (n + 1)

end

end A271342.P12317525414736879373

namespace A271342

/-- `A078471(n+1)+A024919(n+1)` -/
def P12317525414736879373.Spec : Prop :=
  ∀ n, P12317525414736879373.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P1784280789888167002

`A327329(n+1)%A350146(n+1)`
-/

namespace A271342.P1784280789888167002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327329 (n + 1)) (A350146 (n + 1))

end

end A271342.P1784280789888167002

namespace A271342

/-- `A327329(n+1)%A350146(n+1)` -/
def P1784280789888167002.Spec : Prop :=
  ∀ n, P1784280789888167002.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P1899506285863518127

`∑[A000203(n+1)-A000593(n+1)]`
-/

namespace A271342.P1899506285863518127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P1899506285863518127

namespace A271342

/-- `∑[A000203(n+1)-A000593(n+1)]` -/
def P1899506285863518127.Spec : Prop :=
  ∀ n, P1899506285863518127.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P16993049051814525085

`∑[A000203(n+1)]-A078471(n+1)`
-/

namespace A271342.P16993049051814525085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078471 (n + 1)

end

end A271342.P16993049051814525085

namespace A271342

/-- `∑[A000203(n+1)]-A078471(n+1)` -/
def P16993049051814525085.Spec : Prop :=
  ∀ n, P16993049051814525085.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P6011413202513946087

`2*(A024916(n+1)-A350146(n+1))`
-/

namespace A271342.P6011413202513946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024916 (n + 1) - A350146 (n + 1))

end

end A271342.P6011413202513946087

namespace A271342

/-- `2*(A024916(n+1)-A350146(n+1))` -/
def P6011413202513946087.Spec : Prop :=
  ∀ n, P6011413202513946087.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P7662652033297565833

`A327329(n+1)/2-A078471(n+1)`
-/

namespace A271342.P7662652033297565833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (n + 1) : ℚ) / 2 - (A078471 (n + 1) : ℚ)

end

end A271342.P7662652033297565833

namespace A271342

/-- `A327329(n+1)/2-A078471(n+1)` -/
def P7662652033297565833.Spec : Prop :=
  ∀ n, P7662652033297565833.a n = (A271342 (n + 1) : ℚ)

theorem P7662652033297565833.correct : P7662652033297565833.Spec := by
  intro n
  simp only [A271342, Nat.add_sub_cancel, A271342.P7662652033297565833.a, A271342.P3433703997216414430.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A078471, A078471.P966964113016564166.a, A327329, A327329.P5185755489289824233.a, A000217, A000217.P10269402890581615239.a, A333194, A333194.P8598464989280719003.f1, A333194.P8598464989280719003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271342

/-! ## A271342.P13065159347515808511

`∑[(1-A038712(n+1))*A115607(n+1)]`
-/

namespace A271342.P13065159347515808511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A038712 (n + 1)) * A115607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P13065159347515808511

namespace A271342

/-- `∑[(1-A038712(n+1))*A115607(n+1)]` -/
def P13065159347515808511.Spec : Prop :=
  ∀ n, P13065159347515808511.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P5682858503083068560

`∑[2*(A000203(n+1)-A002131(n+1))]`
-/

namespace A271342.P5682858503083068560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - A002131 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P5682858503083068560

namespace A271342

/-- `∑[2*(A000203(n+1)-A002131(n+1))]` -/
def P5682858503083068560.Spec : Prop :=
  ∀ n, P5682858503083068560.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P2235596237453462539

`∑[A074400(n+1)-2*A002131(n+1)]`
-/

namespace A271342.P2235596237453462539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - 2 * A002131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P2235596237453462539

namespace A271342

/-- `∑[A074400(n+1)-2*A002131(n+1)]` -/
def P2235596237453462539.Spec : Prop :=
  ∀ n, P2235596237453462539.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P6003971291579496739

`∑[A001065(n+1)+n+1-A000593(n+1)]`
-/

namespace A271342.P6003971291579496739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P6003971291579496739

namespace A271342

/-- `∑[A001065(n+1)+n+1-A000593(n+1)]` -/
def P6003971291579496739.Spec : Prop :=
  ∀ n, P6003971291579496739.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P16122295550904326978

`∑[A001065(n+1)+1+n]-A078471(n+1)`
-/

namespace A271342.P16122295550904326978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078471 (n + 1)

end

end A271342.P16122295550904326978

namespace A271342

/-- `∑[A001065(n+1)+1+n]-A078471(n+1)` -/
def P16122295550904326978.Spec : Prop :=
  ∀ n, P16122295550904326978.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P5015995041391045316

`∑[A155085(n+1)-(n+1)]-A078471(n+1)`
-/

namespace A271342.P5015995041391045316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078471 (n + 1)

end

end A271342.P5015995041391045316

namespace A271342

/-- `∑[A155085(n+1)-(n+1)]-A078471(n+1)` -/
def P5015995041391045316.Spec : Prop :=
  ∀ n, P5015995041391045316.a n = A271342 (n + 1)

end A271342

/-! ## A271342.P14120615740194589606

`∑[A000203(n+1)-A000203(A000265(n+1))]`
-/

namespace A271342.P14120615740194589606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271342.P14120615740194589606

namespace A271342

/-- `∑[A000203(n+1)-A000203(A000265(n+1))]` -/
def P14120615740194589606.Spec : Prop :=
  ∀ n, P14120615740194589606.a n = A271342 (n + 1)

end A271342

/-!
# A271344: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the odd numbers multiplied by -1, interleaved with k-1 zeros, but T(n,1) = 1 and the first element of column k is in row k(k+1)/2.

The programs for A271344, there is no canonical definition to state claims against.
-/

/-! ## A271344.P6504821233265783508

`A196020(n+1)-A005843(A196020(n+1)%A262535(n+1))`
-/

namespace A271344.P6504821233265783508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 1) - A005843 (Int.tmod (A196020 (n + 1)) (A262535 (n + 1))).toNat

end

end A271344.P6504821233265783508

/-! ## A271344.P201680966360875093

`A196020(n+1)-2*A231347(n+1)`
-/

namespace A271344.P201680966360875093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 1) - 2 * A231347 (n + 1)

end

end A271344.P201680966360875093

/-! ## A271344.P11264214325690603818

`A196020(n+1)-A005843(A231347(n+1))`
-/

namespace A271344.P11264214325690603818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (n + 1) - A005843 (A231347 (n + 1)).toNat

end

end A271344.P11264214325690603818

/-! ## A271344.P10418310313307409888

`A004273(A211343(n+1))-2*A231347(n+1)`
-/

namespace A271344.P10418310313307409888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211343 (n + 1)).toNat - 2 * A231347 (n + 1)

end

end A271344.P10418310313307409888

/-! ## A271344.P16050873224637749451

`A272026(n+1)/3-A005843(A231347(n+1))`
-/

namespace A271344.P16050873224637749451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272026 (n + 1) : ℚ) / 3 - (A005843 (A231347 (n + 1)).toNat : ℚ)

end

end A271344.P16050873224637749451

/-! ## A271344.P15924155141000156570

`A004273(A211343(n+1))-A005843(A231347(n+1))`
-/

namespace A271344.P15924155141000156570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211343 (n + 1)).toNat - A005843 (A231347 (n + 1)).toNat

end

end A271344.P15924155141000156570

/-! ## A271344.P16420577755303554454

`-A231345(n+1)`
-/

namespace A271344.P16420577755303554454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A231345 (n + 1)

end

end A271344.P16420577755303554454

/-! ## A271344.P10253356201244114817

`Δ[a(n-1)-A231345(n)]` with `a(0)=0`
-/

namespace A271344.P10253356201244114817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A231345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271344.P10253356201244114817

/-! ## A271344.P17590047894212403057

`A264668(n)-A231345(n+1)`
-/

namespace A271344.P17590047894212403057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A231345 (n + 1)

end

end A271344.P17590047894212403057

/-! ## A271344.P4710409699761152069

`A112802(n+1)-A231345(n+1)`
-/

namespace A271344.P4710409699761152069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (n + 1) - A231345 (n + 1)

end

end A271344.P4710409699761152069

/-!
# A271345: Integers n such that (n-1)! is divisible by n^3.

The programs for A271345, the canonical program `A271345.P10207795648301136136` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271345 has offset 1).

The definition of A271345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271345.P10207795648301136136

`lt[A301317(n+1), 2]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271345

/-- `lt[A301317(n+1), 2]+1` -/
def P10207795648301136136.Spec : Prop :=
  ∀ n, (P10207795648301136136.a n : ℤ) = A271345 (n + 1)

theorem P10207795648301136136.correct : P10207795648301136136.Spec := by
  intro n
  simp only [A271345, Nat.add_sub_cancel]

end A271345

/-! ## A271345.P6624870112002372718

`record[n+3-A301317(n+2)]`
-/

namespace A271345.P6624870112002372718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A301317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271345.P6624870112002372718

namespace A271345

/-- `record[n+3-A301317(n+2)]` -/
def P6624870112002372718.Spec : Prop :=
  ∀ n, P6624870112002372718.a n = A271345 (n + 1)

end A271345

/-! ## A271345.P3464969873919907652

`record[(n+3)/A301317(n+3)]`
-/

namespace A271345.P3464969873919907652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A301317 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271345.P3464969873919907652

namespace A271345

/-- `record[(n+3)/A301317(n+3)]` -/
def P3464969873919907652.Spec : Prop :=
  ∀ n, P3464969873919907652.a n = (A271345 (n + 1) : ℚ)

end A271345

/-! ## A271345.P1438680527943581152

`eq[A057427(n), A301317(n+1)]+1`
-/

namespace A271345.P1438680527943581152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271345.P1438680527943581152

namespace A271345

/-- `eq[A057427(n), A301317(n+1)]+1` -/
def P1438680527943581152.Spec : Prop :=
  ∀ n, (P1438680527943581152.a n : ℤ) = A271345 (n + 1)

end A271345

/-! ## A271345.P11538016654092315031

`eq[A131836(n+1), A301317(n+1)]+1`
-/

namespace A271345.P11538016654092315031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271345.P11538016654092315031

namespace A271345

/-- `eq[A131836(n+1), A301317(n+1)]+1` -/
def P11538016654092315031.Spec : Prop :=
  ∀ n, (P11538016654092315031.a n : ℤ) = A271345 (n + 1)

end A271345

/-! ## A271345.P14267343528197765970

`eq[0, A248765(n+1)%(n+1)]+1`
-/

namespace A271345.P14267343528197765970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248765 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A271345.P14267343528197765970

namespace A271345

/-- `eq[0, A248765(n+1)%(n+1)]+1` -/
def P14267343528197765970.Spec : Prop :=
  ∀ n, (P14267343528197765970.a n : ℤ) = A271345 (n + 1)

end A271345

/-! ## A271345.P12682129634729975088

`eq[n, gcd(n, A248765(n+1))]`
-/

namespace A271345.P12682129634729975088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A248765 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271345.P12682129634729975088

namespace A271345

/-- `eq[n, gcd(n, A248765(n+1))]` -/
def P12682129634729975088.Spec : Prop :=
  ∀ n, (P12682129634729975088.a n : ℤ) = A271345 (n + 1)

end A271345

/-! ## A271345.P3278588989971716296

`eq[A178334(n), A301317(n+1)]+1`
-/

namespace A271345.P3278588989971716296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271345.P3278588989971716296

namespace A271345

/-- `eq[A178334(n), A301317(n+1)]+1` -/
def P3278588989971716296.Spec : Prop :=
  ∀ n, (P3278588989971716296.a n : ℤ) = A271345 (n + 1)

end A271345

/-!
# A271346: Numbers k such that the final digit of k^k is 6.

The programs for A271346, the canonical program `A271346.P3995491947784597379` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271346 has offset 1).

The definition of A271346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271346.P15506637392784005132

`ogf((4+2x+2x^2+4x^3+2x^4+2x^5+4x^6)/(1-x-x^6+x^7))`
-/

namespace A271346.P15506637392784005132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 2, 4, 2, 2, 4] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A271346.P15506637392784005132

namespace A271346

/-- `ogf((4+2x+2x^2+4x^3+2x^4+2x^5+4x^6)/(1-x-x^6+x^7))` -/
def P15506637392784005132.Spec : Prop :=
  ∀ n, P15506637392784005132.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P3995491947784597379

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=4, a(1)=6, a(2)=8, a(3)=12, a(4)=14, a(5)=16, a(6)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271346

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P3995491947784597379.Spec : Prop :=
  ∀ n, P3995491947784597379.a n = A271346 (n + 1)

theorem P3995491947784597379.correct : P3995491947784597379.Spec := by
  intro n
  simp only [A271346, Nat.add_sub_cancel]

end A271346

/-! ## A271346.P7587549727034034530

`2*comp[∑[n²%5]]`
-/

namespace A271346.P7587549727034034530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A271346.P7587549727034034530

namespace A271346

/-- `2*comp[∑[n²%5]]` -/
def P7587549727034034530.Spec : Prop :=
  ∀ n, (P7587549727034034530.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P11926601504789468559

`∑[lcm(2, A010126(n))]`
-/

namespace A271346.P11926601504789468559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A010126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271346.P11926601504789468559

namespace A271346

/-- `∑[lcm(2, A010126(n))]` -/
def P11926601504789468559.Spec : Prop :=
  ∀ n, (P11926601504789468559.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P18020614925704493

`A130151(n)+A063241(n+1)`
-/

namespace A271346.P18020614925704493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n + A063241 (n + 1)

end

end A271346.P18020614925704493

namespace A271346

/-- `A130151(n)+A063241(n+1)` -/
def P18020614925704493.Spec : Prop :=
  ∀ n, P18020614925704493.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P6382482775545674137

`2*(A053438(A008620(n))+n)`
-/

namespace A271346.P6382482775545674137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053438 (A008620 n).toNat + (n : ℤ))

end

end A271346.P6382482775545674137

namespace A271346

/-- `2*(A053438(A008620(n))+n)` -/
def P6382482775545674137.Spec : Prop :=
  ∀ n, P6382482775545674137.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P10444132527175756993

`A126590(n+1)+A063208(n+1)`
-/

namespace A271346.P10444132527175756993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126590 (n + 1) + A063208 (n + 1)

end

end A271346.P10444132527175756993

namespace A271346

/-- `A126590(n+1)+A063208(n+1)` -/
def P10444132527175756993.Spec : Prop :=
  ∀ n, P10444132527175756993.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P1208490428095219327

`A047621(A002264(n)+1)+2*n+1`
-/

namespace A271346.P1208490428095219327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A002264 n + 1).toNat + (2 * n + 1 : ℤ)

end

end A271346.P1208490428095219327

namespace A271346

/-- `A047621(A002264(n)+1)+2*n+1` -/
def P1208490428095219327.Spec : Prop :=
  ∀ n, P1208490428095219327.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P10551222738686993472

`∪[2*A090773(n+1), A090773(n+1)]`
-/

namespace A271346.P10551222738686993472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271346.P10551222738686993472

namespace A271346

/-- `∪[2*A090773(n+1), A090773(n+1)]` -/
def P10551222738686993472.Spec : Prop :=
  ∀ n, (P10551222738686993472.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P5351953687133853062

`Δ[A113422(n)+A113422(n)%4]`
-/

namespace A271346.P5351953687133853062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + Int.tmod (A113422 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271346.P5351953687133853062

namespace A271346

/-- `Δ[A113422(n)+A113422(n)%4]` -/
def P5351953687133853062.Spec : Prop :=
  ∀ n, P5351953687133853062.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P2059882181075630070

`A217562(A047593(n+1))`
-/

namespace A271346.P2059882181075630070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (A047593 (n + 1)).toNat

end

end A271346.P2059882181075630070

namespace A271346

/-- `A217562(A047593(n+1))` -/
def P2059882181075630070.Spec : Prop :=
  ∀ n, P2059882181075630070.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P12601855104282150359

`A072967(a(n-1))` with `a(0)=4`
-/

namespace A271346.P12601855104282150359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A072967 (a (n - 1)).toNat

end

end A271346.P12601855104282150359

namespace A271346

/-- `A072967(a(n-1))` -/
def P12601855104282150359.Spec : Prop :=
  ∀ n, P12601855104282150359.a n = A271346 (n + 1)

end A271346

/-! ## A271346.P5534696857190918381

`eq[A014709(n), A040772(n)]`
-/

namespace A271346.P5534696857190918381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P5534696857190918381

namespace A271346

/-- `eq[A014709(n), A040772(n)]` -/
def P5534696857190918381.Spec : Prop :=
  ∀ n, (P5534696857190918381.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P11114352690254211705

`eq[A019426(n), A204690(n)]`
-/

namespace A271346.P11114352690254211705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P11114352690254211705

namespace A271346

/-- `eq[A019426(n), A204690(n)]` -/
def P11114352690254211705.Spec : Prop :=
  ∀ n, (P11114352690254211705.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P13005394667854370933

`eq[A019427(n), A204690(n)]`
-/

namespace A271346.P13005394667854370933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P13005394667854370933

namespace A271346

/-- `eq[A019427(n), A204690(n)]` -/
def P13005394667854370933.Spec : Prop :=
  ∀ n, (P13005394667854370933.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P17691613795061258667

`eq[A019428(n), A204690(n)]`
-/

namespace A271346.P17691613795061258667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P17691613795061258667

namespace A271346

/-- `eq[A019428(n), A204690(n)]` -/
def P17691613795061258667.Spec : Prop :=
  ∀ n, (P17691613795061258667.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P6754996639545718619

`eq[A019429(n), A204690(n)]`
-/

namespace A271346.P6754996639545718619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P6754996639545718619

namespace A271346

/-- `eq[A019429(n), A204690(n)]` -/
def P6754996639545718619.Spec : Prop :=
  ∀ n, (P6754996639545718619.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P13580510375249646518

`eq[A019430(n), A204690(n)]`
-/

namespace A271346.P13580510375249646518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P13580510375249646518

namespace A271346

/-- `eq[A019430(n), A204690(n)]` -/
def P13580510375249646518.Spec : Prop :=
  ∀ n, (P13580510375249646518.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P1264305021206419599

`eq[A019431(n), A204690(n)]`
-/

namespace A271346.P1264305021206419599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P1264305021206419599

namespace A271346

/-- `eq[A019431(n), A204690(n)]` -/
def P1264305021206419599.Spec : Prop :=
  ∀ n, (P1264305021206419599.a n : ℤ) = A271346 (n + 1)

end A271346

/-! ## A271346.P985106859872600859

`eq[A019432(n), A204690(n)]`
-/

namespace A271346.P985106859872600859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271346.P985106859872600859

namespace A271346

/-- `eq[A019432(n), A204690(n)]` -/
def P985106859872600859.Spec : Prop :=
  ∀ n, (P985106859872600859.a n : ℤ) = A271346 (n + 1)

end A271346

/-!
# A271347: Primes p such that p + 38 is also prime.

The programs for A271347, the canonical program `A271347.P3397854645689726759` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271347 has offset 1).

The definition of A271347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271347.P3397854645689726759

`p?[A059456(n+1)-38]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A271347

/-- `p?[A059456(n+1)-38]` -/
def P3397854645689726759.Spec : Prop :=
  ∀ n, P3397854645689726759.a n = A271347 (n + 1)

theorem P3397854645689726759.correct : P3397854645689726759.Spec := by
  intro n
  simp only [A271347, Nat.add_sub_cancel]

end A271347

/-! ## A271347.P13500126185882957051

`p?[p?[2*n+1]-38]`
-/

namespace A271347.P13500126185882957051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P13500126185882957051

namespace A271347

/-- `p?[p?[2*n+1]-38]` -/
def P13500126185882957051.Spec : Prop :=
  ∀ n, P13500126185882957051.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P9000292179779520450

`p?[A040976(n+1)-36]`
-/

namespace A271347.P9000292179779520450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P9000292179779520450

namespace A271347

/-- `p?[A040976(n+1)-36]` -/
def P9000292179779520450.Spec : Prop :=
  ∀ n, P9000292179779520450.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P5115694959313471413

`p?[A006093(n+1)-37]`
-/

namespace A271347.P5115694959313471413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P5115694959313471413

namespace A271347

/-- `p?[A006093(n+1)-37]` -/
def P5115694959313471413.Spec : Prop :=
  ∀ n, P5115694959313471413.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P1921767352903339026

`p?[A000040(n+1)-38]`
-/

namespace A271347.P1921767352903339026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P1921767352903339026

namespace A271347

/-- `p?[A000040(n+1)-38]` -/
def P1921767352903339026.Spec : Prop :=
  ∀ n, P1921767352903339026.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P17607001999115925565

`p?[A008578(n+1)-38]`
-/

namespace A271347.P17607001999115925565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P17607001999115925565

namespace A271347

/-- `p?[A008578(n+1)-38]` -/
def P17607001999115925565.Spec : Prop :=
  ∀ n, P17607001999115925565.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P15091203210350870761

`p?[A065091(n+1)-38]`
-/

namespace A271347.P15091203210350870761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P15091203210350870761

namespace A271347

/-- `p?[A065091(n+1)-38]` -/
def P15091203210350870761.Spec : Prop :=
  ∀ n, P15091203210350870761.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P16957000995878317809

`p?[A008864(n+1)-39]`
-/

namespace A271347.P16957000995878317809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P16957000995878317809

namespace A271347

/-- `p?[A008864(n+1)-39]` -/
def P16957000995878317809.Spec : Prop :=
  ∀ n, P16957000995878317809.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P18051508838372985405

`p?[record[A000010(n+1)]-37]`
-/

namespace A271347.P18051508838372985405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P18051508838372985405

namespace A271347

/-- `p?[record[A000010(n+1)]-37]` -/
def P18051508838372985405.Spec : Prop :=
  ∀ n, P18051508838372985405.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P1013092024249061287

`record[p?[A006530(n+2)-38]]`
-/

namespace A271347.P1013092024249061287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 38

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271347.P1013092024249061287

namespace A271347

/-- `record[p?[A006530(n+2)-38]]` -/
def P1013092024249061287.Spec : Prop :=
  ∀ n, P1013092024249061287.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P10099786642397940168

`A004273(A153146(n+1)-9)`
-/

namespace A271347.P10099786642397940168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A153146 (n + 1) - 9).toNat

end

end A271347.P10099786642397940168

namespace A271347

/-- `A004273(A153146(n+1)-9)` -/
def P10099786642397940168.Spec : Prop :=
  ∀ n, P10099786642397940168.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P17743105261333520838

`p?[A023480(p?[2*n+1])]`
-/

namespace A271347.P17743105261333520838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P17743105261333520838

namespace A271347

/-- `p?[A023480(p?[2*n+1])]` -/
def P17743105261333520838.Spec : Prop :=
  ∀ n, P17743105261333520838.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P13474511305132120753

`p?[record[A014963(n+2)]-38]`
-/

namespace A271347.P13474511305132120753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P13474511305132120753

namespace A271347

/-- `p?[record[A014963(n+2)]-38]` -/
def P13474511305132120753.Spec : Prop :=
  ∀ n, P13474511305132120753.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P17723192536926741946

`p?[A023480(A000040(n+1))]`
-/

namespace A271347.P17723192536926741946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P17723192536926741946

namespace A271347

/-- `p?[A023480(A000040(n+1))]` -/
def P17723192536926741946.Spec : Prop :=
  ∀ n, P17723192536926741946.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P1886900325343899325

`p?[A023482(A000040(n+1)+2)]`
-/

namespace A271347.P1886900325343899325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P1886900325343899325

namespace A271347

/-- `p?[A023482(A000040(n+1)+2)]` -/
def P1886900325343899325.Spec : Prop :=
  ∀ n, P1886900325343899325.a n = A271347 (n + 1)

end A271347

/-! ## A271347.P5218916545692960555

`p?[A023478(A006005(n+1))-2]`
-/

namespace A271347.P5218916545692960555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A006005 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P5218916545692960555

namespace A271347

/-- `p?[A023478(A006005(n+1))-2]` -/
def P5218916545692960555.Spec : Prop :=
  ∀ n, P5218916545692960555.a n = A271347 (n + 1)

end A271347

/-!
# A271350: a(n) = 3^n mod 83.

The programs for A271350, the canonical program `A271350.P1952424727777946543` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271350 has offset 0).

The definition of A271350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%83` (program `A271350.P1952424727777946543`, by `A271350.P1952424727777946543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271350.P1952424727777946543

`(3^n)%83`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271350

/-- `(3^n)%83` -/
def P1952424727777946543.Spec : Prop :=
  ∀ n, (P1952424727777946543.a n : ℤ) = A271350 n

theorem P1952424727777946543.correct : P1952424727777946543.Spec := by
  intro n
  simp only [A271350]

end A271350

/-!
# A271351: a(n) = 3^n mod 131.

The programs for A271351, the canonical program `A271351.P4153005083283743470` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271351 has offset 0).

The definition of A271351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%131` (program `A271351.P4153005083283743470`, by `A271351.P4153005083283743470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271351.P4153005083283743470

`(3^n)%131`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271351

/-- `(3^n)%131` -/
def P4153005083283743470.Spec : Prop :=
  ∀ n, (P4153005083283743470.a n : ℤ) = A271351 n

theorem P4153005083283743470.correct : P4153005083283743470.Spec := by
  intro n
  simp only [A271351]

end A271351

/-!
# A271352: a(n) = 3^n mod 211.

The programs for A271352, the canonical program `A271352.P4104824053622740489` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271352 has offset 0).

The definition of A271352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%211` (program `A271352.P4104824053622740489`, by `A271352.P4104824053622740489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271352.P4104824053622740489

`(3^n)%211`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271352

/-- `(3^n)%211` -/
def P4104824053622740489.Spec : Prop :=
  ∀ n, (P4104824053622740489.a n : ℤ) = A271352 n

theorem P4104824053622740489.correct : P4104824053622740489.Spec := by
  intro n
  simp only [A271352]

end A271352

/-!
# A271353: The prime n - A270003(n) - A270753(n).

The programs for A271353, there is no canonical definition to state claims against.
-/

/-! ## A271353.P17898624871206025582

`A082048(A270753(n+1)-n)`
-/

namespace A271353.P17898624871206025582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082048 (A270753 (n + 1) - (n : ℤ)).toNat

end

end A271353.P17898624871206025582

/-! ## A271353.P18009470797443032160

`A151800(A270753(n+1)-n)`
-/

namespace A271353.P18009470797443032160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A270753 (n + 1) - (n : ℤ)).toNat

end

end A271353.P18009470797443032160

/-! ## A271353.P8588229206914637908

`A007918(A270753(n+1)+1-n)`
-/

namespace A271353.P8588229206914637908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A270753 (n + 1) + (1 - (n : ℤ))).toNat

end

end A271353.P8588229206914637908

/-! ## A271353.P6373102965664981970

`A159477(A270753(n+1)+1-n)`
-/

namespace A271353.P6373102965664981970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A270753 (n + 1) + (1 - (n : ℤ))).toNat

end

end A271353.P6373102965664981970

/-! ## A271353.P15803848013518966504

`A270003(n+1)+A270753(n+1)-(n+1)`
-/

namespace A271353.P15803848013518966504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (n + 1) + (A270753 (n + 1) - (n + 1 : ℤ))

end

end A271353.P15803848013518966504

/-! ## A271353.P12191309783229115679

`A007918(A066169(A270753(n+1)-n))`
-/

namespace A271353.P12191309783229115679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A066169 (A270753 (n + 1) - (n : ℤ)).toNat).toNat

end

end A271353.P12191309783229115679

/-! ## A271353.P2888077179983905861

`A007918(A266620(A270753(n+1)-n))`
-/

namespace A271353.P2888077179983905861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A266620 (A270753 (n + 1) - (n : ℤ)).toNat).toNat

end

end A271353.P2888077179983905861

/-!
# A271354: Products of two distinct Fibonacci numbers, both greater than 1.

The programs for A271354, there is no canonical definition to state claims against.
-/

/-! ## A271354.P9127532936879800821

`A274426(A274427(n+1))`
-/

namespace A271354.P9127532936879800821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A274427 (n + 1)).toNat

end

end A271354.P9127532936879800821

/-! ## A271354.P16249769512694228656

`A274426(record[A116942(n)+1])`
-/

namespace A271354.P16249769512694228656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271354.P16249769512694228656

/-! ## A271354.P8883868319712497585

`A049862(A183569(n+1)+4)`
-/

namespace A271354.P8883868319712497585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (A183569 (n + 1) + 4).toNat

end

end A271354.P8883868319712497585

/-! ## A271354.P6482792574452001761

`record[A274426(n+1)/A306680(n)]`
-/

namespace A271354.P6482792574452001761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274426 (n + 1) : ℚ) / (A306680 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271354.P6482792574452001761

/-! ## A271354.P10496632569620046442

`record[A274426(n+1)/A306846(n)]`
-/

namespace A271354.P10496632569620046442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274426 (n + 1) : ℚ) / (A306846 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271354.P10496632569620046442

/-! ## A271354.P15288355860114449798

`record[A274426(n+1)/A010783(n+1)]`
-/

namespace A271354.P15288355860114449798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274426 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271354.P15288355860114449798

/-! ## A271354.P15766631298688878248

`A274426(A005408(n)-A322832(n))`
-/

namespace A271354.P15766631298688878248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A005408 n - A322832 n).toNat

end

end A271354.P15766631298688878248

/-! ## A271354.P15739196000241222072

`A274426(record[A008619(n*A118175(n))])`
-/

namespace A271354.P15739196000241222072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A118175 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271354.P15739196000241222072

/-! ## A271354.P5622819289571031581

`A274426(record[A008619(n*A266502(n))])`
-/

namespace A271354.P5622819289571031581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A266502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271354.P5622819289571031581

/-! ## A271354.P359543153022694637

`A274426(record[A008619(n*A267050(n))])`
-/

namespace A271354.P359543153022694637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A267050 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271354.P359543153022694637

/-! ## A271354.P8442141554729376637

`record[A118175(A005843(n))*A274426(n+1)]`
-/

namespace A271354.P8442141554729376637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A005843 n).toNat * A274426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271354.P8442141554729376637

/-!
# A271355: Triangular array: T(n,k) = |round((r^n)*(s^k))|, where r = golden ratio = (1+sqrt(5))/2, s = (1-sqrt(5))/2, 1 <= k <= n, n >= 1.

The programs for A271355, the canonical program `A271355.P12576549963311332079` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271355 has offset 1).

The definition of A271355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271355.P2827059605285985201

`round(ϕ^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A271355.P2827059605285985201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))

end

end A271355.P2827059605285985201

namespace A271355

/-- `round(ϕ^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P2827059605285985201.Spec : Prop :=
  ∀ n, P2827059605285985201.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P14079902651223893948

`round(ϕ^(C(comp[∑[n]]-n, 2)-n-1))`
-/

namespace A271355.P14079902651223893948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1 : ℤ))

end

end A271355.P14079902651223893948

namespace A271355

/-- `round(ϕ^(C(comp[∑[n]]-n, 2)-n-1))` -/
def P14079902651223893948.Spec : Prop :=
  ∀ n, P14079902651223893948.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P7592602057382065356

`round(ϕ^A025581(n))`
-/

namespace A271355.P7592602057382065356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (A025581 n : ℤ))

end

end A271355.P7592602057382065356

namespace A271355

/-- `round(ϕ^A025581(n))` -/
def P7592602057382065356.Spec : Prop :=
  ∀ n, P7592602057382065356.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P6696301857612107823

`A169985(A025581(n))`
-/

namespace A271355.P6696301857612107823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A025581 n).toNat

end

end A271355.P6696301857612107823

namespace A271355

/-- `A169985(A025581(n))` -/
def P6696301857612107823.Spec : Prop :=
  ∀ n, P6696301857612107823.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P12576549963311332079

`A254729(A004736(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A271355

/-- `A254729(A004736(n+1))` -/
def P12576549963311332079.Spec : Prop :=
  ∀ n, P12576549963311332079.a n = A271355 (n + 1)

theorem P12576549963311332079.correct : P12576549963311332079.Spec := by
  intro n
  simp only [A271355, Nat.add_sub_cancel]

end A271355

/-! ## A271355.P13460759442376286495

`A169985(A004736(n+1)-1)`
-/

namespace A271355.P13460759442376286495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A004736 (n + 1) - 1).toNat

end

end A271355.P13460759442376286495

namespace A271355

/-- `A169985(A004736(n+1)-1)` -/
def P13460759442376286495.Spec : Prop :=
  ∀ n, P13460759442376286495.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P14768770255177261430

`A169985(A003056(n)-A002262(n))`
-/

namespace A271355.P14768770255177261430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A003056 n - A002262 n).toNat

end

end A271355.P14768770255177261430

namespace A271355

/-- `A169985(A003056(n)-A002262(n))` -/
def P14768770255177261430.Spec : Prop :=
  ∀ n, P14768770255177261430.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P5427289443068353234

`A169985(A003056(n)+1-A002260(n+1))`
-/

namespace A271355.P5427289443068353234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A003056 n + (1 - A002260 (n + 1))).toNat

end

end A271355.P5427289443068353234

namespace A271355

/-- `A169985(A003056(n)+1-A002260(n+1))` -/
def P5427289443068353234.Spec : Prop :=
  ∀ n, P5427289443068353234.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P9934808826442520795

`round(A000045(A127739(n+1))/A000045(n+1))`
-/

namespace A271355.P9934808826442520795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A127739 (n + 1)).toNat : ℚ) / (A000045 (n + 1) : ℚ))

end

end A271355.P9934808826442520795

namespace A271355

/-- `round(A000045(A127739(n+1))/A000045(n+1))` -/
def P9934808826442520795.Spec : Prop :=
  ∀ n, P9934808826442520795.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P17533393348439906022

`round(A000045(A004202(n+1)-(n+1))/A000045(n+1))`
-/

namespace A271355.P17533393348439906022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A004202 (n + 1) - (n + 1 : ℤ)).toNat : ℚ) / (A000045 (n + 1) : ℚ))

end

end A271355.P17533393348439906022

namespace A271355

/-- `round(A000045(A004202(n+1)-(n+1))/A000045(n+1))` -/
def P17533393348439906022.Spec : Prop :=
  ∀ n, P17533393348439906022.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P4967339463226393948

`A005206(A104764(n+1))`
-/

namespace A271355.P4967339463226393948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A104764 (n + 1)).toNat

end

end A271355.P4967339463226393948

namespace A271355

/-- `A005206(A104764(n+1))` -/
def P4967339463226393948.Spec : Prop :=
  ∀ n, P4967339463226393948.a n = A271355 (n + 1)

end A271355

/-! ## A271355.P15836705131441435737

`filter[A019586(n+1), A102460(#)]`
-/

namespace A271355.P15836705131441435737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102460 (f1 j).toNat = 1) n)

end

end A271355.P15836705131441435737

namespace A271355

/-- `filter[A019586(n+1), A102460(#)]` -/
def P15836705131441435737.Spec : Prop :=
  ∀ n, P15836705131441435737.a n = A271355 (n + 1)

end A271355

/-!
# A271356: Difference sequence of the sequence A271354 of the increasing sequence of products of two distinct Fibonacci numbers greater than 1.

The programs for A271356, there is no canonical definition to state claims against.
-/

/-! ## A271356.P10079261656216363771

`Δ[A274426(A274427(n+1))]`
-/

namespace A271356.P10079261656216363771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A274427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271356.P10079261656216363771

/-! ## A271356.P2846763408796700779

`Δ[record[A274426(n+1)/A306680(n)]]`
-/

namespace A271356.P2846763408796700779
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274426 (n + 1) : ℚ) / (A306680 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271356.P2846763408796700779

/-! ## A271356.P10664411336576395230

`Δ[record[A274426(n+1)/A306846(n)]]`
-/

namespace A271356.P10664411336576395230
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274426 (n + 1) : ℚ) / (A306846 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271356.P10664411336576395230

/-! ## A271356.P16309949686450785527

`Δ[A271354(n+1)]`
-/

namespace A271356.P16309949686450785527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271356.P16309949686450785527

/-! ## A271356.P11947972728793865203

`Δ[record[A271354(A328399(n))]]`
-/

namespace A271356.P11947972728793865203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271356.P11947972728793865203

/-! ## A271356.P17377887694030922512

`A271354(n+2)-A271354(n+1)`
-/

namespace A271356.P17377887694030922512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (n + 2) - A271354 (n + 1)

end

end A271356.P17377887694030922512

/-! ## A271356.P1086141536965507849

`A271354(A020725(n+1))%A271354(n+1)`
-/

namespace A271356.P1086141536965507849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271354 (A020725 (n + 1)).toNat) (A271354 (n + 1))

end

end A271356.P1086141536965507849

/-! ## A271356.P10788120486996637780

`A271354(A000027(n+2))%A271354(n+1)`
-/

namespace A271356.P10788120486996637780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271354 (A000027 (n + 2)).toNat) (A271354 (n + 1))

end

end A271356.P10788120486996637780

/-!
# A271357: a(n) = k*Fibonacci(2*n+1) + (k+1)*Fibonacci(2*n), where k=3.

The programs for A271357, the canonical program `A271357.P14763536457290710532` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271357 has offset 0).

The definition of A271357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271357.P11046041772224977918

`ogf((3+x)/(1-3x+x^2))`
-/

namespace A271357.P11046041772224977918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -3, 1] n

end

end A271357.P11046041772224977918

namespace A271357

/-- `ogf((3+x)/(1-3x+x^2))` -/
def P11046041772224977918.Spec : Prop :=
  ∀ n, P11046041772224977918.a n = A271357 n

end A271357

/-! ## A271357.P14763536457290710532

`3*a(n-1)-a(n-2)` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271357

/-- `3*a(n-1)-a(n-2)` -/
def P14763536457290710532.Spec : Prop :=
  ∀ n, P14763536457290710532.a n = A271357 n

theorem P14763536457290710532.correct : P14763536457290710532.Spec := by
  intro n
  simp only [A271357]

end A271357

/-! ## A271357.P1610141453032657337

`4*A000045(2*n+2)-A000045(2*n+1)`
-/

namespace A271357.P1610141453032657337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (2 * n + 2) - A000045 (2 * n + 1)

end

end A271357.P1610141453032657337

namespace A271357

/-- `4*A000045(2*n+2)-A000045(2*n+1)` -/
def P1610141453032657337.Spec : Prop :=
  ∀ n, P1610141453032657337.a n = A271357 n

end A271357

/-! ## A271357.P9939325942247923494

`3*A000045(2*n+1)+4*A000045(2*n)`
-/

namespace A271357.P9939325942247923494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (2 * n + 1) + 4 * A000045 (2 * n)

end

end A271357.P9939325942247923494

namespace A271357

/-- `3*A000045(2*n+1)+4*A000045(2*n)` -/
def P9939325942247923494.Spec : Prop :=
  ∀ n, P9939325942247923494.a n = A271357 n

end A271357

/-! ## A271357.P4172905966886920901

`ceil(ϕ²*a(n-1))` with `a(0)=3, a(1)=10`
-/

namespace A271357.P4172905966886920901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A271357.P4172905966886920901

namespace A271357

/-- `ceil(ϕ²*a(n-1))` -/
def P4172905966886920901.Spec : Prop :=
  ∀ n, P4172905966886920901.a n = A271357 n

end A271357

/-! ## A271357.P3806498271265139

`ceil(a(n-1)/(2-ϕ))` with `a(0)=3, a(1)=10`
-/

namespace A271357.P3806498271265139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A271357.P3806498271265139

namespace A271357

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P3806498271265139.Spec : Prop :=
  ∀ n, P3806498271265139.a n = A271357 n

end A271357

/-! ## A271357.P7086012287544150140

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=3, a(1)=10`
-/

namespace A271357.P7086012287544150140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A271357.P7086012287544150140

namespace A271357

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P7086012287544150140.Spec : Prop :=
  ∀ n, P7086012287544150140.a n = A271357 n

end A271357

/-! ## A271357.P4990468643641833450

`record[Δ[a(n-2)-a(n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A271357.P4990468643641833450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271357.P4990468643641833450

namespace A271357

/-- `record[Δ[a(n-2)-a(n-1)]]` -/
def P4990468643641833450.Spec : Prop :=
  ∀ n, P4990468643641833450.a n = A271357 n

end A271357

/-! ## A271357.P10264536120099412298

`A022120(2*n)`
-/

namespace A271357.P10264536120099412298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 (2 * n)

end

end A271357.P10264536120099412298

namespace A271357

/-- `A022120(2*n)` -/
def P10264536120099412298.Spec : Prop :=
  ∀ n, P10264536120099412298.a n = A271357 n

end A271357

/-! ## A271357.P7013580076846405551

`Δ[A187891(Δ[n²])]`
-/

namespace A271357.P7013580076846405551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271357.P7013580076846405551

namespace A271357

/-- `Δ[A187891(Δ[n²])]` -/
def P7013580076846405551.Spec : Prop :=
  ∀ n, P7013580076846405551.a n = A271357 n

end A271357

/-! ## A271357.P10475085376859499481

`Δ[A237133(Δ[n²])]`
-/

namespace A271357.P10475085376859499481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237133 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271357.P10475085376859499481

namespace A271357

/-- `Δ[A237133(Δ[n²])]` -/
def P10475085376859499481.Spec : Prop :=
  ∀ n, P10475085376859499481.a n = A271357 n

end A271357

/-! ## A271357.P4438594983720547264

`A187891(2*(n+1))-1`
-/

namespace A271357.P4438594983720547264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 (2 * (n + 1)) - 1

end

end A271357.P4438594983720547264

namespace A271357

/-- `A187891(2*(n+1))-1` -/
def P4438594983720547264.Spec : Prop :=
  ∀ n, P4438594983720547264.a n = A271357 n

end A271357

/-! ## A271357.P7891555740991798786

`∑[A237133(2*n+1)]-1`
-/

namespace A271357.P7891555740991798786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237133 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A271357.P7891555740991798786

namespace A271357

/-- `∑[A237133(2*n+1)]-1` -/
def P7891555740991798786.Spec : Prop :=
  ∀ n, P7891555740991798786.a n = A271357 n

end A271357

/-! ## A271357.P13801182835437328285

`A025169(n)+A002878(n)`
-/

namespace A271357.P13801182835437328285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n + A002878 n

end

end A271357.P13801182835437328285

namespace A271357

/-- `A025169(n)+A002878(n)` -/
def P13801182835437328285.Spec : Prop :=
  ∀ n, P13801182835437328285.a n = A271357 n

end A271357

/-! ## A271357.P14202619767581413330

`A055267(n)+A005248(n)`
-/

namespace A271357.P14202619767581413330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n + A005248 n

end

end A271357.P14202619767581413330

namespace A271357

/-- `A055267(n)+A005248(n)` -/
def P14202619767581413330.Spec : Prop :=
  ∀ n, P14202619767581413330.a n = A271357 n

end A271357

/-! ## A271357.P8599020192657828469

`A054486(n)+A048575(n)`
-/

namespace A271357.P8599020192657828469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + A048575 n

end

end A271357.P8599020192657828469

namespace A271357

/-- `A054486(n)+A048575(n)` -/
def P8599020192657828469.Spec : Prop :=
  ∀ n, P8599020192657828469.a n = A271357 n

end A271357

/-! ## A271357.P7728600788587901587

`A264080(n)+A102714(n)`
-/

namespace A271357.P7728600788587901587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264080 n + A102714 n

end

end A271357.P7728600788587901587

namespace A271357

/-- `A264080(n)+A102714(n)` -/
def P7728600788587901587.Spec : Prop :=
  ∀ n, P7728600788587901587.a n = A271357 n

end A271357

/-! ## A271357.P9248038556219629746

`A271359(n)-A025169(n)`
-/

namespace A271357.P9248038556219629746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271359 n - A025169 n

end

end A271357.P9248038556219629746

namespace A271357

/-- `A271359(n)-A025169(n)` -/
def P9248038556219629746.Spec : Prop :=
  ∀ n, P9248038556219629746.a n = A271357 n

end A271357

/-! ## A271357.P18209000329664955643

`A097134(n+1)+A001906(n)`
-/

namespace A271357.P18209000329664955643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 (n + 1) + A001906 n

end

end A271357.P18209000329664955643

namespace A271357

/-- `A097134(n+1)+A001906(n)` -/
def P18209000329664955643.Spec : Prop :=
  ∀ n, P18209000329664955643.a n = A271357 n

end A271357

/-! ## A271357.P4481600724041984992

`A122367(n+1)+A054486(n)`
-/

namespace A271357.P4481600724041984992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1) + A054486 n

end

end A271357.P4481600724041984992

namespace A271357

/-- `A122367(n+1)+A054486(n)` -/
def P4481600724041984992.Spec : Prop :=
  ∀ n, P4481600724041984992.a n = A271357 n

end A271357

/-!
# A271358: a(n) = k*Fibonacci(2*n+1) + (k+1)*Fibonacci(2*n), where k=4.

The programs for A271358, the canonical program `A271358.P15687542871526101411` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271358 has offset 0).

The definition of A271358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271358.P9494114436707977885

`ogf((4+x)/(1-3x+x^2))`
-/

namespace A271358.P9494114436707977885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -3, 1] n

end

end A271358.P9494114436707977885

namespace A271358

/-- `ogf((4+x)/(1-3x+x^2))` -/
def P9494114436707977885.Spec : Prop :=
  ∀ n, P9494114436707977885.a n = A271358 n

end A271358

/-! ## A271358.P15687542871526101411

`3*a(n-1)-a(n-2)` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271358

/-- `3*a(n-1)-a(n-2)` -/
def P15687542871526101411.Spec : Prop :=
  ∀ n, P15687542871526101411.a n = A271358 n

theorem P15687542871526101411.correct : P15687542871526101411.Spec := by
  intro n
  simp only [A271358]

end A271358

/-! ## A271358.P5712305453843045719

`4*A001906(n+1)+A001906(n)`
-/

namespace A271358.P5712305453843045719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001906 (n + 1) + A001906 n

end

end A271358.P5712305453843045719

namespace A271358

/-- `4*A001906(n+1)+A001906(n)` -/
def P5712305453843045719.Spec : Prop :=
  ∀ n, P5712305453843045719.a n = A271358 n

end A271358

/-! ## A271358.P17273269132452912574

`5*A000045(2*n+2)-A000045(2*n+1)`
-/

namespace A271358.P17273269132452912574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n + 2) - A000045 (2 * n + 1)

end

end A271358.P17273269132452912574

namespace A271358

/-- `5*A000045(2*n+2)-A000045(2*n+1)` -/
def P17273269132452912574.Spec : Prop :=
  ∀ n, P17273269132452912574.a n = A271358 n

end A271358

/-! ## A271358.P13511381242337020808

`4*A000045(2*n+1)+5*A000045(2*n)`
-/

namespace A271358.P13511381242337020808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (2 * n + 1) + 5 * A000045 (2 * n)

end

end A271358.P13511381242337020808

namespace A271358

/-- `4*A000045(2*n+1)+5*A000045(2*n)` -/
def P13511381242337020808.Spec : Prop :=
  ∀ n, P13511381242337020808.a n = A271358 n

end A271358

/-! ## A271358.P13749902301209965134

`ceil(ϕ²*a(n-1))` with `a(0)=4, a(1)=13`
-/

namespace A271358.P13749902301209965134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A271358.P13749902301209965134

namespace A271358

/-- `ceil(ϕ²*a(n-1))` -/
def P13749902301209965134.Spec : Prop :=
  ∀ n, P13749902301209965134.a n = A271358 n

end A271358

/-! ## A271358.P10429638277142314552

`ceil(a(n-1)/(2-ϕ))` with `a(0)=4, a(1)=13`
-/

namespace A271358.P10429638277142314552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A271358.P10429638277142314552

namespace A271358

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P10429638277142314552.Spec : Prop :=
  ∀ n, P10429638277142314552.a n = A271358 n

end A271358

/-! ## A271358.P14797669305925587590

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=4, a(1)=13`
-/

namespace A271358.P14797669305925587590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A271358.P14797669305925587590

namespace A271358

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P14797669305925587590.Spec : Prop :=
  ∀ n, P14797669305925587590.a n = A271358 n

end A271358

/-! ## A271358.P3211119640985653030

`record[Δ[a(n-2)-a(n-1)]]` with `a(0)=1, a(1)=5`
-/

namespace A271358.P3211119640985653030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271358.P3211119640985653030

namespace A271358

/-- `record[Δ[a(n-2)-a(n-1)]]` -/
def P3211119640985653030.Spec : Prop :=
  ∀ n, P3211119640985653030.a n = A271358 n

end A271358

/-! ## A271358.P1837507259709647948

`A022130(2*n)`
-/

namespace A271358.P1837507259709647948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 (2 * n)

end

end A271358.P1837507259709647948

namespace A271358

/-- `A022130(2*n)` -/
def P1837507259709647948.Spec : Prop :=
  ∀ n, P1837507259709647948.a n = A271358 n

end A271358

/-! ## A271358.P12549232090176646938

`Δ[A187892(Δ[n²])]`
-/

namespace A271358.P12549232090176646938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271358.P12549232090176646938

namespace A271358

/-- `Δ[A187892(Δ[n²])]` -/
def P12549232090176646938.Spec : Prop :=
  ∀ n, P12549232090176646938.a n = A271358 n

end A271358

/-! ## A271358.P9376618866014028261

`Δ[A218735(Δ[n²])]`
-/

namespace A271358.P9376618866014028261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218735 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271358.P9376618866014028261

namespace A271358

/-- `Δ[A218735(Δ[n²])]` -/
def P9376618866014028261.Spec : Prop :=
  ∀ n, P9376618866014028261.a n = A271358 n

end A271358

/-! ## A271358.P16415682300221138456

`A022407(2*n)+1`
-/

namespace A271358.P16415682300221138456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 (2 * n) + 1

end

end A271358.P16415682300221138456

namespace A271358

/-- `A022407(2*n)+1` -/
def P16415682300221138456.Spec : Prop :=
  ∀ n, P16415682300221138456.a n = A271358 n

end A271358

/-! ## A271358.P12179244814048822557

`A187892(2*(n+1))-1`
-/

namespace A271358.P12179244814048822557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 (2 * (n + 1)) - 1

end

end A271358.P12179244814048822557

namespace A271358

/-- `A187892(2*(n+1))-1` -/
def P12179244814048822557.Spec : Prop :=
  ∀ n, P12179244814048822557.a n = A271358 n

end A271358

/-! ## A271358.P9286861433548180608

`A097134(n+1)+A002878(n)`
-/

namespace A271358.P9286861433548180608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 (n + 1) + A002878 n

end

end A271358.P9286861433548180608

namespace A271358

/-- `A097134(n+1)+A002878(n)` -/
def P9286861433548180608.Spec : Prop :=
  ∀ n, P9286861433548180608.a n = A271358 n

end A271358

/-! ## A271358.P12424316723263039343

`A097136(n)+A069403(n+1)`
-/

namespace A271358.P12424316723263039343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A069403 (n + 1)

end

end A271358.P12424316723263039343

namespace A271358

/-- `A097136(n)+A069403(n+1)` -/
def P12424316723263039343.Spec : Prop :=
  ∀ n, P12424316723263039343.a n = A271358 n

end A271358

/-! ## A271358.P8705829054842342120

`A271357(n)+A001906(n+1)`
-/

namespace A271358.P8705829054842342120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271357 n + A001906 (n + 1)

end

end A271358.P8705829054842342120

namespace A271358

/-- `A271357(n)+A001906(n+1)` -/
def P8705829054842342120.Spec : Prop :=
  ∀ n, P8705829054842342120.a n = A271358 n

end A271358

/-! ## A271358.P12109003938250076279

`A025169(n+1)-A005248(n)`
-/

namespace A271358.P12109003938250076279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 (n + 1) - A005248 n

end

end A271358.P12109003938250076279

namespace A271358

/-- `A025169(n+1)-A005248(n)` -/
def P12109003938250076279.Spec : Prop :=
  ∀ n, P12109003938250076279.a n = A271358 n

end A271358

/-! ## A271358.P37145941122037939

`A054486(n+1)-A001519(n)`
-/

namespace A271358.P37145941122037939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 (n + 1) - A001519 n

end

end A271358.P37145941122037939

namespace A271358

/-- `A054486(n+1)-A001519(n)` -/
def P37145941122037939.Spec : Prop :=
  ∀ n, P37145941122037939.a n = A271358 n

end A271358

/-! ## A271358.P7956531625752650475

`A054486(n)+A001906(n+2)`
-/

namespace A271358.P7956531625752650475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + A001906 (n + 2)

end

end A271358.P7956531625752650475

namespace A271358

/-- `A054486(n)+A001906(n+2)` -/
def P7956531625752650475.Spec : Prop :=
  ∀ n, P7956531625752650475.a n = A271358 n

end A271358

/-!
# A271359: a(n) = k*Fibonacci(2*n+1) + (k+1)*Fibonacci(2*n), where k=5.

The programs for A271359, the canonical program `A271359.P13025083425330086805` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271359 has offset 0).

The definition of A271359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271359.P2268255578955431575

`ogf((5+x)/(1-3x+x^2))`
-/

namespace A271359.P2268255578955431575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1] [1, -3, 1] n

end

end A271359.P2268255578955431575

namespace A271359

/-- `ogf((5+x)/(1-3x+x^2))` -/
def P2268255578955431575.Spec : Prop :=
  ∀ n, P2268255578955431575.a n = A271359 n

end A271359

/-! ## A271359.P13025083425330086805

`3*a(n-1)-a(n-2)` with `a(0)=5, a(1)=16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271359

/-- `3*a(n-1)-a(n-2)` -/
def P13025083425330086805.Spec : Prop :=
  ∀ n, P13025083425330086805.a n = A271359 n

theorem P13025083425330086805.correct : P13025083425330086805.Spec := by
  intro n
  simp only [A271359]

end A271359

/-! ## A271359.P10135735822159470609

`5*A001906(n+1)+A001906(n)`
-/

namespace A271359.P10135735822159470609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001906 (n + 1) + A001906 n

end

end A271359.P10135735822159470609

namespace A271359

/-- `5*A001906(n+1)+A001906(n)` -/
def P10135735822159470609.Spec : Prop :=
  ∀ n, P10135735822159470609.a n = A271359 n

end A271359

/-! ## A271359.P1519110435813042908

`6*A000045(2*n+2)-A000045(2*n+1)`
-/

namespace A271359.P1519110435813042908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (2 * n + 2) - A000045 (2 * n + 1)

end

end A271359.P1519110435813042908

namespace A271359

/-- `6*A000045(2*n+2)-A000045(2*n+1)` -/
def P1519110435813042908.Spec : Prop :=
  ∀ n, P1519110435813042908.a n = A271359 n

end A271359

/-! ## A271359.P7779592243592998585

`5*A000045(2*n+1)+6*A000045(2*n)`
-/

namespace A271359.P7779592243592998585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n + 1) + 6 * A000045 (2 * n)

end

end A271359.P7779592243592998585

namespace A271359

/-- `5*A000045(2*n+1)+6*A000045(2*n)` -/
def P7779592243592998585.Spec : Prop :=
  ∀ n, P7779592243592998585.a n = A271359 n

end A271359

/-! ## A271359.P8750819361765172718

`A022136(2*n)`
-/

namespace A271359.P8750819361765172718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 (2 * n)

end

end A271359.P8750819361765172718

namespace A271359

/-- `A022136(2*n)` -/
def P8750819361765172718.Spec : Prop :=
  ∀ n, P8750819361765172718.a n = A271359 n

end A271359

/-! ## A271359.P17992013051997919543

`A192752(2*n)+4`
-/

namespace A271359.P17992013051997919543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192752 (2 * n) + 4

end

end A271359.P17992013051997919543

namespace A271359

/-- `A192752(2*n)+4` -/
def P17992013051997919543.Spec : Prop :=
  ∀ n, P17992013051997919543.a n = A271359 n

end A271359

/-! ## A271359.P15176314764050717139

`A271357(n)+A025169(n)`
-/

namespace A271359.P15176314764050717139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271357 n + A025169 n

end

end A271359.P15176314764050717139

namespace A271359

/-- `A271357(n)+A025169(n)` -/
def P15176314764050717139.Spec : Prop :=
  ∀ n, P15176314764050717139.a n = A271359 n

end A271359

/-! ## A271359.P8476226428341080840

`A100545(n)-A005248(n)`
-/

namespace A271359.P8476226428341080840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100545 n - A005248 n

end

end A271359.P8476226428341080840

namespace A271359

/-- `A100545(n)-A005248(n)` -/
def P8476226428341080840.Spec : Prop :=
  ∀ n, P8476226428341080840.a n = A271359 n

end A271359

/-! ## A271359.P13568649977270362340

`A054888(n+1)+A001906(n)`
-/

namespace A271359.P13568649977270362340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 (n + 1) + A001906 n

end

end A271359.P13568649977270362340

namespace A271359

/-- `A054888(n+1)+A001906(n)` -/
def P13568649977270362340.Spec : Prop :=
  ∀ n, P13568649977270362340.a n = A271359 n

end A271359

/-! ## A271359.P3285010878953941479

`A054486(n)+A002878(n+1)`
-/

namespace A271359.P3285010878953941479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + A002878 (n + 1)

end

end A271359.P3285010878953941479

namespace A271359

/-- `A054486(n)+A002878(n+1)` -/
def P3285010878953941479.Spec : Prop :=
  ∀ n, P3285010878953941479.a n = A271359 n

end A271359

/-! ## A271359.P8212693510303744814

`A271358(n)+A001906(n+1)`
-/

namespace A271359.P8212693510303744814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271358 n + A001906 (n + 1)

end

end A271359.P8212693510303744814

namespace A271359

/-- `A271358(n)+A001906(n+1)` -/
def P8212693510303744814.Spec : Prop :=
  ∀ n, P8212693510303744814.a n = A271359 n

end A271359

/-! ## A271359.P2894066631419275863

`A271358(n)+A088305(n+1)`
-/

namespace A271359.P2894066631419275863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271358 n + A088305 (n + 1)

end

end A271359.P2894066631419275863

namespace A271359

/-- `A271358(n)+A088305(n+1)` -/
def P2894066631419275863.Spec : Prop :=
  ∀ n, P2894066631419275863.a n = A271359 n

end A271359

/-! ## A271359.P6280408298829552789

`A054492(n+1)-A001519(n)`
-/

namespace A271359.P6280408298829552789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 (n + 1) - A001519 n

end

end A271359.P6280408298829552789

namespace A271359

/-- `A054492(n+1)-A001519(n)` -/
def P6280408298829552789.Spec : Prop :=
  ∀ n, P6280408298829552789.a n = A271359 n

end A271359

/-! ## A271359.P14958993519083648373

`A201157(n+2)+A001906(n)`
-/

namespace A271359.P14958993519083648373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 2) + A001906 n

end

end A271359.P14958993519083648373

namespace A271359

/-- `A201157(n+2)+A001906(n)` -/
def P14958993519083648373.Spec : Prop :=
  ∀ n, P14958993519083648373.a n = A271359 n

end A271359

/-! ## A271359.P18186660311136844346

`A002878(n)+2*A025169(n)`
-/

namespace A271359.P18186660311136844346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + 2 * A025169 n

end

end A271359.P18186660311136844346

namespace A271359

/-- `A002878(n)+2*A025169(n)` -/
def P18186660311136844346.Spec : Prop :=
  ∀ n, P18186660311136844346.a n = A271359 n

end A271359

/-! ## A271359.P13219837108835035574

`A022137(2*n)-A001906(n)`
-/

namespace A271359.P13219837108835035574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 (2 * n) - A001906 n

end

end A271359.P13219837108835035574

namespace A271359

/-- `A022137(2*n)-A001906(n)` -/
def P13219837108835035574.Spec : Prop :=
  ∀ n, P13219837108835035574.a n = A271359 n

end A271359

/-! ## A271359.P5995899073482202246

`A100545(n)-A000032(2*n)`
-/

namespace A271359.P5995899073482202246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100545 n - A000032 (2 * n)

end

end A271359.P5995899073482202246

namespace A271359

/-- `A100545(n)-A000032(2*n)` -/
def P5995899073482202246.Spec : Prop :=
  ∀ n, P5995899073482202246.a n = A271359 n

end A271359

/-! ## A271359.P11775872213303715009

`A167375(n+1)+A001519(n+2)`
-/

namespace A271359.P11775872213303715009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167375 (n + 1) + A001519 (n + 2)

end

end A271359.P11775872213303715009

namespace A271359

/-- `A167375(n+1)+A001519(n+2)` -/
def P11775872213303715009.Spec : Prop :=
  ∀ n, P11775872213303715009.a n = A271359 n

end A271359

/-! ## A271359.P1745698471158206667

`A002878(n+1)+A000285(2*n)`
-/

namespace A271359.P1745698471158206667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) + A000285 (2 * n)

end

end A271359.P1745698471158206667

namespace A271359

/-- `A002878(n+1)+A000285(2*n)` -/
def P1745698471158206667.Spec : Prop :=
  ∀ n, P1745698471158206667.a n = A271359 n

end A271359

/-!
# A271362: Number T(n,k) of series-reduced free trees with n nodes of which exactly k>=3 are leaves, k+1 <= n <= 2k-2.

The programs for A271362, there is no canonical definition to state claims against.
-/

/-! ## A271362.P3334879945458782874

`A303825(A116017(n+2))`
-/

namespace A271362.P3334879945458782874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A116017 (n + 2)).toNat

end

end A271362.P3334879945458782874

/-! ## A271362.P17063850094426338222

`A001221(A179807(n+1)+2)`
-/

namespace A271362.P17063850094426338222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A179807 (n + 1) + 2).toNat

end

end A271362.P17063850094426338222

/-! ## A271362.P11631041207115465942

`A336312(A035041(n)+A032742(n+1))`
-/

namespace A271362.P11631041207115465942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A035041 n + A032742 (n + 1)).toNat

end

end A271362.P11631041207115465942

/-! ## A271362.P17415634862238440434

`gcd(A180140(n), A344117(A123231(n+1)))`
-/

namespace A271362.P17415634862238440434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180140 n) (A344117 (A123231 (n + 1)).toNat)

end

end A271362.P17415634862238440434

/-! ## A271362.P4297439415228907727

`A193773(A282488(n)%A263296(2*n+5))`
-/

namespace A271362.P4297439415228907727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (Int.tmod (A282488 n) (A263296 (2 * n + 5))).toNat

end

end A271362.P4297439415228907727

/-!
# A271364: Number of novel integer partitions whose parts sum to 2n.

The programs for A271364, there is no canonical definition to state claims against.
-/

/-! ## A271364.P8251038779351179404

`A005041(A007460(n)-A038125(n))`
-/

namespace A271364.P8251038779351179404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A007460 n - A038125 n).toNat

end

end A271364.P8251038779351179404

/-! ## A271364.P11620807702172712853

`A005041(A007460(n))-A343609(n)`
-/

namespace A271364.P11620807702172712853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A007460 n).toNat - A343609 n

end

end A271364.P11620807702172712853

/-! ## A271364.P16853530464205240203

`A262689(A265352(n)+A121156(n+9))`
-/

namespace A271364.P16853530464205240203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A265352 n + A121156 (n + 9)).toNat

end

end A271364.P16853530464205240203

/-! ## A271364.P3574473644410122114

`A082447(A025579(n+1))-A251140(n+1)`
-/

namespace A271364.P3574473644410122114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A025579 (n + 1)).toNat - A251140 (n + 1)

end

end A271364.P3574473644410122114

/-! ## A271364.P6850816489485775104

`A182636(A026702(n))`
-/

namespace A271364.P6850816489485775104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182636 (A026702 n).toNat

end

end A271364.P6850816489485775104

/-!
# A271367: Primes congruent to 11, 13, 17 or 19 (mod 30).

The programs for A271367, the canonical program `A271367.P3663241717021435183` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271367 has offset 1).

The definition of A271367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271367.P6228263350798804848

`∪[A132238(n+1), A132239(n+1)]`
-/

namespace A271367.P6228263350798804848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271367.P6228263350798804848

namespace A271367

/-- `∪[A132238(n+1), A132239(n+1)]` -/
def P6228263350798804848.Spec : Prop :=
  ∀ n, (P6228263350798804848.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P3663241717021435183

`∪[A140506(n+1), A140533(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271367

/-- `∪[A140506(n+1), A140533(n+1)]` -/
def P3663241717021435183.Spec : Prop :=
  ∀ n, (P3663241717021435183.a n : ℤ) = A271367 (n + 1)

theorem P3663241717021435183.correct : P3663241717021435183.Spec := by
  intro n
  simp only [A271367, Nat.add_sub_cancel]

end A271367

/-! ## A271367.P11528365171086834210

`p?[∑[A010163(n)]]`
-/

namespace A271367.P11528365171086834210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010163 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271367.P11528365171086834210

namespace A271367

/-- `p?[∑[A010163(n)]]` -/
def P11528365171086834210.Spec : Prop :=
  ∀ n, P11528365171086834210.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P7947160432358544313

`p?[∑[A010178(n)]]`
-/

namespace A271367.P7947160432358544313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271367.P7947160432358544313

namespace A271367

/-- `p?[∑[A010178(n)]]` -/
def P7947160432358544313.Spec : Prop :=
  ∀ n, P7947160432358544313.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P306876780859071232

`p?[A253262(n)+3*n]`
-/

namespace A271367.P306876780859071232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271367.P306876780859071232

namespace A271367

/-- `p?[A253262(n)+3*n]` -/
def P306876780859071232.Spec : Prop :=
  ∀ n, P306876780859071232.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P7411075462419467512

`p?[A293481(n+1)+n+6]`
-/

namespace A271367.P7411075462419467512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (n + 1) + (n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271367.P7411075462419467512

namespace A271367

/-- `p?[A293481(n+1)+n+6]` -/
def P7411075462419467512.Spec : Prop :=
  ∀ n, P7411075462419467512.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P11616966671199118635

`p?[A008851(n+1)+dr(3*n)]`
-/

namespace A271367.P11616966671199118635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) + (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271367.P11616966671199118635

namespace A271367

/-- `p?[A008851(n+1)+dr(3*n)]` -/
def P11616966671199118635.Spec : Prop :=
  ∀ n, P11616966671199118635.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P5434665290889921615

`p?[comp[8*n]+n+8]`
-/

namespace A271367.P5434665290889921615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A271367.P5434665290889921615

namespace A271367

/-- `p?[comp[8*n]+n+8]` -/
def P5434665290889921615.Spec : Prop :=
  ∀ n, (P5434665290889921615.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P15983346592689243613

`filter[A315369(n), A010051(#)]`
-/

namespace A271367.P15983346592689243613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A271367.P15983346592689243613

namespace A271367

/-- `filter[A315369(n), A010051(#)]` -/
def P15983346592689243613.Spec : Prop :=
  ∀ n, P15983346592689243613.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P17450017084338264699

`record[A006530(A315369(n+2))]`
-/

namespace A271367.P17450017084338264699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A315369 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271367.P17450017084338264699

namespace A271367

/-- `record[A006530(A315369(n+2))]` -/
def P17450017084338264699.Spec : Prop :=
  ∀ n, P17450017084338264699.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P17019162773896561524

`eq[A040658(n), A131516(n)]`
-/

namespace A271367.P17019162773896561524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P17019162773896561524

namespace A271367

/-- `eq[A040658(n), A131516(n)]` -/
def P17019162773896561524.Spec : Prop :=
  ∀ n, (P17019162773896561524.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P15336540591452220269

`eq[A040658(n), A217668(n)]`
-/

namespace A271367.P15336540591452220269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P15336540591452220269

namespace A271367

/-- `eq[A040658(n), A217668(n)]` -/
def P15336540591452220269.Spec : Prop :=
  ∀ n, (P15336540591452220269.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P6294895965648892906

`eq[A040658(n)+1, A217670(n)]`
-/

namespace A271367.P6294895965648892906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P6294895965648892906

namespace A271367

/-- `eq[A040658(n)+1, A217670(n)]` -/
def P6294895965648892906.Spec : Prop :=
  ∀ n, (P6294895965648892906.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P7865363561912562204

`eq[A341945(n+2)², A040658(n)]`
-/

namespace A271367.P7865363561912562204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P7865363561912562204

namespace A271367

/-- `eq[A341945(n+2)², A040658(n)]` -/
def P7865363561912562204.Spec : Prop :=
  ∀ n, (P7865363561912562204.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P12939714126253714780

`eq[2, A040658(n)*A341982(n+2)]`
-/

namespace A271367.P12939714126253714780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n * A341982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271367.P12939714126253714780

namespace A271367

/-- `eq[2, A040658(n)*A341982(n+2)]` -/
def P12939714126253714780.Spec : Prop :=
  ∀ n, (P12939714126253714780.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P4200986546927492881

`filter[A315369(n), A171387(#)]`
-/

namespace A271367.P4200986546927492881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A271367.P4200986546927492881

namespace A271367

/-- `filter[A315369(n), A171387(#)]` -/
def P4200986546927492881.Spec : Prop :=
  ∀ n, P4200986546927492881.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P2971476871233767033

`filter[A315369(n+1), A080339(#)]`
-/

namespace A271367.P2971476871233767033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A271367.P2971476871233767033

namespace A271367

/-- `filter[A315369(n+1), A080339(#)]` -/
def P2971476871233767033.Spec : Prop :=
  ∀ n, P2971476871233767033.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P5899181907050836374

`filter[A315369(n+1), A080545(#)]`
-/

namespace A271367.P5899181907050836374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A271367.P5899181907050836374

namespace A271367

/-- `filter[A315369(n+1), A080545(#)]` -/
def P5899181907050836374.Spec : Prop :=
  ∀ n, P5899181907050836374.a n = A271367 (n + 1)

end A271367

/-! ## A271367.P9643200887582413380

`eq[A040623(2*n), A217670(n)]`
-/

namespace A271367.P9643200887582413380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040623 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P9643200887582413380

namespace A271367

/-- `eq[A040623(2*n), A217670(n)]` -/
def P9643200887582413380.Spec : Prop :=
  ∀ n, (P9643200887582413380.a n : ℤ) = A271367 (n + 1)

end A271367

/-! ## A271367.P13365294073365093736

`eq[A040658(n), A260180(n)]`
-/

namespace A271367.P13365294073365093736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271367.P13365294073365093736

namespace A271367

/-- `eq[A040658(n), A260180(n)]` -/
def P13365294073365093736.Spec : Prop :=
  ∀ n, (P13365294073365093736.a n : ℤ) = A271367 (n + 1)

end A271367

/-!
# A271368: Number of ways to write n as the sum of distinct super-primes (A006450).

The programs for A271368, there is no canonical definition to state claims against.
-/

/-! ## A271368.P1967670201304114470

`A266300(or(∑[n+3], A122060(n+1)))`
-/

namespace A271368.P1967670201304114470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A122060 (n + 1))).toNat

end

end A271368.P1967670201304114470

/-! ## A271368.P12321107674430740671

`A299196(gcd(7, n)+n)^A350563(2*n+1)`
-/

namespace A271368.P12321107674430740671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299196 (Nat.gcd 7 n + n) : ℚ) ^ (A350563 (2 * n + 1) : ℤ)

end

end A271368.P12321107674430740671

/-! ## A271368.P2669020504806496112

`A359160(A014580(3*n+4)*A160406(n)+3)`
-/

namespace A271368.P2669020504806496112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (A014580 (3 * n + 4) * A160406 n + 3).toNat

end

end A271368.P2669020504806496112

/-! ## A271368.P4478856277648636907

`and(A053392(3*n+4), A249351(A077471(n+1)))`
-/

namespace A271368.P4478856277648636907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053392 (3 * n + 4)) (A249351 (A077471 (n + 1)).toNat)

end

end A271368.P4478856277648636907

/-! ## A271368.P9861778295402125361

`A000035(A007953(3*n+4)%A276467(2*n+1))`
-/

namespace A271368.P9861778295402125361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A007953 (3 * n + 4)) (A276467 (2 * n + 1))).toNat

end

end A271368.P9861778295402125361

/-!
# A271370: Total number of inversions in all partitions of n.

The programs for A271370, there is no canonical definition to state claims against.
-/

/-! ## A271370.P11275186198237941400

`(A188814(n)+A182984(n))/2`
-/

namespace A271370.P11275186198237941400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188814 n + A182984 n : ℚ) / 2

end

end A271370.P11275186198237941400

/-! ## A271370.P632485905600997055

`(A188814(n)+A182984(n))*2^A008683(A006489(n+1))`
-/

namespace A271370.P632485905600997055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188814 n + A182984 n : ℚ) * (2 : ℚ) ^ (A008683 (A006489 (n + 1)).toNat : ℤ)

end

end A271370.P632485905600997055

/-! ## A271370.P6012019930942805311

`A182984(n)+A014682(A188814(n)-A182984(n))`
-/

namespace A271370.P6012019930942805311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182984 n + A014682 (A188814 n - A182984 n).toNat

end

end A271370.P6012019930942805311

/-! ## A271370.P6560678301889230138

`A273943(A188814(n)-A182984(n))+A182984(n)`
-/

namespace A271370.P6560678301889230138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A188814 n - A182984 n).toNat + A182984 n

end

end A271370.P6560678301889230138

/-! ## A271370.P8559782197408555751

`A014682(A188814(n)+A182984(n))`
-/

namespace A271370.P8559782197408555751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A188814 n + A182984 n).toNat

end

end A271370.P8559782197408555751

/-!
# A271371: Total number of inversions in all partitions of n into distinct parts.

The programs for A271371, there is no canonical definition to state claims against.
-/

/-! ## A271371.P15912295922014781115

`A342343(n)-A046951(A011782(n))`
-/

namespace A271371.P15912295922014781115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342343 n - A046951 (A011782 n).toNat

end

end A271371.P15912295922014781115

/-! ## A271371.P8615814353707465722

`A342343(n)-A000120(A152046(n))`
-/

namespace A271371.P8615814353707465722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342343 n - A000120 (A152046 n).toNat

end

end A271371.P8615814353707465722

/-! ## A271371.P10577710725861840467

`A342343(n)-A046951(A003945(n))`
-/

namespace A271371.P10577710725861840467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342343 n - A046951 (A003945 n).toNat

end

end A271371.P10577710725861840467

/-!
# A271372: Total number of inversions in all compositions of n into distinct parts.

The programs for A271372, there is no canonical definition to state claims against.
-/

/-! ## A271372.P7784810058127773601

`A007150(A384891(n))`
-/

namespace A271372.P7784810058127773601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A384891 n).toNat

end

end A271372.P7784810058127773601

/-! ## A271372.P559212951923390425

`A089604(A171644(round(n²/12)))`
-/

namespace A271372.P559212951923390425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089604 (A171644 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat).toNat

end

end A271372.P559212951923390425

/-! ## A271372.P5459775455387941265

`A118759(A351638(n)-A032058(n))`
-/

namespace A271372.P5459775455387941265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A351638 n - A032058 n).toNat

end

end A271372.P5459775455387941265

/-! ## A271372.P11805536082351269575

`A004526(A384891(n)^A055642(n))`
-/

namespace A271372.P11805536082351269575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A384891 n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A271372.P11805536082351269575

/-! ## A271372.P3142979416918722152

`A004526(C(A384891(n), A055642(n)))`
-/

namespace A271372.P3142979416918722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose (A384891 n).toNat (A055642 n).toNat)

end

end A271372.P3142979416918722152

/-!
# A271374: Total number of polydivisible numbers in base n.

The programs for A271374, there is no canonical definition to state claims against.
-/

/-! ## A271374.P4848446289477035383

`A078584(n+1)*A271665(A028910(3*n+1))`
-/

namespace A271374.P4848446289477035383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) * A271665 (A028910 (3 * n + 1)).toNat

end

end A271374.P4848446289477035383

/-!
# A271377: Numbers k such that (28*10^k - 43)/3 is prime.

The programs for A271377, there is no canonical definition to state claims against.
-/

/-! ## A271377.P18381394859338374256

`A358993(C(n, 6))+n`
-/

namespace A271377.P18381394859338374256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358993 (Nat.choose n 6) + (n : ℤ)

end

end A271377.P18381394859338374256

/-! ## A271377.P7424500431705486988

`∑[A204065(C(n, 7)*720+1)]`
-/

namespace A271377.P7424500431705486988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204065 (Nat.choose n 7 * 720 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271377.P7424500431705486988

/-! ## A271377.P7221514057782410367

`∑[A329041(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=1`
-/

namespace A271377.P7221514057782410367
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329041 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271377.P7221514057782410367

/-! ## A271377.P9256997266690268471

`∑[A274881(A034332(n))]`
-/

namespace A271377.P9256997266690268471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274881 (A034332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271377.P9256997266690268471

/-!
# A271378: a(n) = 5^n mod 31.

The programs for A271378, the canonical program `A271378.P4119659165181953166` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271378 has offset 0).

The definition of A271378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%31` (program `A271378.P4119659165181953166`, by `A271378.P4119659165181953166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271378.P16741489989147088628

`5^(n%3)`
-/

namespace A271378.P16741489989147088628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 3)

end

end A271378.P16741489989147088628

namespace A271378

/-- `5^(n%3)` -/
def P16741489989147088628.Spec : Prop :=
  ∀ n, (P16741489989147088628.a n : ℤ) = A271378 n

end A271378

/-! ## A271378.P4119659165181953166

`(5^n)%31`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271378

/-- `(5^n)%31` -/
def P4119659165181953166.Spec : Prop :=
  ∀ n, (P4119659165181953166.a n : ℤ) = A271378 n

theorem P4119659165181953166.correct : P4119659165181953166.Spec := by
  intro n
  simp only [A271378]

end A271378

/-!
# A271379: a(n) = 5^n mod 101.

The programs for A271379, the canonical program `A271379.P15732245480378010374` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271379 has offset 0).

The definition of A271379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%101` (program `A271379.P15732245480378010374`, by `A271379.P15732245480378010374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271379.P15732245480378010374

`(5^n)%101`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271379

/-- `(5^n)%101` -/
def P15732245480378010374.Spec : Prop :=
  ∀ n, (P15732245480378010374.a n : ℤ) = A271379 n

theorem P15732245480378010374.correct : P15732245480378010374.Spec := by
  intro n
  simp only [A271379]

end A271379

/-!
# A271380: a(n) = 5^n mod 163.

The programs for A271380, the canonical program `A271380.P18308739866320792754` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271380 has offset 0).

The definition of A271380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%163` (program `A271380.P18308739866320792754`, by `A271380.P18308739866320792754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271380.P18308739866320792754

`(5^n)%163`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271380

/-- `(5^n)%163` -/
def P18308739866320792754.Spec : Prop :=
  ∀ n, (P18308739866320792754.a n : ℤ) = A271380 n

theorem P18308739866320792754.correct : P18308739866320792754.Spec := by
  intro n
  simp only [A271380]

end A271380

/-!
# A271381: Number of ordered ways to write n as u^2 + v^2 + x^3 + y^3, where u, v, x, y are nonnegative integers with 2 | u*v, u <= v and x <= y.

The programs for A271381, there is no canonical definition to state claims against.
-/

/-! ## A271381.P13023339639590910961

`A257993(lcm(A005708(n), A023538(n+1)))`
-/

namespace A271381.P13023339639590910961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (Int.lcm (A005708 n) (A023538 (n + 1)))

end

end A271381.P13023339639590910961

/-! ## A271381.P16478637475235980843

`A302031(A000124(n)*A100276(n))`
-/

namespace A271381.P16478637475235980843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (A000124 n * A100276 n).toNat

end

end A271381.P16478637475235980843

/-! ## A271381.P14779457768288366781

`A001221(A235122(n+1)+A153894(n))`
-/

namespace A271381.P14779457768288366781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235122 (n + 1) + A153894 n).toNat

end

end A271381.P14779457768288366781

/-! ## A271381.P17783089518302222235

`A001221(A336761(n)+A046201(n+4))`
-/

namespace A271381.P17783089518302222235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336761 n + A046201 (n + 4)).toNat

end

end A271381.P17783089518302222235

/-! ## A271381.P3708785422278446444

`A214018(A381677(n+1))`
-/

namespace A271381.P3708785422278446444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214018 (A381677 (n + 1)).toNat

end

end A271381.P3708785422278446444

/-!
# A271385: a(n) = Product_{k=0..floor((n - 1)/2)} (n - 2*k)^(n - 2*k).

The programs for A271385, the canonical program `A271385.P15017280133867276928` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271385 has offset 0).

The definition of A271385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271385.P15017280133867276928

`n^n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271385

/-- `n^n*a(n-2)` -/
def P15017280133867276928.Spec : Prop :=
  ∀ n, (P15017280133867276928.a n : ℤ) = A271385 n

theorem P15017280133867276928.correct : P15017280133867276928.Spec := by
  intro n
  simp only [A271385]

end A271385

/-! ## A271385.P17695957570378859565

`∏[n^n/a(n-1)]` with `a(0)=1`
-/

namespace A271385.P17695957570378859565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n ^ n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271385.P17695957570378859565

namespace A271385

/-- `∏[n^n/a(n-1)]` -/
def P17695957570378859565.Spec : Prop :=
  ∀ n, P17695957570378859565.a n = (A271385 n : ℚ)

end A271385

/-! ## A271385.P11486238773957882946

`a(n-2)/n^-n` with `a(0)=1, a(1)=1`
-/

namespace A271385.P11486238773957882946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A271385.P11486238773957882946

namespace A271385

/-- `a(n-2)/n^-n` -/
def P11486238773957882946.Spec : Prop :=
  ∀ n, P11486238773957882946.a n = (A271385 n : ℚ)

end A271385

/-! ## A271385.P746677865049056963

`a(n-2)*A000312(n)` with `a(0)=1, a(1)=1`
-/

namespace A271385.P746677865049056963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A000312 n

end

end A271385.P746677865049056963

namespace A271385

/-- `a(n-2)*A000312(n)` -/
def P746677865049056963.Spec : Prop :=
  ∀ n, P746677865049056963.a n = A271385 n

end A271385

/-! ## A271385.P11679121473434036657

`a(n-2)*A094054(n²)` with `a(0)=1, a(1)=1`
-/

namespace A271385.P11679121473434036657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A094054 (n ^ 2)

end

end A271385.P11679121473434036657

namespace A271385

/-- `a(n-2)*A094054(n²)` -/
def P11679121473434036657.Spec : Prop :=
  ∀ n, P11679121473434036657.a n = A271385 n

end A271385

/-!
# A271386: Discriminants of the polynomials T_n(x) = Product_{k=0..n} (x - k*(k + 1)/2).

The programs for A271386, there is no canonical definition to state claims against.
-/

/-! ## A271386.P9659198657102559716

`∏[((2*n)!/2^n)²]`
-/

namespace A271386.P9659198657102559716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271386.P9659198657102559716

/-! ## A271386.P16072233421005249940

`∏[∏[C(2*n, 2%(n+1))]²]`
-/

namespace A271386.P16072233421005249940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (2 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271386.P16072233421005249940

/-! ## A271386.P5493382707370617443

`∏[-(n!*∏[2*n-1])]²`
-/

namespace A271386.P5493382707370617443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A271386.P5493382707370617443

/-! ## A271386.P3971601620372474984

`∏[C(2*n, 2)*a(n-1)]²` with `a(0)=1`
-/

namespace A271386.P3971601620372474984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (2 * n) 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A271386.P3971601620372474984

/-! ## A271386.P10327365885707429656

`∏[n*comp[2*(n+1)]*a(n-1)]²` with `a(0)=1`
-/

namespace A271386.P10327365885707429656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A271386.P10327365885707429656

/-!
# A271387: Numerator of prime(n)#/n!, where prime(n)# is the prime factorial function.

The programs for A271387, the canonical program `A271387.P7354328824045121266` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271387 has offset 0).

The definition of A271387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271387.P7354328824045121266

`A002110(n)/A034386(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A271387

/-- `A002110(n)/A034386(n)` -/
def P7354328824045121266.Spec : Prop :=
  ∀ n, P7354328824045121266.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P10465309184363528308

`A002110(n)/A007947(A000142(n))`
-/

namespace A271387.P10465309184363528308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A007947 (A000142 n).toNat : ℚ)

end

end A271387.P10465309184363528308

namespace A271387

/-- `A002110(n)/A007947(A000142(n))` -/
def P10465309184363528308.Spec : Prop :=
  ∀ n, P10465309184363528308.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P4562287112115642327

`lcm(n, a(n-1))/n*A000040(n)` with `a(0)=1`
-/

namespace A271387.P4562287112115642327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ) * (A000040 n : ℚ)

end

end A271387.P4562287112115642327

namespace A271387

/-- `lcm(n, a(n-1))/n*A000040(n)` -/
def P4562287112115642327.Spec : Prop :=
  ∀ n, P4562287112115642327.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P1030707896224389321

`A301600(n+1)/A000040(n+1)`
-/

namespace A271387.P1030707896224389321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301600 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A271387.P1030707896224389321

namespace A271387

/-- `A301600(n+1)/A000040(n+1)` -/
def P1030707896224389321.Spec : Prop :=
  ∀ n, P1030707896224389321.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P13495603020627817330

`A096334(∑[n])/A034386(n)`
-/

namespace A271387.P13495603020627817330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096334 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A034386 n : ℚ)

end

end A271387.P13495603020627817330

namespace A271387

/-- `A096334(∑[n])/A034386(n)` -/
def P13495603020627817330.Spec : Prop :=
  ∀ n, P13495603020627817330.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P2418258408267387931

`A121281(∑[n])/A034386(n)`
-/

namespace A271387.P2418258408267387931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121281 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A034386 n : ℚ)

end

end A271387.P2418258408267387931

namespace A271387

/-- `A121281(∑[n])/A034386(n)` -/
def P2418258408267387931.Spec : Prop :=
  ∀ n, P2418258408267387931.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P16956224691553535967

`A246868(∑[n])/A034386(n)`
-/

namespace A271387.P16956224691553535967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246868 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A034386 n : ℚ)

end

end A271387.P16956224691553535967

namespace A271387

/-- `A246868(∑[n])/A034386(n)` -/
def P16956224691553535967.Spec : Prop :=
  ∀ n, P16956224691553535967.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P7448382340756425042

`A002110(n)/A300951(2*n)`
-/

namespace A271387.P7448382340756425042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A300951 (2 * n) : ℚ)

end

end A271387.P7448382340756425042

namespace A271387

/-- `A002110(n)/A300951(2*n)` -/
def P7448382340756425042.Spec : Prop :=
  ∀ n, P7448382340756425042.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P3414055596861300810

`record[A108951(n+1)]/A034386(n)`
-/

namespace A271387.P3414055596861300810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A034386 n : ℚ)

end

end A271387.P3414055596861300810

namespace A271387

/-- `record[A108951(n+1)]/A034386(n)` -/
def P3414055596861300810.Spec : Prop :=
  ∀ n, P3414055596861300810.a n = (A271387 n : ℚ)

end A271387

/-! ## A271387.P6153772653181233885

`∏[record[A006530(n+1)]]/A034386(n)`
-/

namespace A271387.P6153772653181233885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A034386 n : ℚ)

end

end A271387.P6153772653181233885

namespace A271387

/-- `∏[record[A006530(n+1)]]/A034386(n)` -/
def P6153772653181233885.Spec : Prop :=
  ∀ n, P6153772653181233885.a n = (A271387 n : ℚ)

end A271387

/-!
# A271388: a(n) = 4*a(n-1) + a(n-2) - n for n > 1, with a(0) = 0, a(1) = 1.

The programs for A271388, the canonical program `A271388.P9981150990395830953` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271388 has offset 0).

The definition of A271388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)-n` (program `A271388.P9981150990395830953`, by `A271388.P9981150990395830953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271388.P3571893662447940292

`ogf((x-4x^2+2x^3)/(1-6x+8x^2-2x^3-x^4))`
-/

namespace A271388.P3571893662447940292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4, 2] [1, -6, 8, -2, -1] n

end

end A271388.P3571893662447940292

namespace A271388

/-- `ogf((x-4x^2+2x^3)/(1-6x+8x^2-2x^3-x^4))` -/
def P3571893662447940292.Spec : Prop :=
  ∀ n, P3571893662447940292.a n = A271388 n

end A271388

/-! ## A271388.P9981150990395830953

`4*a(n-1)+a(n-2)-n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271388

/-- `4*a(n-1)+a(n-2)-n` -/
def P9981150990395830953.Spec : Prop :=
  ∀ n, P9981150990395830953.a n = A271388 n

theorem P9981150990395830953.correct : P9981150990395830953.Spec := by
  intro n
  simp only [A271388]

end A271388

/-! ## A271388.P10501082546113805406

`4*a(n-1)-(n-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A271388.P10501082546113805406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) - ((n : ℤ) - a (n - 2))

end

end A271388.P10501082546113805406

namespace A271388

/-- `4*a(n-1)-(n-a(n-2))` -/
def P10501082546113805406.Spec : Prop :=
  ∀ n, P10501082546113805406.a n = A271388 n

end A271388

/-! ## A271388.P4539351324749742903

`a(n-1)/(1/2)²+a(n-2)-n` with `a(0)=0, a(1)=1`
-/

namespace A271388.P4539351324749742903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + (a (n - 2) - (n : ℚ))

end

end A271388.P4539351324749742903

namespace A271388

/-- `a(n-1)/(1/2)²+a(n-2)-n` -/
def P4539351324749742903.Spec : Prop :=
  ∀ n, P4539351324749742903.a n = (A271388 n : ℚ)

end A271388

/-! ## A271388.P3558832839035599874

`a(n-1)/(1/2)²-(n-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A271388.P3558832839035599874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - ((n : ℚ) - a (n - 2))

end

end A271388.P3558832839035599874

namespace A271388

/-- `a(n-1)/(1/2)²-(n-a(n-2))` -/
def P3558832839035599874.Spec : Prop :=
  ∀ n, P3558832839035599874.a n = (A271388 n : ℚ)

end A271388

/-! ## A271388.P6405110650560661592

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)-n` with `a(0)=0, a(1)=1`
-/

namespace A271388.P6405110650560661592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 2) - (n : ℤ)))))

end

end A271388.P6405110650560661592

namespace A271388

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)-n` -/
def P6405110650560661592.Spec : Prop :=
  ∀ n, P6405110650560661592.a n = A271388 n

theorem P6405110650560661592.correct : P6405110650560661592.Spec := by
  intro n
  simp only [A271388, Nat.add_sub_cancel, A271388.P6405110650560661592.a, A271388.P9981150990395830953.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271388

/-!
# A271389: a(n) = 2*a(n-1) + a(n-2) + n^2 for n > 1, with a(0) = 0, a(1) = 1.

The programs for A271389, the canonical program `A271389.P595404456715352904` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271389 has offset 0).

The definition of A271389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+n²` (program `A271389.P595404456715352904`, by `A271389.P595404456715352904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271389.P474124304760403194

`ogf((x+x^2)/(1-5x+8x^2-4x^3-x^4+x^5))`
-/

namespace A271389.P474124304760403194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 8, -4, -1, 1] n

end

end A271389.P474124304760403194

namespace A271389

/-- `ogf((x+x^2)/(1-5x+8x^2-4x^3-x^4+x^5))` -/
def P474124304760403194.Spec : Prop :=
  ∀ n, P474124304760403194.a n = A271389 n

end A271389

/-! ## A271389.P595404456715352904

`2*a(n-1)+a(n-2)+n²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271389

/-- `2*a(n-1)+a(n-2)+n²` -/
def P595404456715352904.Spec : Prop :=
  ∀ n, (P595404456715352904.a n : ℤ) = A271389 n

theorem P595404456715352904.correct : P595404456715352904.Spec := by
  intro n
  simp only [A271389]

end A271389

/-! ## A271389.P1790430101897376257

`5*a(n-1)-8*a(n-2)+4*a(n-3)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=22, a(4)=66`
-/

namespace A271389.P1790430101897376257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 22, 66] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 4 * a (n - 3) + a (n - 4) - a (n - 5)

end

end A271389.P1790430101897376257

namespace A271389

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)+a(n-4)-a(n-5)` -/
def P1790430101897376257.Spec : Prop :=
  ∀ n, P1790430101897376257.a n = A271389 n

end A271389

/-! ## A271389.P16379324261518781202

`(A000129(n+3)-A002522(n+2))/2`
-/

namespace A271389.P16379324261518781202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 3) - A002522 (n + 2) : ℚ) / 2

end

end A271389.P16379324261518781202

namespace A271389

/-- `(A000129(n+3)-A002522(n+2))/2` -/
def P16379324261518781202.Spec : Prop :=
  ∀ n, P16379324261518781202.a n = (A271389 n : ℚ)

end A271389

/-! ## A271389.P10030248277716947393

`∑[∑[a(n-2)+2*(a(n-1)+1)]]` with `a(0)=0, a(1)=1`
-/

namespace A271389.P10030248277716947393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 2 * (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P10030248277716947393

namespace A271389

/-- `∑[∑[a(n-2)+2*(a(n-1)+1)]]` -/
def P10030248277716947393.Spec : Prop :=
  ∀ n, (P10030248277716947393.a n : ℤ) = A271389 n

end A271389

/-! ## A271389.P17282096679344595604

`a(n-2)+2*a(n-1)+n*n` with `a(0)=0, a(1)=1`
-/

namespace A271389.P17282096679344595604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (2 * a (n - 1) + n * n)

end

end A271389.P17282096679344595604

namespace A271389

/-- `a(n-2)+2*a(n-1)+n*n` -/
def P17282096679344595604.Spec : Prop :=
  ∀ n, (P17282096679344595604.a n : ℤ) = A271389 n

end A271389

/-! ## A271389.P15374056102366360864

`a(n-1)+a(n-1)+a(n-2)+n²` with `a(0)=0, a(1)=1`
-/

namespace A271389.P15374056102366360864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + n ^ 2))

end

end A271389.P15374056102366360864

namespace A271389

/-- `a(n-1)+a(n-1)+a(n-2)+n²` -/
def P15374056102366360864.Spec : Prop :=
  ∀ n, (P15374056102366360864.a n : ℤ) = A271389 n

theorem P15374056102366360864.correct : P15374056102366360864.Spec := by
  intro n
  simp only [A271389, Nat.add_sub_cancel, A271389.P15374056102366360864.a, A271389.P595404456715352904.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271389

/-! ## A271389.P13616948872780142042

`∑[∑[A052937(n)-2]]`
-/

namespace A271389.P13616948872780142042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P13616948872780142042

namespace A271389

/-- `∑[∑[A052937(n)-2]]` -/
def P13616948872780142042.Spec : Prop :=
  ∀ n, P13616948872780142042.a n = A271389 n

end A271389

/-! ## A271389.P1238284335481712046

`∑[A048739(n)-(n+1)]`
-/

namespace A271389.P1238284335481712046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P1238284335481712046

namespace A271389

/-- `∑[A048739(n)-(n+1)]` -/
def P1238284335481712046.Spec : Prop :=
  ∀ n, P1238284335481712046.a n = A271389 n

end A271389

/-! ## A271389.P16212283614687453341

`A048776(n)-∑[n+1]`
-/

namespace A271389.P16212283614687453341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271389.P16212283614687453341

namespace A271389

/-- `A048776(n)-∑[n+1]` -/
def P16212283614687453341.Spec : Prop :=
  ∀ n, P16212283614687453341.a n = A271389 n

end A271389

/-! ## A271389.P7841875949367434731

`∑[∑[abs(A077985(n))-1]]`
-/

namespace A271389.P7841875949367434731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P7841875949367434731

namespace A271389

/-- `∑[∑[abs(A077985(n))-1]]` -/
def P7841875949367434731.Spec : Prop :=
  ∀ n, P7841875949367434731.a n = A271389 n

end A271389

/-! ## A271389.P5255115537065583215

`∑[∑[A000129(n+1)-1]]`
-/

namespace A271389.P5255115537065583215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P5255115537065583215

namespace A271389

/-- `∑[∑[A000129(n+1)-1]]` -/
def P5255115537065583215.Spec : Prop :=
  ∀ n, P5255115537065583215.a n = A271389 n

end A271389

/-! ## A271389.P14041058828029997269

`∑[∑[A005409(n+1)]-1]`
-/

namespace A271389.P14041058828029997269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P14041058828029997269

namespace A271389

/-- `∑[∑[A005409(n+1)]-1]` -/
def P14041058828029997269.Spec : Prop :=
  ∀ n, P14041058828029997269.a n = A271389 n

end A271389

/-! ## A271389.P4409367561659229861

`∑[∑[A215928(n+1)-1]]`
-/

namespace A271389.P4409367561659229861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P4409367561659229861

namespace A271389

/-- `∑[∑[A215928(n+1)-1]]` -/
def P4409367561659229861.Spec : Prop :=
  ∀ n, P4409367561659229861.a n = A271389 n

end A271389

/-! ## A271389.P9564836974803906148

`∑[∑[A174191(n+1)-2]]`
-/

namespace A271389.P9564836974803906148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P9564836974803906148

namespace A271389

/-- `∑[∑[A174191(n+1)-2]]` -/
def P9564836974803906148.Spec : Prop :=
  ∀ n, P9564836974803906148.a n = A271389 n

end A271389

/-! ## A271389.P5901003194168569119

`∑[A024537(n+1)-(n+2)]`
-/

namespace A271389.P5901003194168569119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P5901003194168569119

namespace A271389

/-- `∑[A024537(n+1)-(n+2)]` -/
def P5901003194168569119.Spec : Prop :=
  ∀ n, P5901003194168569119.a n = A271389 n

end A271389

/-! ## A271389.P5610240666103126043

`∑[A171842(n+2)-(n+2)]`
-/

namespace A271389.P5610240666103126043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P5610240666103126043

namespace A271389

/-- `∑[A171842(n+2)-(n+2)]` -/
def P5610240666103126043.Spec : Prop :=
  ∀ n, P5610240666103126043.a n = A271389 n

end A271389

/-! ## A271389.P11608249044106970626

`∑[A181658(2*n)-(n+1)]`
-/

namespace A271389.P11608249044106970626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (2 * n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P11608249044106970626

namespace A271389

/-- `∑[A181658(2*n)-(n+1)]` -/
def P11608249044106970626.Spec : Prop :=
  ∀ n, P11608249044106970626.a n = A271389 n

end A271389

/-! ## A271389.P16127201421607944530

`∑[∑[abs(A176981(n+2))-1]]`
-/

namespace A271389.P16127201421607944530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P16127201421607944530

namespace A271389

/-- `∑[∑[abs(A176981(n+2))-1]]` -/
def P16127201421607944530.Spec : Prop :=
  ∀ n, P16127201421607944530.a n = A271389 n

end A271389

/-! ## A271389.P8193001747236541354

`∑[∑[A155046(2*(n+1))-1]]`
-/

namespace A271389.P8193001747236541354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * (n + 1)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271389.P8193001747236541354

namespace A271389

/-- `∑[∑[A155046(2*(n+1))-1]]` -/
def P8193001747236541354.Spec : Prop :=
  ∀ n, P8193001747236541354.a n = A271389 n

end A271389

/-!
# A271390: a(n) = (2*n + 1)^(2*floor((n-1)/2) + 1).

The programs for A271390, the canonical program `A271390.P15704451952243048050` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271390 has offset 0).

The definition of A271390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271390.P15704451952243048050

`(2*n+1)^(2*floor((n-1)/2)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271390

/-- `(2*n+1)^(2*floor((n-1)/2)+1)` -/
def P15704451952243048050.Spec : Prop :=
  ∀ n, P15704451952243048050.a n = (A271390 n : ℚ)

end A271390

/-! ## A271390.P1917701126913389715

`Δ[n²]^or(1, n-1)`
-/

namespace A271390.P1917701126913389715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)

end

end A271390.P1917701126913389715

namespace A271390

/-- `Δ[n²]^or(1, n-1)` -/
def P1917701126913389715.Spec : Prop :=
  ∀ n, P1917701126913389715.a n = (A271390 n : ℚ)

end A271390

/-! ## A271390.P9595353370723828734

`(2*n+1)^abs(or(1, -n))`
-/

namespace A271390.P9595353370723828734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (|Int.lor 1 (-(n : ℤ))| : ℤ)

end

end A271390.P9595353370723828734

namespace A271390

/-- `(2*n+1)^abs(or(1, -n))` -/
def P9595353370723828734.Spec : Prop :=
  ∀ n, P9595353370723828734.a n = (A271390 n : ℚ)

end A271390

/-! ## A271390.P5600138433310608403

`(2*n+1)^-or(1, -n)`
-/

namespace A271390.P5600138433310608403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (-Int.lor 1 (-(n : ℤ)) : ℤ)

end

end A271390.P5600138433310608403

namespace A271390

/-- `(2*n+1)^-or(1, -n)` -/
def P5600138433310608403.Spec : Prop :=
  ∀ n, P5600138433310608403.a n = (A271390 n : ℚ)

end A271390

/-! ## A271390.P1319213255683198739

`floor((2*n+1)^or(1, n-1))`
-/

namespace A271390.P1319213255683198739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌋

end

end A271390.P1319213255683198739

namespace A271390

/-- `floor((2*n+1)^or(1, n-1))` -/
def P1319213255683198739.Spec : Prop :=
  ∀ n, P1319213255683198739.a n = A271390 n

end A271390

/-! ## A271390.P9715997845636233105

`ceil((2*n+1)^or(1, n-1))`
-/

namespace A271390.P9715997845636233105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

end

end A271390.P9715997845636233105

namespace A271390

/-- `ceil((2*n+1)^or(1, n-1))` -/
def P9715997845636233105.Spec : Prop :=
  ∀ n, P9715997845636233105.a n = A271390 n

end A271390

/-! ## A271390.P10263050934170939541

`round((2*n+1)^or(1, n-1))`
-/

namespace A271390.P10263050934170939541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ))

end

end A271390.P10263050934170939541

namespace A271390

/-- `round((2*n+1)^or(1, n-1))` -/
def P10263050934170939541.Spec : Prop :=
  ∀ n, P10263050934170939541.a n = A271390 n

end A271390

/-! ## A271390.P4484418682497969521

`or(1, (2*n+1)^or(1, n-1))`
-/

namespace A271390.P4484418682497969521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)))

end

end A271390.P4484418682497969521

namespace A271390

/-- `or(1, (2*n+1)^or(1, n-1))` -/
def P4484418682497969521.Spec : Prop :=
  ∀ n, P4484418682497969521.a n = A271390 n

end A271390

/-! ## A271390.P12969034861995944262

`(2*n+1)^(n+1-gcd(2, n))`
-/

namespace A271390.P12969034861995944262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n + 1 : ℤ) - (Nat.gcd 2 n : ℤ) : ℤ)

end

end A271390.P12969034861995944262

namespace A271390

/-- `(2*n+1)^(n+1-gcd(2, n))` -/
def P12969034861995944262.Spec : Prop :=
  ∀ n, P12969034861995944262.a n = (A271390 n : ℚ)

end A271390

/-! ## A271390.P16390175758486435395

`(2*n+1)^(and(1, n)+n-1)`
-/

namespace A271390.P16390175758486435395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((Nat.land 1 n : ℤ) + ((n : ℤ) - 1) : ℤ)

end

end A271390.P16390175758486435395

namespace A271390

/-- `(2*n+1)^(and(1, n)+n-1)` -/
def P16390175758486435395.Spec : Prop :=
  ∀ n, P16390175758486435395.a n = (A271390 n : ℚ)

end A271390

/-!
# A271391: Expansion of (1 + x + 2*x^2 + 6*x^3 + x^4 + x^5)/(1 - x^2)^3.

The programs for A271391, the canonical program `A271391.P18140720001477612604` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271391 has offset 0).

The definition of A271391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+2x^2+6x^3+x^4+x^5)/(1-3x^2+3x^4-x^6))` (program `A271391.P18140720001477612604`, by `A271391.P18140720001477612604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271391.P18140720001477612604

`ogf((1+x+2x^2+6x^3+x^4+x^5)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271391

/-- `ogf((1+x+2x^2+6x^3+x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P18140720001477612604.Spec : Prop :=
  ∀ n, P18140720001477612604.a n = A271391 n

theorem P18140720001477612604.correct : P18140720001477612604.Spec := by
  intro n
  simp only [A271391]

end A271391

/-! ## A271391.P958455559369027145

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=9, a(4)=13, a(5)=25`
-/

namespace A271391.P958455559369027145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 9, 13, 25] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A271391.P958455559369027145

namespace A271391

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P958455559369027145.Spec : Prop :=
  ∀ n, P958455559369027145.a n = A271391 n

end A271391

/-! ## A271391.P561397596702229918

`or(1, n*A029579(n))`
-/

namespace A271391.P561397596702229918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A029579 n)

end

end A271391.P561397596702229918

namespace A271391

/-- `or(1, n*A029579(n))` -/
def P561397596702229918.Spec : Prop :=
  ∀ n, P561397596702229918.a n = A271391 n

end A271391

/-! ## A271391.P9570109774620472937

`A193356(n+1)+A129194(n)`
-/

namespace A271391.P9570109774620472937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + A129194 n

end

end A271391.P9570109774620472937

namespace A271391

/-- `A193356(n+1)+A129194(n)` -/
def P9570109774620472937.Spec : Prop :=
  ∀ n, P9570109774620472937.a n = A271391 n

end A271391

/-! ## A271391.P17214663289021862469

`A062317(n+1)-A367965(n)`
-/

namespace A271391.P17214663289021862469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (n + 1) - A367965 n

end

end A271391.P17214663289021862469

namespace A271391

/-- `A062317(n+1)-A367965(n)` -/
def P17214663289021862469.Spec : Prop :=
  ∀ n, P17214663289021862469.a n = A271391 n

end A271391

/-! ## A271391.P6409788255202942552

`A109613(n)+n*A029578(n)`
-/

namespace A271391.P6409788255202942552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (n : ℤ) * A029578 n

end

end A271391.P6409788255202942552

namespace A271391

/-- `A109613(n)+n*A029578(n)` -/
def P6409788255202942552.Spec : Prop :=
  ∀ n, P6409788255202942552.a n = A271391 n

end A271391

/-! ## A271391.P14151025011800779828

`A026741(n)²+A027656(n)²`
-/

namespace A271391.P14151025011800779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2 + A027656 n ^ 2

end

end A271391.P14151025011800779828

namespace A271391

/-- `A026741(n)²+A027656(n)²` -/
def P14151025011800779828.Spec : Prop :=
  ∀ n, P14151025011800779828.a n = A271391 n

end A271391

/-! ## A271391.P7764030333364010360

`A029579(n)²+A142150(n)²`
-/

namespace A271391.P7764030333364010360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n ^ 2 + A142150 n ^ 2

end

end A271391.P7764030333364010360

namespace A271391

/-- `A029579(n)²+A142150(n)²` -/
def P7764030333364010360.Spec : Prop :=
  ∀ n, P7764030333364010360.a n = A271391 n

end A271391

/-! ## A271391.P10798896991111599748

`A056594(n)²+n*A029579(n)`
-/

namespace A271391.P10798896991111599748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 + (n : ℤ) * A029579 n

end

end A271391.P10798896991111599748

namespace A271391

/-- `A056594(n)²+n*A029579(n)` -/
def P10798896991111599748.Spec : Prop :=
  ∀ n, P10798896991111599748.a n = A271391 n

end A271391

/-! ## A271391.P7658733635257696951

`A093178(n)²+n*A027656(n)`
-/

namespace A271391.P7658733635257696951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 + (n : ℤ) * A027656 n

end

end A271391.P7658733635257696951

namespace A271391

/-- `A093178(n)²+n*A027656(n)` -/
def P7658733635257696951.Spec : Prop :=
  ∀ n, P7658733635257696951.a n = A271391 n

end A271391

/-! ## A271391.P6788551297043166672

`A109613(n)²-n*A027656(n)`
-/

namespace A271391.P6788551297043166672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n ^ 2 - (n : ℤ) * A027656 n

end

end A271391.P6788551297043166672

namespace A271391

/-- `A109613(n)²-n*A027656(n)` -/
def P6788551297043166672.Spec : Prop :=
  ∀ n, P6788551297043166672.a n = A271391 n

end A271391

/-! ## A271391.P3002329930493088167

`A183207(n+1)-A240134(n+1)`
-/

namespace A271391.P3002329930493088167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) - A240134 (n + 1)

end

end A271391.P3002329930493088167

namespace A271391

/-- `A183207(n+1)-A240134(n+1)` -/
def P3002329930493088167.Spec : Prop :=
  ∀ n, P3002329930493088167.a n = A271391 n

end A271391

/-! ## A271391.P497503030350482011

`A193356(n+1)+n*A026741(n)`
-/

namespace A271391.P497503030350482011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + (n : ℤ) * A026741 n

end

end A271391.P497503030350482011

namespace A271391

/-- `A193356(n+1)+n*A026741(n)` -/
def P497503030350482011.Spec : Prop :=
  ∀ n, P497503030350482011.a n = A271391 n

end A271391

/-! ## A271391.P13426528867523441327

`A266725(A124625(n))+A266725(n)`
-/

namespace A271391.P13426528867523441327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 (A124625 n).toNat + A266725 n

end

end A271391.P13426528867523441327

namespace A271391

/-- `A266725(A124625(n))+A266725(n)` -/
def P13426528867523441327.Spec : Prop :=
  ∀ n, P13426528867523441327.a n = A271391 n

end A271391

/-! ## A271391.P3242323634173373892

`A109613(n)+A004524(A109613(n))*A109043(n)`
-/

namespace A271391.P3242323634173373892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A004524 (A109613 n).toNat * A109043 n

end

end A271391.P3242323634173373892

namespace A271391

/-- `A109613(n)+A004524(A109613(n))*A109043(n)` -/
def P3242323634173373892.Spec : Prop :=
  ∀ n, P3242323634173373892.a n = A271391 n

end A271391

/-! ## A271391.P2892061049389879852

`A147685(A043547(n+1))`
-/

namespace A271391.P2892061049389879852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A043547 (n + 1)).toNat

end

end A271391.P2892061049389879852

namespace A271391

/-- `A147685(A043547(n+1))` -/
def P2892061049389879852.Spec : Prop :=
  ∀ n, P2892061049389879852.a n = A271391 n

end A271391

/-! ## A271391.P9644212702778758104

`A129194(n+2)-A022998(A022998(n+1))`
-/

namespace A271391.P9644212702778758104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 2) - A022998 (A022998 (n + 1)).toNat

end

end A271391.P9644212702778758104

namespace A271391

/-- `A129194(n+2)-A022998(A022998(n+1))` -/
def P9644212702778758104.Spec : Prop :=
  ∀ n, P9644212702778758104.a n = A271391 n

end A271391

/-! ## A271391.P803259747832768351

`A000265((n+1)*xor(1, n)+1)`
-/

namespace A271391.P803259747832768351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) * Nat.xor 1 n + 1)

end

end A271391.P803259747832768351

namespace A271391

/-- `A000265((n+1)*xor(1, n)+1)` -/
def P803259747832768351.Spec : Prop :=
  ∀ n, P803259747832768351.a n = A271391 n

end A271391

/-! ## A271391.P15851632363855343471

`A000265((n+1)*A004442(n)+1)`
-/

namespace A271391.P15851632363855343471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) * A004442 n + 1).toNat

end

end A271391.P15851632363855343471

namespace A271391

/-- `A000265((n+1)*A004442(n)+1)` -/
def P15851632363855343471.Spec : Prop :=
  ∀ n, P15851632363855343471.a n = A271391 n

end A271391

/-! ## A271391.P3607724618991407120

`A000265(A103889(n+1)²+n²)`
-/

namespace A271391.P3607724618991407120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A103889 (n + 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A271391.P3607724618991407120

namespace A271391

/-- `A000265(A103889(n+1)²+n²)` -/
def P3607724618991407120.Spec : Prop :=
  ∀ n, P3607724618991407120.a n = A271391 n

end A271391

/-!
# A271392: Integers k such that 3*k!!! + 1 is prime where k!!! is A007661(k).

The programs for A271392, there is no canonical definition to state claims against.
-/

/-! ## A271392.P12379051857003409719

`A333627(A055879(n+1))+A000203(n+1)`
-/

namespace A271392.P12379051857003409719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A055879 (n + 1)).toNat + A000203 (n + 1)

end

end A271392.P12379051857003409719

/-!
# A271397: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A271397, there is no canonical definition to state claims against.
-/

/-! ## A271397.P9264060743486982104

`A271408(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271397.P9264060743486982104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271408 (n - 1) + a (n - 1)

end

end A271397.P9264060743486982104

/-! ## A271397.P17131949887371826534

`Δ[A271399(n)]-A271408(n)`
-/

namespace A271397.P17131949887371826534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271408 n

end

end A271397.P17131949887371826534

/-! ## A271397.P9891814314850961287

`A271399(n+1)-(A271408(n)+A271399(n))`
-/

namespace A271397.P9891814314850961287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271399 (n + 1) - (A271408 n + A271399 n)

end

end A271397.P9891814314850961287

/-! ## A271397.P10706272657469869826

`A020985(n)²-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P10706272657469869826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P10706272657469869826

/-! ## A271397.P345053496569745506

`A158388(n)²-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P345053496569745506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P345053496569745506

/-! ## A271397.P12255102193075239522

`A057427(n+1)-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P12255102193075239522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P12255102193075239522

/-! ## A271397.P8200984416851386294

`A000034(2*n)-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P8200984416851386294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P8200984416851386294

/-! ## A271397.P5109869681950828903

`A059841(2*n)-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P5109869681950828903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P5109869681950828903

/-! ## A271397.P12282022123224562671

`1-(A271408(n)-∑[A271408(n)])%A062938(n)`
-/

namespace A271397.P12282022123224562671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A062938 n)

end

end A271397.P12282022123224562671

/-! ## A271397.P12873513836277253609

`A008836(n+1)²-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P12873513836277253609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P12873513836277253609

/-! ## A271397.P15577501604488581111

`A000035(2*n+1)-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P15577501604488581111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P15577501604488581111

/-! ## A271397.P5772347220958621945

`A040001(2*n+3)-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P5772347220958621945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 3) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P5772347220958621945

/-! ## A271397.P1617954209251799384

`A133090(n+1)%2-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P1617954209251799384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133090 (n + 1)) 2 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P1617954209251799384

/-! ## A271397.P17273236337986881239

`(A017090(n)/4)%2-(A271408(n)-∑[A271408(n)])`
-/

namespace A271397.P17273236337986881239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A017090 n : ℚ) / 4)) 2 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271397.P17273236337986881239

/-! ## A271397.P7545471951876823779

`A005408(n)-n-(A271408(n)-∑[A271408(n)]+n)`
-/

namespace A271397.P7545471951876823779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A271397.P7545471951876823779

/-! ## A271397.P13162690975836321737

`(1-(A271408(n)-∑[A271408(n)]))%A008706(n+1)²`
-/

namespace A271397.P13162690975836321737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)) (A008706 (n + 1) ^ 2)

end

end A271397.P13162690975836321737

/-! ## A271397.P9697643703433061291

`A000027(1-(A271408(n)-∑[A271408(n)]))`
-/

namespace A271397.P9697643703433061291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - (A271408 n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A271397.P9697643703433061291

/-!
# A271398: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A271398, there is no canonical definition to state claims against.
-/

/-! ## A271398.P18419627762975732222

`A271397(2^n-1)`
-/

namespace A271398.P18419627762975732222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (2 ^ n - 1)

end

end A271398.P18419627762975732222

/-! ## A271398.P12427019210377570798

`record[A271397(A173787(n))]`
-/

namespace A271398.P12427019210377570798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271398.P12427019210377570798

/-! ## A271398.P14002830833738931648

`record[A271397(A227351(n))]`
-/

namespace A271398.P14002830833738931648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271398.P14002830833738931648

/-! ## A271398.P12960198015821426099

`record[A271397(A232751(n))]`
-/

namespace A271398.P12960198015821426099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271398.P12960198015821426099

/-! ## A271398.P11980759679921131234

`record[A271397(A243071(n+1))]`
-/

namespace A271398.P11980759679921131234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271398.P11980759679921131234

/-!
# A271399: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A271399, there is no canonical definition to state claims against.
-/

/-! ## A271399.P13594599080502442354

`∑[A271397(n)]`
-/

namespace A271399.P13594599080502442354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271399.P13594599080502442354

/-! ## A271399.P12421242459703193832

`a(n-1)+A057427(n)*A271397(n)` with `a(0)=1`
-/

namespace A271399.P12421242459703193832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A271397 n

end

end A271399.P12421242459703193832

/-! ## A271399.P6183297663767089063

`a(n-1)+A271397(n)%A075730(n+1)` with `a(0)=1`
-/

namespace A271399.P6183297663767089063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271397 n) (A075730 (n + 1))

end

end A271399.P6183297663767089063

/-! ## A271399.P7927784367351325777

`∑[∑[A271408(n)]+1-A271408(n)]`
-/

namespace A271399.P7927784367351325777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271399.P7927784367351325777

/-! ## A271399.P2932954230062859086

`A271397(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A271399.P2932954230062859086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271397 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A271399.P2932954230062859086

