import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A237000: Number of (n+1) X (1+1) 0..3 arrays with the upper median plus the lower median of every 2 X 2 subblock equal.

The programs for A237000, there is no canonical definition to state claims against.
-/

/-! ## A237000.P17681995601665484766

`A237007(∑[n]+1)`
-/

namespace A237000.P17681995601665484766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237000.P17681995601665484766

/-! ## A237000.P12450381641572485939

`lcm(2, A237007(A000124(n)))`
-/

namespace A237000.P12450381641572485939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237007 (A000124 n).toNat)

end

end A237000.P12450381641572485939

/-! ## A237000.P614659370128475260

`record[root(A237007(n+1), A071944(n))]`
-/

namespace A237000.P614659370128475260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237007 (n + 1) : ℝ) ^ (1 / (A071944 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237000.P614659370128475260

/-! ## A237000.P13355648242308851030

`record[gcd(A014473(n), A237007(n+1))]`
-/

namespace A237000.P13355648242308851030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A237007 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237000.P13355648242308851030

/-! ## A237000.P2089095033768132044

`A237007(A000124(n))%A229409(n+1)`
-/

namespace A237000.P2089095033768132044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237007 (A000124 n).toNat) (A229409 (n + 1))

end

end A237000.P2089095033768132044

/-!
# A237001: Number of (n+1)X(2+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A237001, there is no canonical definition to state claims against.
-/

/-! ## A237001.P9811482528441387915

`A237007(∑[n+1]+2)`
-/

namespace A237001.P9811482528441387915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237001.P9811482528441387915

/-! ## A237001.P7747212999725301388

`lcm(2, A237007(A000096(n)+3))`
-/

namespace A237001.P7747212999725301388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237007 (A000096 n + 3).toNat)

end

end A237001.P7747212999725301388

/-! ## A237001.P15973885481524935569

`record[A237007(Δ[A003453(n+5)])]`
-/

namespace A237001.P15973885481524935569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237001.P15973885481524935569

/-! ## A237001.P10536441814192472420

`record[A237007(A000096(val(n+1, 2)+1))]`
-/

namespace A237001.P10536441814192472420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237001.P10536441814192472420

/-! ## A237001.P2116543343528092902

`A237007(A000096(n+1))+A000007(n+1)`
-/

namespace A237001.P2116543343528092902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A237001.P2116543343528092902

/-!
# A237002: Number of (n+1)X(3+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A237002, there is no canonical definition to state claims against.
-/

/-! ## A237002.P10809518884949638115

`A237007(∑[n+2]+4)`
-/

namespace A237002.P10809518884949638115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237002.P10809518884949638115

/-! ## A237002.P6558682152273133815

`lcm(2, A237007(A167614(n+1)))`
-/

namespace A237002.P6558682152273133815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237007 (A167614 (n + 1)).toNat)

end

end A237002.P6558682152273133815

/-! ## A237002.P15153325933754519457

`record[root(A237007(n+4), A038622(n))]`
-/

namespace A237002.P15153325933754519457
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237007 (n + 4) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237002.P15153325933754519457

/-! ## A237002.P17263675915629697322

`A237007(A167614(n+1))%A237003(n+1)`
-/

namespace A237002.P17263675915629697322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237007 (A167614 (n + 1)).toNat) (A237003 (n + 1))

end

end A237002.P17263675915629697322

/-! ## A237002.P8267269340579477437

`A237007(A167614(n+1))+A000038(3*(n+1))`
-/

namespace A237002.P8267269340579477437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A167614 (n + 1)).toNat + A000038 (3 * (n + 1))

end

end A237002.P8267269340579477437

/-!
# A237003: Number of (n+1)X(4+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A237003, there is no canonical definition to state claims against.
-/

/-! ## A237003.P13017460853635445659

`A237007(A374004(n+1))`
-/

namespace A237003.P13017460853635445659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A374004 (n + 1)).toNat

end

end A237003.P13017460853635445659

/-! ## A237003.P7196384874152065332

`A237007(A052905(n)+9)`
-/

namespace A237003.P7196384874152065332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A052905 n + 9).toNat

end

end A237003.P7196384874152065332

/-! ## A237003.P3808369925859911614

`A237007(A055999(n)+10)`
-/

namespace A237003.P3808369925859911614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A055999 n + 10).toNat

end

end A237003.P3808369925859911614

/-! ## A237003.P15502565578168799566

`A237007(A167614(n+2)+1)`
-/

namespace A237003.P15502565578168799566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A167614 (n + 2) + 1).toNat

end

end A237003.P15502565578168799566

/-! ## A237003.P6993399654171121615

`A237007(A141214(n+1))`
-/

namespace A237003.P6993399654171121615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A141214 (n + 1)).toNat

end

end A237003.P6993399654171121615

/-!
# A237004: Number of (n+1)X(5+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A237004, there is no canonical definition to state claims against.
-/

/-! ## A237004.P4642871500442532175

`A237007(A374005(n+1))`
-/

namespace A237004.P4642871500442532175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A374005 (n + 1)).toNat

end

end A237004.P4642871500442532175

/-! ## A237004.P5361356269525170321

`A237007(eq[8, A057728(n+1)])`
-/

namespace A237004.P5361356269525170321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237004.P5361356269525170321

/-!
# A237005: Number of (n+1)X(6+1) 0..3 arrays with the upper median plus the lower median of every 2X2 subblock equal.

The programs for A237005, there is no canonical definition to state claims against.
-/

/-! ## A237005.P12311648570309159026

`A237007(A374007(n+1))`
-/

namespace A237005.P12311648570309159026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (A374007 (n + 1)).toNat

end

end A237005.P12311648570309159026

/-! ## A237005.P17456428045200210484

`A237007(Δ[Δ[A006504(n+1)]])`
-/

namespace A237005.P17456428045200210484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237007 (f1 (n + 1) - f1 n).toNat

end

end A237005.P17456428045200210484

/-!
# A237008: Number of (n+1)X(1+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237008, there is no canonical definition to state claims against.
-/

/-! ## A237008.P6823668002218566997

`8*A184021(n+1)`
-/

namespace A237008.P6823668002218566997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184021 (n + 1)

end

end A237008.P6823668002218566997

/-! ## A237008.P14154658625203703865

`8*A184029(∑[n]+1)`
-/

namespace A237008.P14154658625203703865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237008.P14154658625203703865

/-! ## A237008.P7096214793516049742

`record[8*A184029(n+1)]`
-/

namespace A237008.P7096214793516049742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237008.P7096214793516049742

/-! ## A237008.P9243947941708242196

`8*lcm(2, A184029(-xor(-1, ∑[n])))`
-/

namespace A237008.P9243947941708242196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Int.lcm 2 (A184029 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A237008.P9243947941708242196

/-! ## A237008.P4657800061784032640

`8*record[A184029(A344180(n))]`
-/

namespace A237008.P4657800061784032640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237008.P4657800061784032640

/-!
# A237009: Number of (n+1)X(2+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237009, there is no canonical definition to state claims against.
-/

/-! ## A237009.P10276490855082412402

`8*A184022(n+1)`
-/

namespace A237009.P10276490855082412402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184022 (n + 1)

end

end A237009.P10276490855082412402

/-! ## A237009.P12845648061808657358

`8*A184029(∑[n+1]+2)`
-/

namespace A237009.P12845648061808657358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237009.P12845648061808657358

/-! ## A237009.P4435633918192178761

`8*record[root(A184029(n+2), A066657(n+1))]`
-/

namespace A237009.P4435633918192178761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184029 (n + 2) : ℝ) ^ (1 / (A066657 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237009.P4435633918192178761

/-! ## A237009.P13709542931273995772

`8*record[root(A184029(n+2), A200370(n+1))]`
-/

namespace A237009.P13709542931273995772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184029 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237009.P13709542931273995772

/-! ## A237009.P13381589735557370879

`A237015(∑[n+1]+2)`
-/

namespace A237009.P13381589735557370879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237009.P13381589735557370879

/-!
# A237010: Number of (n+1)X(3+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237010, there is no canonical definition to state claims against.
-/

/-! ## A237010.P1311476014025980059

`8*A184023(n+1)`
-/

namespace A237010.P1311476014025980059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184023 (n + 1)

end

end A237010.P1311476014025980059

/-! ## A237010.P4470805564102696242

`8*A184029(∑[n+2]+4)`
-/

namespace A237010.P4470805564102696242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237010.P4470805564102696242

/-! ## A237010.P11521623436542261674

`8*(A184029(A167614(n+1))+A011732(n))`
-/

namespace A237010.P11521623436542261674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A184029 (A167614 (n + 1)).toNat + A011732 n)

end

end A237010.P11521623436542261674

/-! ## A237010.P2372735099808675826

`8*(A184029(A167614(n+1))+A025466(n))`
-/

namespace A237010.P2372735099808675826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A184029 (A167614 (n + 1)).toNat + A025466 n)

end

end A237010.P2372735099808675826

/-! ## A237010.P15021168459647761040

`8*(A184029(A167614(n+1))+A180472(n))`
-/

namespace A237010.P15021168459647761040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A184029 (A167614 (n + 1)).toNat + A180472 n)

end

end A237010.P15021168459647761040

/-!
# A237011: Number of (n+1)X(4+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237011, there is no canonical definition to state claims against.
-/

/-! ## A237011.P14463986421472277736

`8*A184024(n+1)`
-/

namespace A237011.P14463986421472277736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184024 (n + 1)

end

end A237011.P14463986421472277736

/-! ## A237011.P14151948489594211258

`8*A184029(∑[n+3]+7)`
-/

namespace A237011.P14151948489594211258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237011.P14151948489594211258

/-! ## A237011.P4312713741208931811

`A237015(A374004(n+1))`
-/

namespace A237011.P4312713741208931811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (A374004 (n + 1)).toNat

end

end A237011.P4312713741208931811

/-! ## A237011.P9735337590245456825

`A237015(eq[5, A066657(n)])`
-/

namespace A237011.P9735337590245456825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237011.P9735337590245456825

/-! ## A237011.P16582083463870721461

`A237015(A167614(n+2)+1)`
-/

namespace A237011.P16582083463870721461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (A167614 (n + 2) + 1).toNat

end

end A237011.P16582083463870721461

/-!
# A237012: Number of (n+1)X(5+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237012, there is no canonical definition to state claims against.
-/

/-! ## A237012.P13839134854396910378

`8*A184025(n+1)`
-/

namespace A237012.P13839134854396910378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184025 (n + 1)

end

end A237012.P13839134854396910378

/-! ## A237012.P3048734415542452267

`8*A184029(A155212(n)+13)`
-/

namespace A237012.P3048734415542452267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (A155212 n + 13).toNat

end

end A237012.P3048734415542452267

/-! ## A237012.P318793615355962975

`8*A184029(A056000(n)+15)`
-/

namespace A237012.P318793615355962975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (A056000 n + 15).toNat

end

end A237012.P318793615355962975

/-! ## A237012.P18169649592140283486

`8*A184029(eq[7, A066657(n)])`
-/

namespace A237012.P18169649592140283486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237012.P18169649592140283486

/-! ## A237012.P9602904439422472401

`8*A184029(A167614(n+3)+2)`
-/

namespace A237012.P9602904439422472401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (A167614 (n + 3) + 2).toNat

end

end A237012.P9602904439422472401

/-!
# A237013: Number of (n+1)X(6+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237013, there is no canonical definition to state claims against.
-/

/-! ## A237013.P11000312130728992870

`8*A184026(n+1)`
-/

namespace A237013.P11000312130728992870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184026 (n + 1)

end

end A237013.P11000312130728992870

/-! ## A237013.P16934288343462364800

`record[8*A184026(A344180(n))]`
-/

namespace A237013.P16934288343462364800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184026 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237013.P16934288343462364800

/-! ## A237013.P2221917762428885993

`8*A184029(∑[n+5]+16)`
-/

namespace A237013.P2221917762428885993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A237013.P2221917762428885993

/-! ## A237013.P16556172351062892912

`A237015(A374007(n+1))`
-/

namespace A237013.P16556172351062892912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (A374007 (n + 1)).toNat

end

end A237013.P16556172351062892912

/-! ## A237013.P16519572717691278109

`A237015(A167614(n+4)+3)`
-/

namespace A237013.P16519572717691278109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237015 (A167614 (n + 4) + 3).toNat

end

end A237013.P16519572717691278109

/-!
# A237014: Number of (n+1)X(7+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237014, there is no canonical definition to state claims against.
-/

/-! ## A237014.P1370284707327625071

`8*A184027(n+1)`
-/

namespace A237014.P1370284707327625071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184027 (n + 1)

end

end A237014.P1370284707327625071

/-! ## A237014.P2159998411954804113

`8*A184029(A056119(n)+28)`
-/

namespace A237014.P2159998411954804113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (A056119 n + 28).toNat

end

end A237014.P2159998411954804113

/-! ## A237014.P5268687878047042108

`8*A184029(eq[11, A066657(n)])`
-/

namespace A237014.P5268687878047042108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237014.P5268687878047042108

/-! ## A237014.P7553667668569863076

`8*A184029(A077169(n+7)+2)`
-/

namespace A237014.P7553667668569863076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (A077169 (n + 7) + 2).toNat

end

end A237014.P7553667668569863076

/-! ## A237014.P11834372862329854585

`8*A184029(eq[8, A131818(n+1)])`
-/

namespace A237014.P11834372862329854585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237014.P11834372862329854585

/-!
# A237015: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with the sum of all four elements of every 2X2 subblock equal.

The programs for A237015, there is no canonical definition to state claims against.
-/

/-! ## A237015.P10225930577557218879

`8*A184029(n+1)`
-/

namespace A237015.P10225930577557218879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A184029 (n + 1)

end

end A237015.P10225930577557218879

/-! ## A237015.P4188548719044368243

`A237012(n+1)%(A184025(n+1)-A184029(n+1))`
-/

namespace A237015.P4188548719044368243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237012 (n + 1)) (A184025 (n + 1) - A184029 (n + 1))

end

end A237015.P4188548719044368243

/-! ## A237015.P10995099803774279165

`A237013(n+1)%(A184026(n+1)-A184029(n+1))`
-/

namespace A237015.P10995099803774279165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237013 (n + 1)) (A184026 (n + 1) - A184029 (n + 1))

end

end A237015.P10995099803774279165

/-! ## A237015.P16668729862102186642

`A008590(A184029(n+1))`
-/

namespace A237015.P16668729862102186642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A184029 (n + 1)).toNat

end

end A237015.P16668729862102186642

/-!
# A237018: Number A(n,k) of partitions of the k-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A237018, there is no canonical definition to state claims against.
-/

/-! ## A237018.P3943575623299045244

`A290605(n)-A025465(A256061(n))`
-/

namespace A237018.P3943575623299045244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290605 n - A025465 (A256061 n).toNat

end

end A237018.P3943575623299045244

/-! ## A237018.P206759313643696869

`A290605(n)-A225099(A292913(n))`
-/

namespace A237018.P206759313643696869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290605 n - A225099 (A292913 n).toNat

end

end A237018.P206759313643696869

/-! ## A237018.P7624664005134642011

`A290605(n)-A225099(A306024(n))`
-/

namespace A237018.P7624664005134642011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290605 n - A225099 (A306024 n).toNat

end

end A237018.P7624664005134642011

/-! ## A237018.P6677007676480586568

`A290605(n)-A025469(A098012(n+1))`
-/

namespace A237018.P6677007676480586568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290605 n - A025469 (A098012 (n + 1)).toNat

end

end A237018.P6677007676480586568

/-! ## A237018.P10878576646356269625

`A290605(n)%Δ[A004061(n+1)]`
-/

namespace A237018.P10878576646356269625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290605 n) (f1 (n + 1) - f1 n)

end

end A237018.P10878576646356269625

/-!
# A237019: Number of partitions of the 4-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237019, there is no canonical definition to state claims against.
-/

/-! ## A237019.P13342244112975537644

`record[A237018(A052905(n))]`
-/

namespace A237019.P13342244112975537644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237019.P13342244112975537644

/-! ## A237019.P4380448018756368328

`A237018(A052905(n+2))`
-/

namespace A237019.P4380448018756368328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A052905 (n + 2)).toNat

end

end A237019.P4380448018756368328

/-! ## A237019.P11724702498539812817

`A237018(eq[4, A025581(n)])`
-/

namespace A237019.P11724702498539812817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237019.P11724702498539812817

/-! ## A237019.P16896343661279473260

`A237018(eq[9, A099375(n)])`
-/

namespace A237019.P16896343661279473260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237019.P16896343661279473260

/-! ## A237019.P11071083765783439384

`A237018(A027379(n+3)-2)`
-/

namespace A237019.P11071083765783439384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A027379 (n + 3) - 2).toNat

end

end A237019.P11071083765783439384

/-! ## A237019.P16836539291410911798

`A237018(A000096(n+4)-4)`
-/

namespace A237019.P16836539291410911798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A000096 (n + 4) - 4).toNat

end

end A237019.P16836539291410911798

/-! ## A237019.P1574044689906103449

`record[A237018(abs(A046691(n))-1)]`
-/

namespace A237019.P1574044689906103449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237019.P1574044689906103449

/-! ## A237019.P4055617412520358121

`record[A237018(A046691(n+1)-1)]`
-/

namespace A237019.P4055617412520358121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237019.P4055617412520358121

/-! ## A237019.P15035494495627899

`record[A237018(A034856(n+2)-3)]`
-/

namespace A237019.P15035494495627899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237019.P15035494495627899

/-! ## A237019.P291152209807786122

`A237018(eq[2, A144257(n+1)-2])`
-/

namespace A237019.P291152209807786122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237019.P291152209807786122

/-!
# A237020: Number of partitions of the 5-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237020, there is no canonical definition to state claims against.
-/

/-! ## A237020.P14394257196067868239

`record[A237018(∑[n+4])]`
-/

namespace A237020.P14394257196067868239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237020.P14394257196067868239

/-! ## A237020.P15217558927457775225

`A237018(eq[5, A025581(n)])`
-/

namespace A237020.P15217558927457775225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237020.P15217558927457775225

/-! ## A237020.P4089147033122788160

`A237018(eq[6, A193739(n)])`
-/

namespace A237020.P4089147033122788160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237020.P4089147033122788160

/-! ## A237020.P14154566486861816464

`A237018(Δ[A023551(n+1)])`
-/

namespace A237020.P14154566486861816464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (f1 (n + 1) - f1 n).toNat

end

end A237020.P14154566486861816464

/-! ## A237020.P11987214817663996625

`A237018(eq[6, A004736(n+1)])`
-/

namespace A237020.P11987214817663996625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237020.P11987214817663996625

/-!
# A237021: Number of partitions of the 6-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237021, there is no canonical definition to state claims against.
-/

/-! ## A237021.P6388508075544766307

`A237018(eq[6, A025581(n)])`
-/

namespace A237021.P6388508075544766307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237021.P6388508075544766307

/-! ## A237021.P3437785313659401563

`A237018(eq[7, A193739(n)])`
-/

namespace A237021.P3437785313659401563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237021.P3437785313659401563

/-! ## A237021.P8899723035457287775

`A237018(eq[13, A099375(n)])`
-/

namespace A237021.P8899723035457287775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237021.P8899723035457287775

/-! ## A237021.P14642776863348765252

`A237018(eq[7, A004736(n+1)])`
-/

namespace A237021.P14642776863348765252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237021.P14642776863348765252

/-! ## A237021.P4343980608484097066

`A237018(eq[17, A104887(n+1)])`
-/

namespace A237021.P4343980608484097066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237021.P4343980608484097066

/-! ## A237021.P12851931963193127842

`A237018(Δ[A023551(n+2)]-1)`
-/

namespace A237021.P12851931963193127842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (f1 (n + 1) - f1 n - 1).toNat

end

end A237021.P12851931963193127842

/-!
# A237022: Number of partitions of the 7-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237022, there is no canonical definition to state claims against.
-/

/-! ## A237022.P7893181764190199771

`A237018(A056126(n)+28)`
-/

namespace A237022.P7893181764190199771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A056126 n + 28).toNat

end

end A237022.P7893181764190199771

/-! ## A237022.P17012583270954333403

`A237018(eq[7, A025581(n)])`
-/

namespace A237022.P17012583270954333403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P17012583270954333403

/-! ## A237022.P1493442323525126736

`A237018(eq[8, A193739(n)])`
-/

namespace A237022.P1493442323525126736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P1493442323525126736

/-! ## A237022.P2559831459818087775

`A237018(eq[8, A195663(n)])`
-/

namespace A237022.P2559831459818087775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P2559831459818087775

/-! ## A237022.P16252471321136035432

`A237018(eq[15, A099375(n)])`
-/

namespace A237022.P16252471321136035432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P16252471321136035432

/-! ## A237022.P888811111649497851

`A237018(eq[8, A004736(n+1)])`
-/

namespace A237022.P888811111649497851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P888811111649497851

/-! ## A237022.P4321037174488347880

`A237018(eq[8, A134231(n+1)])`
-/

namespace A237022.P4321037174488347880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237022.P4321037174488347880

/-!
# A237023: Number of partitions of the 8-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237023, there is no canonical definition to state claims against.
-/

/-! ## A237023.P1959047609080459715

`A237018(eq[3, A104975(n)])`
-/

namespace A237023.P1959047609080459715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237023.P1959047609080459715

/-! ## A237023.P13623009116694677004

`A237018(eq[8, A025581(n)])`
-/

namespace A237023.P13623009116694677004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237023.P13623009116694677004

/-! ## A237023.P14813979179839461850

`A237018(eq[9, A193739(n)])`
-/

namespace A237023.P14813979179839461850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237023.P14813979179839461850

/-! ## A237023.P16328045422536833604

`A237018(eq[9, A004736(n+1)])`
-/

namespace A237023.P16328045422536833604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237023.P16328045422536833604

/-! ## A237023.P4575750366561337656

`A237018(eq[81, A055461(n+1)])`
-/

namespace A237023.P4575750366561337656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237023.P4575750366561337656

/-!
# A237024: Number of partitions of the 9-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237024, there is no canonical definition to state claims against.
-/

/-! ## A237024.P534901209598166843

`A237018(eq[9, A025581(n)])`
-/

namespace A237024.P534901209598166843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237024.P534901209598166843

/-! ## A237024.P5991667532558732590

`A237018(eq[10, A193739(n)])`
-/

namespace A237024.P5991667532558732590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237024.P5991667532558732590

/-! ## A237024.P8486090760391326664

`A237018(eq[9, A144257(n+1)])`
-/

namespace A237024.P8486090760391326664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237024.P8486090760391326664

/-! ## A237024.P14148234451604535910

`A237018(eq[10, A004736(n+1)])`
-/

namespace A237024.P14148234451604535910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237024.P14148234451604535910

/-! ## A237024.P5206561822445660851

`A237018(eq[10, A134231(n+1)])`
-/

namespace A237024.P5206561822445660851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237024.P5206561822445660851

/-!
# A237025: Number of partitions of the 10-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237025, there is no canonical definition to state claims against.
-/

/-! ## A237025.P16331936258238939408

`A237018(eq[10, A025581(n)])`
-/

namespace A237025.P16331936258238939408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237025.P16331936258238939408

/-! ## A237025.P13459513996511885786

`A237018(eq[11, A193739(n)])`
-/

namespace A237025.P13459513996511885786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237025.P13459513996511885786

/-! ## A237025.P5896531431267032226

`record[A237018(∑[A057717(n)])]`
-/

namespace A237025.P5896531431267032226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237025.P5896531431267032226

/-! ## A237025.P12003661422695958672

`A237018(A179865(n+12)-11)`
-/

namespace A237025.P12003661422695958672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (A179865 (n + 12) - 11).toNat

end

end A237025.P12003661422695958672

/-! ## A237025.P798696952491151349

`A237018(eq[11, A004736(n+1)])`
-/

namespace A237025.P798696952491151349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237025.P798696952491151349

/-!
# A237026: Number of partitions of the n-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes.

The programs for A237026, there is no canonical definition to state claims against.
-/

/-! ## A237026.P13066778196176397431

`A237018(∑[4*n])`
-/

namespace A237026.P13066778196176397431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237026.P13066778196176397431

/-! ## A237026.P5348639721422867320

`gcd(A000038(n), A237018(A046092(n)))`
-/

namespace A237026.P5348639721422867320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A237018 (A046092 n).toNat)

end

end A237026.P5348639721422867320

/-! ## A237026.P513734742469008287

`A033999(n)²*A237018(A046092(n))`
-/

namespace A237026.P513734742469008287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A237018 (A046092 n).toNat

end

end A237026.P513734742469008287

/-! ## A237026.P2133944069032789455

`A237018(A046092(n))^A014963(4*n+2)`
-/

namespace A237026.P2133944069032789455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237018 (A046092 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A237026.P2133944069032789455

/-!
# A237027: Number of (n+1)X(n+1) 0..2 arrays with the maximum of every 2X2 subblock equal.

The programs for A237027, there is no canonical definition to state claims against.
-/

/-! ## A237027.P1552977237917618075

`A237035((n+1)²+n²)`
-/

namespace A237027.P1552977237917618075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 ((n + 1) ^ 2 + n ^ 2)

end

end A237027.P1552977237917618075

/-!
# A237028: Number of (n+1) X (1+1) 0..2 arrays with the maximum of every 2 X 2 subblock equal.

The programs for A237028, there is no canonical definition to state claims against.
-/

/-! ## A237028.P14325492210153409878

`A237035(∑[n]+1)`
-/

namespace A237028.P14325492210153409878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237028.P14325492210153409878

/-! ## A237028.P8466809857735559199

`record[root(A237035(n+1), A173741(n))]`
-/

namespace A237028.P8466809857735559199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 1) : ℝ) ^ (1 / (A173741 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237028.P8466809857735559199

/-! ## A237028.P17555692676094792973

`record[root(A237035(n+1), A249755(n))]`
-/

namespace A237028.P17555692676094792973
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 1) : ℝ) ^ (1 / (A249755 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237028.P17555692676094792973

/-! ## A237028.P18193882417174584947

`record[root(A237035(n+1), A249756(n))]`
-/

namespace A237028.P18193882417174584947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 1) : ℝ) ^ (1 / (A249756 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237028.P18193882417174584947

/-! ## A237028.P2659762834401974787

`record[root(A237035(n+1), A249757(n))]`
-/

namespace A237028.P2659762834401974787
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 1) : ℝ) ^ (1 / (A249757 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237028.P2659762834401974787

/-!
# A237029: Number of (n+1) X (2+1) 0..2 arrays with the maximum of every 2 X 2 subblock equal.

The programs for A237029, there is no canonical definition to state claims against.
-/

/-! ## A237029.P1089602679772546177

`A237035(∑[n+1]+2)`
-/

namespace A237029.P1089602679772546177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237029.P1089602679772546177

/-! ## A237029.P10346852541815358046

`record[root(A237035(n+2), A249755(n))]`
-/

namespace A237029.P10346852541815358046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 2) : ℝ) ^ (1 / (A249755 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237029.P10346852541815358046

/-! ## A237029.P8070114748907283377

`record[root(A237035(n+2), A249756(n))]`
-/

namespace A237029.P8070114748907283377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 2) : ℝ) ^ (1 / (A249756 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237029.P8070114748907283377

/-! ## A237029.P18293720591995397080

`record[root(A237035(n+2), A249757(n))]`
-/

namespace A237029.P18293720591995397080
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237035 (n + 2) : ℝ) ^ (1 / (A249757 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237029.P18293720591995397080

/-! ## A237029.P12352553182373818992

`record[gcd(A237018(n+2), A237035(n+2))]`
-/

namespace A237029.P12352553182373818992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237018 (n + 2)) (A237035 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237029.P12352553182373818992

/-!
# A237030: Number of (n+1)X(3+1) 0..2 arrays with the maximum of every 2X2 subblock equal.

The programs for A237030, there is no canonical definition to state claims against.
-/

/-! ## A237030.P6790018020322640040

`A237035(∑[n+2]+4)`
-/

namespace A237030.P6790018020322640040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237030.P6790018020322640040

/-! ## A237030.P15873485972095106680

`or(2, A237035(A167614(n+1)))`
-/

namespace A237030.P15873485972095106680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A237035 (A167614 (n + 1)).toNat)

end

end A237030.P15873485972095106680

/-! ## A237030.P11434935785122924311

`A237035(A167614(n+1))+A034514(n+1)`
-/

namespace A237030.P11434935785122924311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (A167614 (n + 1)).toNat + A034514 (n + 1)

end

end A237030.P11434935785122924311

/-! ## A237030.P9464971672470072712

`A237035(A167614(n+1))%A234783(n+1)`
-/

namespace A237030.P9464971672470072712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237035 (A167614 (n + 1)).toNat) (A234783 (n + 1))

end

end A237030.P9464971672470072712

/-! ## A237030.P15601792975109339369

`record[A237035(A198464(n+1))]`
-/

namespace A237030.P15601792975109339369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237030.P15601792975109339369

/-!
# A237031: Number of (n+1)X(4+1) 0..2 arrays with the maximum of every 2X2 subblock equal.

The programs for A237031, there is no canonical definition to state claims against.
-/

/-! ## A237031.P11819490219570789502

`A237035(A167614(n+2)+1)`
-/

namespace A237031.P11819490219570789502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (A167614 (n + 2) + 1).toNat

end

end A237031.P11819490219570789502

/-! ## A237031.P2460332942638322327

`A237035(eq[4, A004736(n+1)]+1)`
-/

namespace A237031.P2460332942638322327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A237031.P2460332942638322327

/-! ## A237031.P15250579100530627685

`A237035(record[A198464(n+2)-1])`
-/

namespace A237031.P15250579100530627685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198464 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A237031.P15250579100530627685

/-!
# A237032: Number of (n+1) X (5+1) 0..2 arrays with the maximum of every 2 X 2 subblock equal.

The programs for A237032, there is no canonical definition to state claims against.
-/

/-! ## A237032.P14174799936100112708

`A237035(A374005(n+1))`
-/

namespace A237032.P14174799936100112708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (A374005 (n + 1)).toNat

end

end A237032.P14174799936100112708

/-! ## A237032.P452887803173941624

`A237035(eq[4, A004736(n+1)]+n+5)`
-/

namespace A237032.P452887803173941624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 5))

end

end A237032.P452887803173941624

/-!
# A237036: Size of the smallest conjugacy class of size greater than 1 of the alternating group of degree n.

The programs for A237036, the canonical program `A237036.P5097138219934544455` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237036 has offset 4).

The definition of A237036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237036.P5097138219934544455

`ogf((3+10x^2-30x^3+20x^4+20x^5-42x^6+28x^7-7x^8)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237036

/-- `ogf((3+10x^2-30x^3+20x^4+20x^5-42x^6+28x^7-7x^8)/(1-4x+6x^2-4x^3+x^4))` -/
def P5097138219934544455.Spec : Prop :=
  ∀ n, P5097138219934544455.a n = A237036 (n + 4)

theorem P5097138219934544455.correct : P5097138219934544455.Spec := by
  intro n
  simp only [A237036, Nat.add_sub_cancel]

end A237036

/-! ## A237036.P7393953971318431069

`A000015(n+3)*A324918(A008864(3*(n+1)))`
-/

namespace A237036.P7393953971318431069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 3) * A324918 (A008864 (3 * (n + 1))).toNat

end

end A237036.P7393953971318431069

namespace A237036

/-- `A000015(n+3)*A324918(A008864(3*(n+1)))` -/
def P7393953971318431069.Spec : Prop :=
  ∀ n, P7393953971318431069.a n = A237036 (n + 4)

end A237036

/-!
# A237037: Numbers k such that (2*k)^3 + 1 is a semiprime.

The programs for A237037, there is no canonical definition to state claims against.
-/

/-! ## A237037.P14717614500793615957

`A096173(n+1)/2`
-/

namespace A237037.P14717614500793615957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096173 (n + 1) : ℚ) / 2

end

end A237037.P14717614500793615957

/-! ## A237037.P8005770158296428878

`1/2*(A237040(n+1)-1)^(1/3)`
-/

namespace A237037.P8005770158296428878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (A237040 (n + 1) - 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A237037.P8005770158296428878

/-! ## A237037.P11102259672822669257

`∩[A006093(n+1), A096174(n+1)]/2`
-/

namespace A237037.P11102259672822669257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P11102259672822669257

/-! ## A237037.P15689602026214880568

`∩[A068499(n+1), A096174(n+1)]/2`
-/

namespace A237037.P15689602026214880568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P15689602026214880568

/-! ## A237037.P9490435301747284364

`A014682(A096173(n+1))`
-/

namespace A237037.P9490435301747284364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096173 (n + 1)).toNat

end

end A237037.P9490435301747284364

/-! ## A237037.P13225425062294103999

`(p?[A089358(n+1)]-1)/2`
-/

namespace A237037.P13225425062294103999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A237037.P13225425062294103999

/-! ## A237037.P17648159319655498895

`∩[A006093(n+1), A055494(n+1)]/2`
-/

namespace A237037.P17648159319655498895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P17648159319655498895

/-! ## A237037.P9839562210085607971

`A297381(A096173(n+1)+1)`
-/

namespace A237037.P9839562210085607971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297381 (A096173 (n + 1) + 1).toNat

end

end A237037.P9839562210085607971

/-! ## A237037.P1487092882187336256

`∩[A096174(n+1), A196127(n+1)]/2`
-/

namespace A237037.P1487092882187336256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196127 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P1487092882187336256

/-! ## A237037.P9116275044793951832

`∩[A096174(n+1), A173919(n+1)]/2`
-/

namespace A237037.P9116275044793951832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P9116275044793951832

/-! ## A237037.P15197824368382011255

`∩[A096174(n+1), A318606(n+1)]/2`
-/

namespace A237037.P15197824368382011255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318606 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A237037.P15197824368382011255

/-! ## A237037.P7308032297726962700

`A349432(A096173(n+1)+1)`
-/

namespace A237037.P7308032297726962700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (A096173 (n + 1) + 1).toNat

end

end A237037.P7308032297726962700

/-! ## A237037.P6965867751483141234

`A349448(p?[A002384(n+1)+2])`
-/

namespace A237037.P6965867751483141234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349448 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237037.P6965867751483141234

/-! ## A237037.P3919657437620473138

`A001281(A096173(n+1))`
-/

namespace A237037.P3919657437620473138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096173 (n + 1)).toNat

end

end A237037.P3919657437620473138

/-! ## A237037.P13001766996982934627

`A000463(A096173(n+1)-1)`
-/

namespace A237037.P13001766996982934627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A096173 (n + 1) - 1).toNat

end

end A237037.P13001766996982934627

/-! ## A237037.P14853782971478445687

`A008619(A096173(n+1)-1)`
-/

namespace A237037.P14853782971478445687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A096173 (n + 1) - 1).toNat

end

end A237037.P14853782971478445687

/-! ## A237037.P12351608999685116676

`A026741(and(-2, A096173(n+1)))`
-/

namespace A237037.P12351608999685116676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (-2) (A096173 (n + 1))).toNat

end

end A237037.P12351608999685116676

/-! ## A237037.P9366777992776684652

`A026741(A096173(n+1)+2)-1`
-/

namespace A237037.P9366777992776684652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A096173 (n + 1) + 2).toNat - 1

end

end A237037.P9366777992776684652

/-! ## A237037.P1080511605635788008

`A025480(xor(1, A096173(n+1)+1))`
-/

namespace A237037.P1080511605635788008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A096173 (n + 1) + 1)).toNat

end

end A237037.P1080511605635788008

/-! ## A237037.P5827047624273354606

`eq[A051612(n+1), A278251(n)]/2`
-/

namespace A237037.P5827047624273354606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A237037.P5827047624273354606

/-!
# A237038: Primes p such that (2*p)^3 + 1 is a semiprime.

The programs for A237038, there is no canonical definition to state claims against.
-/

/-! ## A237038.P15417937359910978934

`1/2*(A237039(n+1)-1)^(1/3)`
-/

namespace A237038.P15417937359910978934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (A237039 (n + 1) - 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A237038.P15417937359910978934

/-! ## A237038.P7546794795913445324

`round(root(A000038(n)+A237039(n+1)-1+n, 3))/2`
-/

namespace A237038.P7546794795913445324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A000038 n + (A237039 (n + 1) - 1) + (n : ℤ) : ℝ) ^ (1 / (3 : ℝ))) : ℚ) / 2

end

end A237038.P7546794795913445324

/-! ## A237038.P9214205294035419488

`round(root(A008592(n)+A237039(n+1)-1+n, 3))/2`
-/

namespace A237038.P9214205294035419488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A008592 n + (A237039 (n + 1) - 1) + (n : ℤ) : ℝ) ^ (1 / (3 : ℝ))) : ℚ) / 2

end

end A237038.P9214205294035419488

/-! ## A237038.P12403229446455687140

`round(root(A275543(n)+A237039(n+1)-1+n, 3))/2`
-/

namespace A237038.P12403229446455687140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A275543 n + (A237039 (n + 1) - 1) + (n : ℤ) : ℝ) ^ (1 / (3 : ℝ))) : ℚ) / 2

end

end A237038.P12403229446455687140

/-! ## A237038.P11742055333576075486

`round(root(A102781(n+1)+A237039(n+1)-1+n, 3))/2`
-/

namespace A237038.P11742055333576075486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A102781 (n + 1) + (A237039 (n + 1) - 1) + (n : ℤ) : ℝ) ^ (1 / (3 : ℝ))) : ℚ) / 2

end

end A237038.P11742055333576075486

/-! ## A237038.P17681919263717436435

`round(root(A272085(n)+A237039(n+1)-1+n, 3))/2`
-/

namespace A237038.P17681919263717436435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A272085 n + (A237039 (n + 1) - 1) + (n : ℤ) : ℝ) ^ (1 / (3 : ℝ))) : ℚ) / 2

end

end A237038.P17681919263717436435

/-! ## A237038.P14473722613091087977

`p?[A237037(n+1)]`
-/

namespace A237038.P14473722613091087977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237038.P14473722613091087977

/-! ## A237038.P11367631910059866227

`∩[A005384(n+1), A237037(n+1)]`
-/

namespace A237038.P11367631910059866227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P11367631910059866227

/-! ## A237038.P12554851163671782506

`∩[A156658(n+1), A237037(n+1)]`
-/

namespace A237038.P12554851163671782506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P12554851163671782506

/-! ## A237038.P15496569765771747980

`∩[A237037(n+1), A348511(n+1)]`
-/

namespace A237038.P15496569765771747980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P15496569765771747980

/-! ## A237038.P12682296627158411421

`∩[A045309(n+1), A237037(n+1)]`
-/

namespace A237038.P12682296627158411421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P12682296627158411421

/-! ## A237038.P17760275116412514482

`∩[A049596(n+1), A237037(n+1)]`
-/

namespace A237038.P17760275116412514482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P17760275116412514482

/-! ## A237038.P6653787809234027873

`∩[A040028(n+1), A237037(n+1)]`
-/

namespace A237038.P6653787809234027873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P6653787809234027873

/-! ## A237038.P4598807619751696465

`∩[A040036(n+1), A237037(n+1)]`
-/

namespace A237038.P4598807619751696465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P4598807619751696465

/-! ## A237038.P10495364290365171101

`∩[A040044(n+1), A237037(n+1)]`
-/

namespace A237038.P10495364290365171101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P10495364290365171101

/-! ## A237038.P9441481884509400506

`∩[A040046(n+1), A237037(n+1)]`
-/

namespace A237038.P9441481884509400506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P9441481884509400506

/-! ## A237038.P15179418078353623809

`∩[A040049(n+1), A237037(n+1)]`
-/

namespace A237038.P15179418078353623809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P15179418078353623809

/-! ## A237038.P17621006694792288941

`∩[A040054(n+1), A237037(n+1)]`
-/

namespace A237038.P17621006694792288941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P17621006694792288941

/-! ## A237038.P516997207669851332

`∩[A040060(n+1), A237037(n+1)]`
-/

namespace A237038.P516997207669851332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237038.P516997207669851332

/-!
# A237039: Semiprimes of the form (2*p)^3 + 1, where p is prime.

The programs for A237039, there is no canonical definition to state claims against.
-/

/-! ## A237039.P9513821933947607879

`(2*A237038(n+1))^3+1`
-/

namespace A237039.P9513821933947607879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A237038 (n + 1)) ^ 3 + 1

end

end A237039.P9513821933947607879

/-! ## A237039.P17976863411042403033

`A016743(A237038(n+1))+1`
-/

namespace A237039.P17976863411042403033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (A237038 (n + 1)).toNat + 1

end

end A237039.P17976863411042403033

/-! ## A237039.P16385724977175390626

`A016743(p?[A237037(n+1)])+1`
-/

namespace A237039.P16385724977175390626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A237039.P16385724977175390626

/-!
# A237040: Semiprimes of the form k^3 + 1.

The programs for A237040, there is no canonical definition to state claims against.
-/

/-! ## A237040.P14363357175109500929

`A096173(n+1)^3+1`
-/

namespace A237040.P14363357175109500929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096173 (n + 1) ^ 3 + 1

end

end A237040.P14363357175109500929

/-! ## A237040.P10971642473819442735

`8*A237037(n+1)^3+1`
-/

namespace A237040.P10971642473819442735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A237037 (n + 1) ^ 3 + 1

end

end A237040.P10971642473819442735

/-! ## A237040.P11547319311970393859

`(p?[A089358(n+1)]-1)^3+1`
-/

namespace A237040.P11547319311970393859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 3 + 1

end

end A237040.P11547319311970393859

/-! ## A237040.P12027745849944124145

`(p?[A055494(n+1)+1]-1)^3+1`
-/

namespace A237040.P12027745849944124145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 3 + 1

end

end A237040.P12027745849944124145

/-! ## A237040.P8753885136702874259

`(p?[A002384(n+1)+2]-1)^3+1`
-/

namespace A237040.P8753885136702874259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1) ^ 3 + 1

end

end A237040.P8753885136702874259

/-! ## A237040.P12365704436879180159

`A016743(A237037(n+1))+1`
-/

namespace A237040.P12365704436879180159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (A237037 (n + 1)).toNat + 1

end

end A237040.P12365704436879180159

/-! ## A237040.P6304776954910000533

`A016743(A096173(n+1)/2)+1`
-/

namespace A237040.P6304776954910000533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (SequenceMachineLib.roundAway ((A096173 (n + 1) : ℚ) / 2)).toNat + 1

end

end A237040.P6304776954910000533

/-!
# A237042: UPC check digit for n.

The programs for A237042, there is no canonical definition to state claims against.
-/

/-! ## A237042.P16709037288689871989

`A133880(A158219(n+1))`
-/

namespace A237042.P16709037288689871989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A158219 (n + 1)).toNat

end

end A237042.P16709037288689871989

/-! ## A237042.P2172237409292012731

`A010879(A231963(n+1))`
-/

namespace A237042.P2172237409292012731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A231963 (n + 1)).toNat

end

end A237042.P2172237409292012731

/-! ## A237042.P10702187257623084427

`A007953(A231963(n+1))-A007953(n+1)`
-/

namespace A237042.P10702187257623084427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A231963 (n + 1)).toNat - A007953 (n + 1)

end

end A237042.P10702187257623084427

/-! ## A237042.P13808664910880531265

`A093019(n+1)+A231963(n+1)-A093018(n+1)`
-/

namespace A237042.P13808664910880531265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 (n + 1) + (A231963 (n + 1) - A093018 (n + 1))

end

end A237042.P13808664910880531265

/-!
# A237043: Numbers n such that 2^n - 1 is not squarefree, but 2^d - 1 is squarefree for every proper divisor d of n.

The programs for A237043, there is no canonical definition to state claims against.
-/

/-! ## A237043.P16572993103067808309

`A007733(A282631(n+1))`
-/

namespace A237043.P16572993103067808309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A282631 (n + 1)).toNat

end

end A237043.P16572993103067808309

/-! ## A237043.P9397764333806394100

`A007733(A282632(n+1)²)`
-/

namespace A237043.P9397764333806394100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A282632 (n + 1) ^ 2).toNat

end

end A237043.P9397764333806394100

/-! ## A237043.P7520774389954357829

`record[A007733(A282242(n+1))]`
-/

namespace A237043.P7520774389954357829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A282242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237043.P7520774389954357829

/-!
# A237044: Number of overcompositions of n minus the number of partitions of n.

The programs for A237044, there is no canonical definition to state claims against.
-/

/-! ## A237044.P10733046969962074858

`A236002(n)-A000041(n)`
-/

namespace A237044.P10733046969962074858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A000041 n

end

end A237044.P10733046969962074858

/-! ## A237044.P15615096509420908113

`A236633(n)+A056823(n)`
-/

namespace A237044.P15615096509420908113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236633 n + A056823 n

end

end A237044.P15615096509420908113

/-! ## A237044.P9305830355831617742

`A237045(n)+A230441(n)`
-/

namespace A237044.P9305830355831617742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237045 n + A230441 n

end

end A237044.P9305830355831617742

/-! ## A237044.P781427886324913683

`A236002(n)-A213598(n)`
-/

namespace A237044.P781427886324913683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A213598 n

end

end A237044.P781427886324913683

/-! ## A237044.P9738363772686080899

`A236002(n)-A330643(n)`
-/

namespace A237044.P9738363772686080899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A330643 n

end

end A237044.P9738363772686080899

/-!
# A237045: Number of overcompositions of n minus the number of overpartitions of n.

The programs for A237045, there is no canonical definition to state claims against.
-/

/-! ## A237045.P7354116913374284631

`A236002(n)-A015128(n)`
-/

namespace A237045.P7354116913374284631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A015128 n

end

end A237045.P7354116913374284631

/-! ## A237045.P12368032487308557816

`A237272(n)+A056823(n)`
-/

namespace A237045.P12368032487308557816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237272 n + A056823 n

end

end A237045.P12368032487308557816

/-! ## A237045.P11186988289856184427

`A237047(n)+A236633(n)`
-/

namespace A237045.P11186988289856184427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237047 n + A236633 n

end

end A237045.P11186988289856184427

/-! ## A237045.P8886867622482809369

`A237044(n)-A230441(n)`
-/

namespace A237045.P8886867622482809369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237044 n - A230441 n

end

end A237045.P8886867622482809369

/-! ## A237045.P15961947196627211783

`A236002(n)-abs(A004402(n))`
-/

namespace A237045.P15961947196627211783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - |A004402 n|

end

end A237045.P15961947196627211783

/-!
# A237046: Numbers k such that sigma(k) < 2*k-1.

The programs for A237046, the canonical program `A237046.P16405713100893644750` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237046 has offset 1).

The definition of A237046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237046.P16405713100893644750

`lt[1, A033879(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A237046

/-- `lt[1, A033879(n+1)]+1` -/
def P16405713100893644750.Spec : Prop :=
  ∀ n, (P16405713100893644750.a n : ℤ) = A237046 (n + 1)

theorem P16405713100893644750.correct : P16405713100893644750.Spec := by
  intro n
  simp only [A237046, Nat.add_sub_cancel]

end A237046

/-! ## A237046.P3572565239464747792

`eq[A036987(n), A060862(n+1)]+1`
-/

namespace A237046.P3572565239464747792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237046.P3572565239464747792

namespace A237046

/-- `eq[A036987(n), A060862(n+1)]+1` -/
def P3572565239464747792.Spec : Prop :=
  ∀ n, (P3572565239464747792.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P9895398878754937828

`eq[A060862(n+1), A127802(n)]+1`
-/

namespace A237046.P9895398878754937828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237046.P9895398878754937828

namespace A237046

/-- `eq[A060862(n+1), A127802(n)]+1` -/
def P9895398878754937828.Spec : Prop :=
  ∀ n, (P9895398878754937828.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P17371623842190011377

`eq[A036987(n), A294936(n+1)]+1`
-/

namespace A237046.P17371623842190011377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237046.P17371623842190011377

namespace A237046

/-- `eq[A036987(n), A294936(n+1)]+1` -/
def P17371623842190011377.Spec : Prop :=
  ∀ n, (P17371623842190011377.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P5851083007580342162

`eq[A036987(n), A302110(n+1)]+1`
-/

namespace A237046.P5851083007580342162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237046.P5851083007580342162

namespace A237046

/-- `eq[A036987(n), A302110(n+1)]+1` -/
def P5851083007580342162.Spec : Prop :=
  ∀ n, (P5851083007580342162.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P4932609343924003137

`filter[A005100(n+1), A347523(#)]`
-/

namespace A237046.P4932609343924003137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A237046.P4932609343924003137

namespace A237046

/-- `filter[A005100(n+1), A347523(#)]` -/
def P4932609343924003137.Spec : Prop :=
  ∀ n, P4932609343924003137.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P12342560320838946119

`filter[A237287(n+1), A294934(#)]`
-/

namespace A237046.P12342560320838946119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P12342560320838946119

namespace A237046

/-- `filter[A237287(n+1), A294934(#)]` -/
def P12342560320838946119.Spec : Prop :=
  ∀ n, P12342560320838946119.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P16819244627946082427

`filter[A237287(n+1), A294935(#)]`
-/

namespace A237046.P16819244627946082427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A237046.P16819244627946082427

namespace A237046

/-- `filter[A237287(n+1), A294935(#)]` -/
def P16819244627946082427.Spec : Prop :=
  ∀ n, P16819244627946082427.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P4717635898205355839

`∩[A005100(n+1), A237287(n+1)]`
-/

namespace A237046.P4717635898205355839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237046.P4717635898205355839

namespace A237046

/-- `∩[A005100(n+1), A237287(n+1)]` -/
def P4717635898205355839.Spec : Prop :=
  ∀ n, (P4717635898205355839.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P7780994369636253517

`filter[A238524(n+1), A294934(#)]`
-/

namespace A237046.P7780994369636253517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P7780994369636253517

namespace A237046

/-- `filter[A238524(n+1), A294934(#)]` -/
def P7780994369636253517.Spec : Prop :=
  ∀ n, P7780994369636253517.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P8034191962122442796

`filter[A238524(n+1), A294935(#)]`
-/

namespace A237046.P8034191962122442796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A237046.P8034191962122442796

namespace A237046

/-- `filter[A238524(n+1), A294935(#)]` -/
def P8034191962122442796.Spec : Prop :=
  ∀ n, P8034191962122442796.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P2822497652109488779

`∩[A005100(n+1), A238524(n+1)]`
-/

namespace A237046.P2822497652109488779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237046.P2822497652109488779

namespace A237046

/-- `∩[A005100(n+1), A238524(n+1)]` -/
def P2822497652109488779.Spec : Prop :=
  ∀ n, (P2822497652109488779.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P11505465194967287639

`filter[A281005(n+1), A294934(#)]`
-/

namespace A237046.P11505465194967287639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P11505465194967287639

namespace A237046

/-- `filter[A281005(n+1), A294934(#)]` -/
def P11505465194967287639.Spec : Prop :=
  ∀ n, P11505465194967287639.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P631028474589544523

`filter[A281005(n+1), A294935(#)]`
-/

namespace A237046.P631028474589544523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A237046.P631028474589544523

namespace A237046

/-- `filter[A281005(n+1), A294935(#)]` -/
def P631028474589544523.Spec : Prop :=
  ∀ n, P631028474589544523.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P7740014193916677711

`∩[A005100(n+1), A281005(n+1)]`
-/

namespace A237046.P7740014193916677711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237046.P7740014193916677711

namespace A237046

/-- `∩[A005100(n+1), A281005(n+1)]` -/
def P7740014193916677711.Spec : Prop :=
  ∀ n, (P7740014193916677711.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P2172239620152085108

`filter[A080259(n+1), A294934(#)]`
-/

namespace A237046.P2172239620152085108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P2172239620152085108

namespace A237046

/-- `filter[A080259(n+1), A294934(#)]` -/
def P2172239620152085108.Spec : Prop :=
  ∀ n, P2172239620152085108.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P15181921529314816842

`∩[A005100(n+1), A080259(n+1)]`
-/

namespace A237046.P15181921529314816842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237046.P15181921529314816842

namespace A237046

/-- `∩[A005100(n+1), A080259(n+1)]` -/
def P15181921529314816842.Spec : Prop :=
  ∀ n, (P15181921529314816842.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P12738612584206569590

`filter[A067715(n+1), A294934(#)]`
-/

namespace A237046.P12738612584206569590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P12738612584206569590

namespace A237046

/-- `filter[A067715(n+1), A294934(#)]` -/
def P12738612584206569590.Spec : Prop :=
  ∀ n, P12738612584206569590.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P12264899657834522667

`∩[A005100(n+1), A067715(n+1)]`
-/

namespace A237046.P12264899657834522667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237046.P12264899657834522667

namespace A237046

/-- `∩[A005100(n+1), A067715(n+1)]` -/
def P12264899657834522667.Spec : Prop :=
  ∀ n, (P12264899657834522667.a n : ℤ) = A237046 (n + 1)

end A237046

/-! ## A237046.P4969254728386939819

`filter[A369361(n+1), A294934(#)]`
-/

namespace A237046.P4969254728386939819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A237046.P4969254728386939819

namespace A237046

/-- `filter[A369361(n+1), A294934(#)]` -/
def P4969254728386939819.Spec : Prop :=
  ∀ n, P4969254728386939819.a n = A237046 (n + 1)

end A237046

/-! ## A237046.P17924212909705927820

`lt[∑{d}[n, #]+1, 2*n]`
-/

namespace A237046.P17924212909705927820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A237046.P17924212909705927820

namespace A237046

/-- `lt[∑{d}[n, #]+1, 2*n]` -/
def P17924212909705927820.Spec : Prop :=
  ∀ n, (P17924212909705927820.a n : ℤ) = A237046 (n + 1)

end A237046

/-!
# A237047: Number of compositions of n minus the number of overpartitions of n.

The programs for A237047, there is no canonical definition to state claims against.
-/

/-! ## A237047.P6097210977282270136

`A011782(n)-A015128(n)`
-/

namespace A237047.P6097210977282270136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A015128 n

end

end A237047.P6097210977282270136

/-! ## A237047.P2195195437251120272

`A056823(n)-A230441(n)`
-/

namespace A237047.P2195195437251120272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n - A230441 n

end

end A237047.P2195195437251120272

/-! ## A237047.P2195890530840172456

`A011782(n)-abs(A004402(n))`
-/

namespace A237047.P2195890530840172456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - |A004402 n|

end

end A237047.P2195890530840172456

/-! ## A237047.P11815753111577889460

`A011782(n)-∑[A211971(n)]`
-/

namespace A237047.P11815753111577889460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237047.P11815753111577889460

/-! ## A237047.P7294307822570563896

`A166444(n+1)-A015128(n)`
-/

namespace A237047.P7294307822570563896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - A015128 n

end

end A237047.P7294307822570563896

/-! ## A237047.P1121903854097193550

`A011782(n)-lcm(A000034(n), A004402(n))`
-/

namespace A237047.P1121903854097193550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (Int.lcm (A000034 n) (A004402 n) : ℤ)

end

end A237047.P1121903854097193550

/-! ## A237047.P3286501860346916086

`A011782(n)-ratio[A057077(n)]*A004402(n)`
-/

namespace A237047.P3286501860346916086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A004402 n : ℚ)

end

end A237047.P3286501860346916086

/-! ## A237047.P16447169793666454416

`A011782(n)-A004402(n)*A057077(A004277(n))`
-/

namespace A237047.P16447169793666454416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A004402 n * A057077 (A004277 n).toNat

end

end A237047.P16447169793666454416

/-! ## A237047.P12339914021817294329

`A011782(n)-A004402(n)*A057077(A005408(n))`
-/

namespace A237047.P12339914021817294329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A004402 n * A057077 (A005408 n).toNat

end

end A237047.P12339914021817294329

/-!
# A237048: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists 1's interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A237048, there is no canonical definition to state claims against.
-/

/-! ## A237048.P11838714921364749844

`A057427(A196020(n+1))`
-/

namespace A237048.P11838714921364749844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A196020 (n + 1)).toNat

end

end A237048.P11838714921364749844

/-! ## A237048.P5741721846754500376

`A057427(A261699(n+1))`
-/

namespace A237048.P5741721846754500376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A261699 (n + 1)).toNat

end

end A237048.P5741721846754500376

/-! ## A237048.P4692341544704269095

`char[lt[0, A286013(n+1)]]`
-/

namespace A237048.P4692341544704269095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A237048.P4692341544704269095

/-! ## A237048.P9498446003730990361

`A057427(A211343(n+1))`
-/

namespace A237048.P9498446003730990361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A211343 (n + 1)).toNat

end

end A237048.P9498446003730990361

/-! ## A237048.P17469986415157625217

`A057427(A286013(n+1))`
-/

namespace A237048.P17469986415157625217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286013 (n + 1)).toNat

end

end A237048.P17469986415157625217

/-! ## A237048.P10016659265477686941

`A211343(n+1)²/A236104(n+1)`
-/

namespace A237048.P10016659265477686941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211343 (n + 1) ^ 2 : ℚ) / (A236104 (n + 1) : ℚ)

end

end A237048.P10016659265477686941

/-! ## A237048.P16698396068756801195

`A196020(n+1)%2`
-/

namespace A237048.P16698396068756801195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) 2

end

end A237048.P16698396068756801195

/-! ## A237048.P16432256611013741114

`and(1, A196020(Δ[n²]-n))`
-/

namespace A237048.P16432256611013741114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A196020 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A237048.P16432256611013741114

/-! ## A237048.P6132511147908451529

`A000035(A196020(n+1))`
-/

namespace A237048.P6132511147908451529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A196020 (n + 1)).toNat

end

end A237048.P6132511147908451529

/-! ## A237048.P15336252800122705767

`A049046(A196020(n+1)+1)`
-/

namespace A237048.P15336252800122705767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A196020 (n + 1) + 1).toNat

end

end A237048.P15336252800122705767

/-! ## A237048.P5702172879329857615

`A057979(A196020(n+1)+1)`
-/

namespace A237048.P5702172879329857615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A196020 (n + 1) + 1).toNat

end

end A237048.P5702172879329857615

/-! ## A237048.P9078032776318071507

`A059841(A196020(n+1)+1)`
-/

namespace A237048.P9078032776318071507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A196020 (n + 1) + 1).toNat

end

end A237048.P9078032776318071507

/-! ## A237048.P4223080920354091999

`ceil(A196020(n+1)/A016825(n))`
-/

namespace A237048.P4223080920354091999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℚ) / (A016825 n : ℚ)⌉

end

end A237048.P4223080920354091999

/-! ## A237048.P140007680206008862

`1-A000086(A196020(n+1)+1)`
-/

namespace A237048.P140007680206008862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000086 (A196020 (n + 1) + 1).toNat

end

end A237048.P140007680206008862

/-! ## A237048.P16538125351077078884

`A020639(A196020(n+1)+1)-1`
-/

namespace A237048.P16538125351077078884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A196020 (n + 1) + 1).toNat - 1

end

end A237048.P16538125351077078884

/-! ## A237048.P18077825604715124424

`1-A193356(A196020(n+1)+1)`
-/

namespace A237048.P18077825604715124424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A193356 (A196020 (n + 1) + 1).toNat

end

end A237048.P18077825604715124424

/-! ## A237048.P4056312440634989175

`1-A142150(A196020(n+1)+2)`
-/

namespace A237048.P4056312440634989175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A142150 (A196020 (n + 1) + 2).toNat

end

end A237048.P4056312440634989175

/-! ## A237048.P12595846928240191197

`A196020(n+1)/A338721(n+1)`
-/

namespace A237048.P12595846928240191197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196020 (n + 1) : ℚ) / (A338721 (n + 1) : ℚ)

end

end A237048.P12595846928240191197

/-! ## A237048.P9473125143082920438

`gcd(A196020(n+1), A211343(n+1))`
-/

namespace A237048.P9473125143082920438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196020 (n + 1)) (A211343 (n + 1))

end

end A237048.P9473125143082920438

/-! ## A237048.P2032465577580267920

`ceil(A196020(n+1)/A000040(n+1))`
-/

namespace A237048.P2032465577580267920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A237048.P2032465577580267920

/-!
# A237049: Number of ordered ways to write n = i + j + k (0 < i <= j <= k) with i,j,k not all equal such that sigma(i)*sigma(j)*sigma(k) is a cube, where sigma(m) denotes the sum of all positive divisors of m.

The programs for A237049, there is no canonical definition to state claims against.
-/

/-! ## A237049.P10085076920177106084

`∑{e}[∏{p}[n+1, #], #]%A354741(A301569(2*(n+1)))`
-/

namespace A237049.P10085076920177106084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A354741 (A301569 (2 * (n + 1))).toNat)

end

end A237049.P10085076920177106084

/-! ## A237049.P11611614726989740716

`A309668(n+1)%A124765(A006498(n))`
-/

namespace A237049.P11611614726989740716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309668 (n + 1)) (A124765 (A006498 n).toNat)

end

end A237049.P11611614726989740716

/-! ## A237049.P2852985444726664449

`and(A049592(A176063(n)), A056968(n+1))`
-/

namespace A237049.P2852985444726664449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049592 (A176063 n).toNat) (A056968 (n + 1))

end

end A237049.P2852985444726664449

/-! ## A237049.P10770102691515950011

`A124760(and(A006355(n), A201715(n+1)))`
-/

namespace A237049.P10770102691515950011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (Int.land (A006355 n) (A201715 (n + 1))).toNat

end

end A237049.P10770102691515950011

/-! ## A237049.P9471898972728317134

`A304038(gcd(A175740(2*n+3), A180414(n)))`
-/

namespace A237049.P9471898972728317134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (Int.gcd (A175740 (2 * n + 3)) (A180414 n))

end

end A237049.P9471898972728317134

/-!
# A237050: Number of ways to write n = i_1 + i_2 + i_3 + i_4 + i_5 (0 < i_1 <= i_2 <= i_3 <= i_4 <= i_5) with i_1, i_2, ..., i_5 not all equal such that the product i_1*i_2*i_3*i_4*i_5 is a fifth power.

The programs for A237050, there is no canonical definition to state claims against.
-/

/-! ## A237050.P8665730789221418591

`and(A000232(A079398(n+1)), A004216(n+1))`
-/

namespace A237050.P8665730789221418591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000232 (A079398 (n + 1)).toNat) (A004216 (n + 1))

end

end A237050.P8665730789221418591

/-! ## A237050.P8166366352296673173

`A030308(floor(A056058(n+1)/A000040(3*n+1)))`
-/

namespace A237050.P8166366352296673173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 ⌊(A056058 (n + 1) : ℚ) / (A000040 (3 * n + 1) : ℚ)⌋.toNat

end

end A237050.P8166366352296673173

/-! ## A237050.P9957955048495130333

`A000232(A079398(n+1))%A000010(A137735(n))`
-/

namespace A237050.P9957955048495130333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000232 (A079398 (n + 1)).toNat) (A000010 (A137735 n).toNat)

end

end A237050.P9957955048495130333

/-! ## A237050.P12054960452227455015

`A363486(A120250(n+1))%A055642(n)`
-/

namespace A237050.P12054960452227455015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363486 (A120250 (n + 1)).toNat) (A055642 n)

end

end A237050.P12054960452227455015

/-! ## A237050.P5542162790622449455

`A107115(2*n+1)%A137214(A169718(n))`
-/

namespace A237050.P5542162790622449455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107115 (2 * n + 1)) (A137214 (A169718 n).toNat)

end

end A237050.P5542162790622449455

/-!
# A237051: Smallest set of distinct numbers such that the sum of their reciprocals is 1 and each number is of the form p^i*q^j where p and q are distinct primes and i and j are positive.

The programs for A237051, there is no canonical definition to state claims against.
-/

/-! ## A237051.P2253467541467325628

`A299992(lt[∏{p}[n+1, -#], A299970(n)])`
-/

namespace A237051.P2253467541467325628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A237051.P2253467541467325628

/-! ## A237051.P18031070513314908941

`A299992(lt[∏{p}[n+1, -#], A299971(n+1)])`
-/

namespace A237051.P18031070513314908941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A237051.P18031070513314908941

/-! ## A237051.P4955166537453258491

`A299992(lt[∏{p}[n+1, -#], A299974(n+1)])`
-/

namespace A237051.P4955166537453258491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A237051.P4955166537453258491

/-! ## A237051.P3850800315960659127

`A299992(lt[A379625(n+3), A299971(n+1)])`
-/

namespace A237051.P3850800315960659127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379625 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A237051.P3850800315960659127

/-!
# A237052: Numbers n such that (49^n + 1)/50 is prime.

The programs for A237052, there is no canonical definition to state claims against.
-/

/-! ## A237052.P11001777091494546570

`p?[A174571(A138923(n+1))]`
-/

namespace A237052.P11001777091494546570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A138923 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237052.P11001777091494546570

/-!
# A237053: Smallest number k such that some subset of n+1..n+k can be summed and added to n to produce a prime.

The programs for A237053, there is no canonical definition to state claims against.
-/

/-! ## A237053.P10909148915144973195

`(p?[A210442(n)]+2)%A053989(n+1)`
-/

namespace A237053.P10909148915144973195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2) (A053989 (n + 1))

end

end A237053.P10909148915144973195

/-! ## A237053.P17303627176540074250

`A254407((4*n+5)²)%A053989(n+1)`
-/

namespace A237053.P17303627176540074250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254407 ((4 * n + 5) ^ 2)) (A053989 (n + 1))

end

end A237053.P17303627176540074250

/-! ## A237053.P5754105369221609173

`A004769(A002965(n))%A053989(n+1)`
-/

namespace A237053.P5754105369221609173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004769 (A002965 n).toNat) (A053989 (n + 1))

end

end A237053.P5754105369221609173

/-! ## A237053.P11639981030375648370

`A045965(A001752(n))%A053989(n+1)`
-/

namespace A237053.P11639981030375648370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045965 (A001752 n).toNat) (A053989 (n + 1))

end

end A237053.P11639981030375648370

/-! ## A237053.P14190457002465627634

`A334441(A040081(n+1)^A293443(n+1))`
-/

namespace A237053.P14190457002465627634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334441 (SequenceMachineLib.roundAway ((A040081 (n + 1) : ℚ) ^ (A293443 (n + 1) : ℤ))).toNat

end

end A237053.P14190457002465627634

/-!
# A237054: a(1)=1, a(n) = (a(n-1) + n) XOR n.

The programs for A237054, the canonical program `A237054.P17895621016256963119` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237054 has offset 1).

The definition of A237054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237054.P17895621016256963119

`xor(n+1, a(n-1)+1+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237054

/-- `xor(n+1, a(n-1)+1+n)` -/
def P17895621016256963119.Spec : Prop :=
  ∀ n, (P17895621016256963119.a n : ℤ) = A237054 (n + 1)

theorem P17895621016256963119.correct : P17895621016256963119.Spec := by
  intro n
  simp only [A237054, Nat.add_sub_cancel]

end A237054

/-! ## A237054.P16217755673563889573

`xor(a(A023443(n))+n+1, n+1)` with `a(0)=1`
-/

namespace A237054.P16217755673563889573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (A023443 n).toNat + (n + 1)) (n + 1)

end

end A237054.P16217755673563889573

namespace A237054

/-- `xor(a(A023443(n))+n+1, n+1)` -/
def P16217755673563889573.Spec : Prop :=
  ∀ n, (P16217755673563889573.a n : ℤ) = A237054 (n + 1)

end A237054

/-! ## A237054.P7592261080803025469

`xor(n+1, a(A000720(A006093(n)))+n+1)` with `a(0)=1`
-/

namespace A237054.P7592261080803025469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (n + 1) (a (A000720 (A006093 n).toNat).toNat + (n + 1))

end

end A237054.P7592261080803025469

namespace A237054

/-- `xor(n+1, a(A000720(A006093(n)))+n+1)` -/
def P7592261080803025469.Spec : Prop :=
  ∀ n, (P7592261080803025469.a n : ℤ) = A237054 (n + 1)

end A237054

/-! ## A237054.P325986631030506645

`xor(a(n-1)-xor(n, -1), A008620(3*n))` with `a(0)=1`
-/

namespace A237054.P325986631030506645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) - Int.xor (n : ℤ) (-1)) (A008620 (3 * n))

end

end A237054.P325986631030506645

namespace A237054

/-- `xor(a(n-1)-xor(n, -1), A008620(3*n))` -/
def P325986631030506645.Spec : Prop :=
  ∀ n, P325986631030506645.a n = A237054 (n + 1)

end A237054

/-! ## A237054.P10253759881531891459

`xor(A014681(a(n-1))+n, n+1)` with `a(0)=1`
-/

namespace A237054.P10253759881531891459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A014681 (a (n - 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A237054.P10253759881531891459

namespace A237054

/-- `xor(A014681(a(n-1))+n, n+1)` -/
def P10253759881531891459.Spec : Prop :=
  ∀ n, P10253759881531891459.a n = A237054 (n + 1)

end A237054

/-! ## A237054.P14519377592279253352

`xor(A285326(a(n-1))+n, n+1)` with `a(0)=1`
-/

namespace A237054.P14519377592279253352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A285326 (a (n - 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A237054.P14519377592279253352

namespace A237054

/-- `xor(A285326(a(n-1))+n, n+1)` -/
def P14519377592279253352.Spec : Prop :=
  ∀ n, P14519377592279253352.a n = A237054 (n + 1)

end A237054

/-! ## A237054.P3965568570093612552

`xor(a(A259361(n²))+n+1, n+1)` with `a(0)=1`
-/

namespace A237054.P3965568570093612552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (A259361 (n ^ 2)).toNat + (n + 1)) (n + 1)

end

end A237054.P3965568570093612552

namespace A237054

/-- `xor(a(A259361(n²))+n+1, n+1)` -/
def P3965568570093612552.Spec : Prop :=
  ∀ n, (P3965568570093612552.a n : ℤ) = A237054 (n + 1)

end A237054

/-!
# A237055: Least prime p not already included in the sequence such that p + 2*n is prime.

The programs for A237055, there is no canonical definition to state claims against.
-/

/-! ## A237055.P16758109828133129639

`A065091(A113004(n+1))`
-/

namespace A237055.P16758109828133129639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A113004 (n + 1)).toNat

end

end A237055.P16758109828133129639

/-! ## A237055.P16597363116500197394

`A000040(A113004(n+1)+1)`
-/

namespace A237055.P16597363116500197394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113004 (n + 1) + 1).toNat

end

end A237055.P16597363116500197394

/-! ## A237055.P9974754474369015134

`A006005(A113004(n+1)+1)`
-/

namespace A237055.P9974754474369015134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A113004 (n + 1) + 1).toNat

end

end A237055.P9974754474369015134

/-! ## A237055.P4497566616589487098

`A176997(A113004(n+1)+1)`
-/

namespace A237055.P4497566616589487098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (A113004 (n + 1) + 1).toNat

end

end A237055.P4497566616589487098

/-! ## A237055.P2928113573028252238

`A008578(A113004(n+1)+2)`
-/

namespace A237055.P2928113573028252238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A113004 (n + 1) + 2).toNat

end

end A237055.P2928113573028252238

/-! ## A237055.P15889008514462814496

`A015919(A113004(n+1)+2)`
-/

namespace A237055.P15889008514462814496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A113004 (n + 1) + 2).toNat

end

end A237055.P15889008514462814496

/-! ## A237055.P13557912630895382037

`A324050(A113004(n+1)+2)`
-/

namespace A237055.P13557912630895382037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A113004 (n + 1) + 2).toNat

end

end A237055.P13557912630895382037

/-! ## A237055.P15266930864692020307

`A006093(A113004(n+1)+1)+1`
-/

namespace A237055.P15266930864692020307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A113004 (n + 1) + 1).toNat + 1

end

end A237055.P15266930864692020307

/-! ## A237055.P15441877004359850514

`A008864(A113004(n+1)+1)-1`
-/

namespace A237055.P15441877004359850514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A113004 (n + 1) + 1).toNat - 1

end

end A237055.P15441877004359850514

/-! ## A237055.P9471437220572571168

`A040976(A113004(n+1)+1)+2`
-/

namespace A237055.P9471437220572571168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A113004 (n + 1) + 1).toNat + 2

end

end A237055.P9471437220572571168

/-!
# A237056: Ludic and non-ludic numbers interleaved.

The programs for A237056, there is no canonical definition to state claims against.
-/

/-! ## A237056.P11102213153656805314

`A026239(A073846(n+1))%p?[A145126(n)]`
-/

namespace A237056.P11102213153656805314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026239 (A073846 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A237056.P11102213153656805314

/-! ## A237056.P12469539665533608241

`A026239(A073846(n+1)%A062574(n+1))`
-/

namespace A237056.P12469539665533608241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (Int.tmod (A073846 (n + 1)) (A062574 (n + 1))).toNat

end

end A237056.P12469539665533608241

/-! ## A237056.P15833688791089618053

`A073846(A065190(n+1)%A145692(n+3))`
-/

namespace A237056.P15833688791089618053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.tmod (A065190 (n + 1)) (A145692 (n + 3))).toNat

end

end A237056.P15833688791089618053

/-! ## A237056.P16211733384893161755

`A073846(A065190(n+1))+C(n, A265900(n+1))`
-/

namespace A237056.P16211733384893161755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (n + 1)).toNat + (Nat.choose n (A265900 (n + 1)).toNat : ℤ)

end

end A237056.P16211733384893161755

/-! ## A237056.P12573739688537958280

`A073846(A065190(n+1))+C(n, A319160(3*n+1))`
-/

namespace A237056.P12573739688537958280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (n + 1)).toNat + (Nat.choose n (A319160 (3 * n + 1)).toNat : ℤ)

end

end A237056.P12573739688537958280

/-!
# A237057: a(n) = smallest prime > a(n-1) such that a(n)+4n is also prime.

The programs for A237057, there is no canonical definition to state claims against.
-/

/-! ## A237057.P2408638830298194370

`p?[lt[A323890(n+1), 31]]`
-/

namespace A237057.P2408638830298194370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323890 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A237057.P2408638830298194370

/-! ## A237057.P17095118313226696862

`p?[∑[A085684(A252867(n))]]`
-/

namespace A237057.P17095118313226696862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085684 (A252867 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237057.P17095118313226696862

/-! ## A237057.P12956929547125751659

`p?[∑[A326073(A244446(n+1))]]`
-/

namespace A237057.P12956929547125751659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326073 (A244446 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237057.P12956929547125751659

/-! ## A237057.P12685450757193726920

`∩[A104885(n+1), record[A089850(n)]]`
-/

namespace A237057.P12685450757193726920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104885 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237057.P12685450757193726920

/-! ## A237057.P2584178807732061159

`∩[A250395(n+1), A308078(n+1)]`
-/

namespace A237057.P2584178807732061159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237057.P2584178807732061159

/-!
# A237058: Inverse permutation to A237056.

The programs for A237058, there is no canonical definition to state claims against.
-/

/-! ## A237058.P6087858281568327285

`A057427(A061509(n))*A073897(n+1)`
-/

namespace A237058.P6087858281568327285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A061509 n).toNat * A073897 (n + 1)

end

end A237058.P6087858281568327285

/-! ## A237058.P2448195689491713286

`A001511(A299269(n))*A073897(n+1)`
-/

namespace A237058.P2448195689491713286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A299269 n).toNat * A073897 (n + 1)

end

end A237058.P2448195689491713286

/-! ## A237058.P3217649717142962489

`A073897(n+1)%A096566(A227135(n))`
-/

namespace A237058.P3217649717142962489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073897 (n + 1)) (A096566 (A227135 n).toNat)

end

end A237058.P3217649717142962489

/-! ## A237058.P13424470941657271739

`lcm(A033999(A000031(n)), A073897(n+1))`
-/

namespace A237058.P13424470941657271739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A000031 n).toNat) (A073897 (n + 1))

end

end A237058.P13424470941657271739

/-! ## A237058.P15536401156977221459

`A073897(n+1)+A010052(A355948(n+1))`
-/

namespace A237058.P15536401156977221459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1) + A010052 (A355948 (n + 1)).toNat

end

end A237058.P15536401156977221459

/-!
# A237059: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237059, there is no canonical definition to state claims against.
-/

/-! ## A237059.P2245320569885057090

`A237067(∑[4*n]+1)`
-/

namespace A237059.P2245320569885057090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237059.P2245320569885057090

/-! ## A237059.P13277427177390868980

`lcm(A033999(n), A237067(A001844(n)))`
-/

namespace A237059.P13277427177390868980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237067 (A001844 n).toNat)

end

end A237059.P13277427177390868980

/-! ## A237059.P9483950055699813212

`or(A000007(n), A237067(A001844(n)))`
-/

namespace A237059.P9483950055699813212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237067 (A001844 n).toNat)

end

end A237059.P9483950055699813212

/-! ## A237059.P8116017594912908222

`or(A029429(n), A237067(A001844(n)))`
-/

namespace A237059.P8116017594912908222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029429 n) (A237067 (A001844 n).toNat)

end

end A237059.P8116017594912908222

/-! ## A237059.P1742881361275808398

`A216634(n+1)*A237067(A001844(n))`
-/

namespace A237059.P1742881361275808398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216634 (n + 1) * A237067 (A001844 n).toNat

end

end A237059.P1742881361275808398

/-!
# A237060: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237060, there is no canonical definition to state claims against.
-/

/-! ## A237060.P17359879132287021860

`A237067(∑[n]+1)`
-/

namespace A237060.P17359879132287021860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237060.P17359879132287021860

/-! ## A237060.P8478018196068697273

`record[A010054(n)*A237067(n+1)]`
-/

namespace A237060.P8478018196068697273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237060.P8478018196068697273

/-! ## A237060.P3803269411804290840

`record[gcd(A002262(n), A237067(n+1))]`
-/

namespace A237060.P3803269411804290840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237067 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237060.P3803269411804290840

/-! ## A237060.P17032470820426113335

`record[A237067(n+1)/A303624(n+1)]`
-/

namespace A237060.P17032470820426113335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237067 (n + 1) : ℚ) / (A303624 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237060.P17032470820426113335

/-! ## A237060.P17950148062795345779

`record[root(A237067(n+1), A129322(n+1))]`
-/

namespace A237060.P17950148062795345779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237067 (n + 1) : ℝ) ^ (1 / (A129322 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237060.P17950148062795345779

/-!
# A237061: Number of (n+1) X (2+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2 X 2 subblock equal.

The programs for A237061, there is no canonical definition to state claims against.
-/

/-! ## A237061.P18286880452570498922

`A237067(∑[n+1]+2)`
-/

namespace A237061.P18286880452570498922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237061.P18286880452570498922

/-! ## A237061.P4321550200146566744

`record[A010054(n)*A237067(n+2)]`
-/

namespace A237061.P4321550200146566744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237061.P4321550200146566744

/-! ## A237061.P10700184447171345922

`record[gcd(A002262(n), A237067(n+2))]`
-/

namespace A237061.P10700184447171345922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237067 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237061.P10700184447171345922

/-! ## A237061.P17273176819076328184

`record[A237067(Δ[A003453(n+5)])]`
-/

namespace A237061.P17273176819076328184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237061.P17273176819076328184

/-! ## A237061.P13742312976087851402

`record[A237067(A198453(n+1))]`
-/

namespace A237061.P13742312976087851402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237061.P13742312976087851402

/-!
# A237062: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237062, there is no canonical definition to state claims against.
-/

/-! ## A237062.P16698546568037358803

`A237067(∑[n+2]+4)`
-/

namespace A237062.P16698546568037358803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237062.P16698546568037358803

/-! ## A237062.P13971009628325944451

`lcm(2, A237067(A167614(n+1)))`
-/

namespace A237062.P13971009628325944451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237067 (A167614 (n + 1)).toNat)

end

end A237062.P13971009628325944451

/-! ## A237062.P9448846407892945435

`A237067(A167614(n+1))+A200214(n+1)`
-/

namespace A237062.P9448846407892945435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A167614 (n + 1)).toNat + A200214 (n + 1)

end

end A237062.P9448846407892945435

/-! ## A237062.P11693946457121706828

`A237067(A167614(n+1))*A318809(n+1)`
-/

namespace A237062.P11693946457121706828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A167614 (n + 1)).toNat * A318809 (n + 1)

end

end A237062.P11693946457121706828

/-! ## A237062.P18316537027103156833

`A237067(A167614(n+1))%A238253(n+1)`
-/

namespace A237062.P18316537027103156833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237067 (A167614 (n + 1)).toNat) (A238253 (n + 1))

end

end A237062.P18316537027103156833

/-!
# A237063: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237063, there is no canonical definition to state claims against.
-/

/-! ## A237063.P13080654146114536920

`A237067(A374004(n+1))`
-/

namespace A237063.P13080654146114536920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A374004 (n + 1)).toNat

end

end A237063.P13080654146114536920

/-! ## A237063.P6003718055946865930

`A237067(A052905(n)+9)`
-/

namespace A237063.P6003718055946865930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A052905 n + 9).toNat

end

end A237063.P6003718055946865930

/-! ## A237063.P4421631378746183374

`A237067(A055999(n)+10)`
-/

namespace A237063.P4421631378746183374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A055999 n + 10).toNat

end

end A237063.P4421631378746183374

/-! ## A237063.P11897693708908652484

`A237067(A167614(n+2)+1)`
-/

namespace A237063.P11897693708908652484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A167614 (n + 2) + 1).toNat

end

end A237063.P11897693708908652484

/-! ## A237063.P14116330266991218731

`A237067(A166136(n+2)-2)`
-/

namespace A237063.P14116330266991218731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A166136 (n + 2) - 2).toNat

end

end A237063.P14116330266991218731

/-!
# A237064: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237064, there is no canonical definition to state claims against.
-/

/-! ## A237064.P13127239899342446017

`A237067(A374005(n+1))`
-/

namespace A237064.P13127239899342446017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A374005 (n + 1)).toNat

end

end A237064.P13127239899342446017

/-! ## A237064.P2420280052002219556

`A237067(A155212(n)+13)`
-/

namespace A237064.P2420280052002219556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A155212 n + 13).toNat

end

end A237064.P2420280052002219556

/-! ## A237064.P14461065181189687874

`A237067(A056000(n)+15)`
-/

namespace A237064.P14461065181189687874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A056000 n + 15).toNat

end

end A237064.P14461065181189687874

/-! ## A237064.P6535006737015585761

`A237067(eq[6, A131818(n+1)])`
-/

namespace A237064.P6535006737015585761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237064.P6535006737015585761

/-! ## A237064.P15583084169567457711

`A237067(Δ[A264443(n)])`
-/

namespace A237064.P15583084169567457711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (f1 (n + 1) - f1 n).toNat

end

end A237064.P15583084169567457711

/-!
# A237065: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237065, there is no canonical definition to state claims against.
-/

/-! ## A237065.P4870899886615830077

`A237067(A374007(n+1))`
-/

namespace A237065.P4870899886615830077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A374007 (n + 1)).toNat

end

end A237065.P4870899886615830077

/-! ## A237065.P8588947992904205005

`A237067(A167499(n+4)+1)`
-/

namespace A237065.P8588947992904205005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A167499 (n + 4) + 1).toNat

end

end A237065.P8588947992904205005

/-! ## A237065.P10211350140925638942

`A237067(eq[7, A131818(n+1)])`
-/

namespace A237065.P10211350140925638942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237065.P10211350140925638942

/-! ## A237065.P2589627343845730492

`A237067(A052905(n+3))`
-/

namespace A237065.P2589627343845730492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A052905 (n + 3)).toNat

end

end A237065.P2589627343845730492

/-! ## A237065.P5882428901335688552

`A237067(eq[3, A219347(n)])`
-/

namespace A237065.P5882428901335688552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237065.P5882428901335688552

/-!
# A237066: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237066, there is no canonical definition to state claims against.
-/

/-! ## A237066.P16013312851405630306

`A237067(A374008(n+1))`
-/

namespace A237066.P16013312851405630306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A374008 (n + 1)).toNat

end

end A237066.P16013312851405630306

/-! ## A237066.P6668355723374573688

`A237067(eq[8, A131818(n+1)])`
-/

namespace A237066.P6668355723374573688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237066.P6668355723374573688

/-! ## A237066.P16032217926750996395

`A237067(A055999(n+4))`
-/

namespace A237066.P16032217926750996395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (A055999 (n + 4)).toNat

end

end A237066.P16032217926750996395

/-! ## A237066.P14369151245380425983

`A237067(eq[4, A219347(n)])`
-/

namespace A237066.P14369151245380425983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237066.P14369151245380425983

/-! ## A237066.P14944224416938414626

`A237067(eq[6, A193592(n)])`
-/

namespace A237066.P14944224416938414626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237066.P14944224416938414626

/-!
# A237067: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237067, there is no canonical definition to state claims against.
-/

/-! ## A237067.P18293203434539155726

`or(A034189(A000096(n)), A236789(n+1))`
-/

namespace A237067.P18293203434539155726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034189 (A000096 n).toNat) (A236789 (n + 1))

end

end A237067.P18293203434539155726

/-!
# A237068: 

The programs for A237068, there is no canonical definition to state claims against.
-/

/-! ## A237068.P3619038064366970811

`A237076((n+1)²+n²)`
-/

namespace A237068.P3619038064366970811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 ((n + 1) ^ 2 + n ^ 2)

end

end A237068.P3619038064366970811

/-!
# A237069: Number of (n+1)X(1+1) 0..3 arrays with the upper median of every 2X2 subblock equal.

The programs for A237069, there is no canonical definition to state claims against.
-/

/-! ## A237069.P2655005908818703203

`A237076(∑[n]+1)`
-/

namespace A237069.P2655005908818703203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237069.P2655005908818703203

/-! ## A237069.P13882803256233037654

`lcm(2, A237076(A000124(n)))`
-/

namespace A237069.P13882803256233037654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237076 (A000124 n).toNat)

end

end A237069.P13882803256233037654

/-! ## A237069.P16889256729180320701

`A237076(A000124(n))+val(A020639(n+1), 4)`
-/

namespace A237069.P16889256729180320701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A000124 n).toNat + (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 4 : ℤ)

end

end A237069.P16889256729180320701

/-! ## A237069.P2973245516906625812

`A237076(A000124(n))+val(A000040(n+1)+2, 10)`
-/

namespace A237069.P2973245516906625812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A000124 n).toNat + (SequenceMachineLib.valuation (A000040 (n + 1) + 2).toNat 10 : ℤ)

end

end A237069.P2973245516906625812

/-! ## A237069.P2419952262124566507

`A237076(A000124(n))+floor(n/25)*A006530(n+2)`
-/

namespace A237069.P2419952262124566507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A000124 n).toNat + ⌊(n : ℚ) / 25⌋ * A006530 (n + 2)

end

end A237069.P2419952262124566507

/-!
# A237070: Number of (n+1)X(2+1) 0..3 arrays with the upper median of every 2X2 subblock equal.

The programs for A237070, there is no canonical definition to state claims against.
-/

/-! ## A237070.P8461205959192797623

`A237076(∑[n+1]+2)`
-/

namespace A237070.P8461205959192797623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237070.P8461205959192797623

/-! ## A237070.P9180260427735379063

`record[A010054(n)*A237076(n+2)]`
-/

namespace A237070.P9180260427735379063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237070.P9180260427735379063

/-! ## A237070.P14747787572180131176

`record[A237076(abs(A201163(n)))]`
-/

namespace A237070.P14747787572180131176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237070.P14747787572180131176

/-! ## A237070.P3289267575381650694

`record[A237076(Δ[A003453(n+5)])]`
-/

namespace A237070.P3289267575381650694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237070.P3289267575381650694

/-!
# A237071: Number of (n+1)X(3+1) 0..3 arrays with the upper median of every 2X2 subblock equal.

The programs for A237071, there is no canonical definition to state claims against.
-/

/-! ## A237071.P1383082669456350452

`A237076(∑[n+2]+4)`
-/

namespace A237071.P1383082669456350452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237071.P1383082669456350452

/-! ## A237071.P10424007365923040307

`lcm(2, A237076(A167614(n+1)))`
-/

namespace A237071.P10424007365923040307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237076 (A167614 (n + 1)).toNat)

end

end A237071.P10424007365923040307

/-! ## A237071.P14631664507911097420

`A237076(A167614(n+1))+A185284(n)`
-/

namespace A237071.P14631664507911097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A167614 (n + 1)).toNat + A185284 n

end

end A237071.P14631664507911097420

/-! ## A237071.P12425827598975550856

`A237076(A167614(n+1))+A000035(2*n)`
-/

namespace A237071.P12425827598975550856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A237071.P12425827598975550856

/-! ## A237071.P11573850845342754617

`A237076(A167614(n+1))%A237072(n+1)`
-/

namespace A237071.P11573850845342754617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237076 (A167614 (n + 1)).toNat) (A237072 (n + 1))

end

end A237071.P11573850845342754617

/-!
# A237072: Number of (n+1)X(4+1) 0..3 arrays with the upper median of every 2X2 subblock equal.

The programs for A237072, there is no canonical definition to state claims against.
-/

/-! ## A237072.P580418095917531829

`A237076(A052905(n)+9)`
-/

namespace A237072.P580418095917531829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A052905 n + 9).toNat

end

end A237072.P580418095917531829

/-! ## A237072.P3771834267303678149

`A237076(eq[4, A200329(n+1)])`
-/

namespace A237072.P3771834267303678149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237072.P3771834267303678149

/-!
# A237074: 

The programs for A237074, there is no canonical definition to state claims against.
-/

/-! ## A237074.P6131328920088604247

`A237076(A052905(n+3))`
-/

namespace A237074.P6131328920088604247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237076 (A052905 (n + 3)).toNat

end

end A237074.P6131328920088604247

/-!
# A237077: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A237077, there is no canonical definition to state claims against.
-/

/-! ## A237077.P6591146352000835684

`A237082(∑[n]+1)`
-/

namespace A237077.P6591146352000835684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237077.P6591146352000835684

/-! ## A237077.P10929915566996111968

`record[A237082(A276954(n+1))]`
-/

namespace A237077.P10929915566996111968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237077.P10929915566996111968

/-! ## A237077.P3256964049156153375

`record[A237082(A286245(n+1))]`
-/

namespace A237077.P3256964049156153375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237077.P3256964049156153375

/-! ## A237077.P6277525068906282701

`record[A237082(A000124(∑{digits}[n, #]))]`
-/

namespace A237077.P6277525068906282701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237077.P6277525068906282701

/-! ## A237077.P17134862660254535359

`record[A010054(n)*A237082(n+1)]`
-/

namespace A237077.P17134862660254535359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237077.P17134862660254535359

/-!
# A237078: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A237078, there is no canonical definition to state claims against.
-/

/-! ## A237078.P4596038515853141086

`A237082(∑[n+1]+2)`
-/

namespace A237078.P4596038515853141086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237078.P4596038515853141086

/-! ## A237078.P27279674111592213

`record[A010054(n)*A237082(n+2)]`
-/

namespace A237078.P27279674111592213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237078.P27279674111592213

/-! ## A237078.P12916588324621800141

`and(-1, A237082(eq[1, A002262(n)]+1))`
-/

namespace A237078.P12916588324621800141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A237082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A237078.P12916588324621800141

/-! ## A237078.P14388408936503365284

`record[A237082(A286245(n+1)+A010054(n))]`
-/

namespace A237078.P14388408936503365284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A286245 (n + 1) + A010054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237078.P14388408936503365284

/-! ## A237078.P11622657511843622337

`and(-2, A237082(A000096(n+1)))`
-/

namespace A237078.P11622657511843622337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A237082 (A000096 (n + 1)).toNat)

end

end A237078.P11622657511843622337

/-!
# A237079: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A237079, there is no canonical definition to state claims against.
-/

/-! ## A237079.P4966518244905276335

`A237082(∑[n+2]+4)`
-/

namespace A237079.P4966518244905276335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237079.P4966518244905276335

/-! ## A237079.P2839144863825030082

`lcm(2, A237082(A167614(n+1)))`
-/

namespace A237079.P2839144863825030082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237082 (A167614 (n + 1)).toNat)

end

end A237079.P2839144863825030082

/-! ## A237079.P15386030213659871048

`A237082(A167614(n+1))+A025442(n)`
-/

namespace A237079.P15386030213659871048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A167614 (n + 1)).toNat + A025442 n

end

end A237079.P15386030213659871048

/-! ## A237079.P1119469295349287783

`A237082(A167614(n+1))+A031346(n)`
-/

namespace A237079.P1119469295349287783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A167614 (n + 1)).toNat + A031346 n

end

end A237079.P1119469295349287783

/-! ## A237079.P201693218431222822

`A237082(A167614(n+1))+A178780(n)`
-/

namespace A237079.P201693218431222822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A167614 (n + 1)).toNat + A178780 n

end

end A237079.P201693218431222822

/-!
# A237080: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A237080, there is no canonical definition to state claims against.
-/

/-! ## A237080.P16730949394947370288

`A237082(∑[n+3]+7)`
-/

namespace A237080.P16730949394947370288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237080.P16730949394947370288

/-! ## A237080.P14329828221966560351

`A237082(A167614(n+2)+1)/A055642(n)`
-/

namespace A237080.P14329828221966560351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237082 (A167614 (n + 2) + 1).toNat : ℚ) / (A055642 n : ℚ)

end

end A237080.P14329828221966560351

/-!
# A237081: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A237081, there is no canonical definition to state claims against.
-/

/-! ## A237081.P2180868902136761827

`A237082(A374005(n+1))`
-/

namespace A237081.P2180868902136761827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A374005 (n + 1)).toNat

end

end A237081.P2180868902136761827

/-! ## A237081.P18363948764293550506

`A237082(A167499(n+3))`
-/

namespace A237081.P18363948764293550506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A167499 (n + 3)).toNat

end

end A237081.P18363948764293550506

/-! ## A237081.P4680875974403124888

`A237082(A155212(n)+13)`
-/

namespace A237081.P4680875974403124888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237082 (A155212 n + 13).toNat

end

end A237081.P4680875974403124888

/-!
# A237083: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237083, there is no canonical definition to state claims against.
-/

/-! ## A237083.P16606179936074355499

`A237090(∑[n]+1)`
-/

namespace A237083.P16606179936074355499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237083.P16606179936074355499

/-! ## A237083.P4602734341142904309

`lcm(2, A237090(A000124(n)))`
-/

namespace A237083.P4602734341142904309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237090 (A000124 n).toNat)

end

end A237083.P4602734341142904309

/-! ## A237083.P11508280895477142200

`record[A237090(A246276(n+1))]`
-/

namespace A237083.P11508280895477142200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237083.P11508280895477142200

/-! ## A237083.P16276840269365096626

`record[A237090(A276954(n+1))]`
-/

namespace A237083.P16276840269365096626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237083.P16276840269365096626

/-! ## A237083.P11049681665138868849

`record[A010054(n)*A237090(n+1)]`
-/

namespace A237083.P11049681665138868849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237083.P11049681665138868849

/-!
# A237084: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237084, there is no canonical definition to state claims against.
-/

/-! ## A237084.P18258330977246084112

`A237090(∑[n+1]+2)`
-/

namespace A237084.P18258330977246084112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237084.P18258330977246084112

/-! ## A237084.P5475581581036563328

`record[root(A237090(n+2), A166350(n+1))]`
-/

namespace A237084.P5475581581036563328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237090 (n + 2) : ℝ) ^ (1 / (A166350 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237084.P5475581581036563328

/-! ## A237084.P11493055708086941163

`record[gcd(A053615(2*n), A237090(n+2))]`
-/

namespace A237084.P11493055708086941163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 (2 * n)) (A237090 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237084.P11493055708086941163

/-! ## A237084.P2862084875394160509

`record[A237090(abs(A201163(n)))]`
-/

namespace A237084.P2862084875394160509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237084.P2862084875394160509

/-! ## A237084.P344880045548853672

`record[A237090(Δ[A003453(n+5)])]`
-/

namespace A237084.P344880045548853672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237084.P344880045548853672

/-!
# A237085: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237085, there is no canonical definition to state claims against.
-/

/-! ## A237085.P16757956271896337348

`A237090(∑[n+2]+4)`
-/

namespace A237085.P16757956271896337348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237085.P16757956271896337348

/-! ## A237085.P17395430447920325508

`record[root(A237090(n+4), A125233(n))]`
-/

namespace A237085.P17395430447920325508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237090 (n + 4) : ℝ) ^ (1 / (A125233 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237085.P17395430447920325508

/-! ## A237085.P5040351954719223328

`lcm((-1)^n, A237090(A167614(n+1)))`
-/

namespace A237085.P5040351954719223328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A237090 (A167614 (n + 1)).toNat)

end

end A237085.P5040351954719223328

/-! ## A237085.P3798446967814011528

`record[A154990(n+1)*A237090(n+4)]`
-/

namespace A237085.P3798446967814011528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A237090 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237085.P3798446967814011528

/-! ## A237085.P7339917137864791487

`record[root(A237090(n+4), A286232(n+1))]`
-/

namespace A237085.P7339917137864791487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237090 (n + 4) : ℝ) ^ (1 / (A286232 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237085.P7339917137864791487

/-!
# A237086: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237086, there is no canonical definition to state claims against.
-/

/-! ## A237086.P11176015321424004044

`A237090(∑[n+3]+7)`
-/

namespace A237086.P11176015321424004044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237086.P11176015321424004044

/-! ## A237086.P17453740114118550084

`A237090(A374004(n+1))+A179527(2*n+1)`
-/

namespace A237086.P17453740114118550084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A374004 (n + 1)).toNat + A179527 (2 * n + 1)

end

end A237086.P17453740114118550084

/-!
# A237087: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237087, there is no canonical definition to state claims against.
-/

/-! ## A237087.P12625944711201428780

`A237090(A374005(n+1))`
-/

namespace A237087.P12625944711201428780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A374005 (n + 1)).toNat

end

end A237087.P12625944711201428780

/-! ## A237087.P15081147236091764620

`A237090(A167499(n+3))`
-/

namespace A237087.P15081147236091764620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A167499 (n + 3)).toNat

end

end A237087.P15081147236091764620

/-! ## A237087.P12191504792224996272

`A237090(A155212(n)+13)`
-/

namespace A237087.P12191504792224996272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A155212 n + 13).toNat

end

end A237087.P12191504792224996272

/-! ## A237087.P6424437013180037952

`A237090(A056000(n)+15)`
-/

namespace A237087.P6424437013180037952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A056000 n + 15).toNat

end

end A237087.P6424437013180037952

/-! ## A237087.P6785069608290884403

`A237090(eq[7, A066657(n)])`
-/

namespace A237087.P6785069608290884403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237087.P6785069608290884403

/-!
# A237088: Number of (n+1) X (6+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A237088, there is no canonical definition to state claims against.
-/

/-! ## A237088.P17543902777544758226

`A237090(A374007(n+1))`
-/

namespace A237088.P17543902777544758226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A374007 (n + 1)).toNat

end

end A237088.P17543902777544758226

/-! ## A237088.P1036047234688402248

`A237090(A166136(n+4))`
-/

namespace A237088.P1036047234688402248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A166136 (n + 4)).toNat

end

end A237088.P1036047234688402248

/-! ## A237088.P4770504757919772954

`A237090(A056115(n)+21)`
-/

namespace A237088.P4770504757919772954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A056115 n + 21).toNat

end

end A237088.P4770504757919772954

/-! ## A237088.P16081496598932440436

`A237090(eq[7, A131818(n+1)])`
-/

namespace A237088.P16081496598932440436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237088.P16081496598932440436

/-! ## A237088.P7385315512047781876

`A237090(Δ[A023545(n+1)]+10)`
-/

namespace A237088.P7385315512047781876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (f1 (n + 1) - f1 n + 10).toNat

end

end A237088.P7385315512047781876

/-!
# A237089: Number of (n+1)X(7+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A237089, there is no canonical definition to state claims against.
-/

/-! ## A237089.P2604920671257242510

`A237090(A374008(n+1))`
-/

namespace A237089.P2604920671257242510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A374008 (n + 1)).toNat

end

end A237089.P2604920671257242510

/-! ## A237089.P11276179202104390469

`A237090(A056119(n)+28)`
-/

namespace A237089.P11276179202104390469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A056119 n + 28).toNat

end

end A237089.P11276179202104390469

/-! ## A237089.P9099747312713984460

`A237090(eq[11, A066657(n)])`
-/

namespace A237089.P9099747312713984460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237089.P9099747312713984460

/-! ## A237089.P15092052493545809811

`A237090(A167614(n+5)+4)`
-/

namespace A237089.P15092052493545809811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A167614 (n + 5) + 4).toNat

end

end A237089.P15092052493545809811

/-! ## A237089.P4853252249632233469

`A237090(A000124(n+6)+6)`
-/

namespace A237089.P4853252249632233469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237090 (A000124 (n + 6) + 6).toNat

end

end A237089.P4853252249632233469

/-!
# A237091: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock equal.

The programs for A237091, there is no canonical definition to state claims against.
-/

/-! ## A237091.P8910559238346823604

`A237099((n+1)²+n²)`
-/

namespace A237091.P8910559238346823604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 ((n + 1) ^ 2 + n ^ 2)

end

end A237091.P8910559238346823604

/-! ## A237091.P2399258940395686897

`record[A003982(n)*A237099(n+1)]`
-/

namespace A237091.P2399258940395686897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237091.P2399258940395686897

/-!
# A237092: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock equal.

The programs for A237092, there is no canonical definition to state claims against.
-/

/-! ## A237092.P13581040125329976857

`A237099(∑[n]+1)`
-/

namespace A237092.P13581040125329976857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237092.P13581040125329976857

/-! ## A237092.P15618521653355319653

`record[A010054(n)*A237099(n+1)]`
-/

namespace A237092.P15618521653355319653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237092.P15618521653355319653

/-! ## A237092.P2626099113905820452

`record[A237099(n+1)/A173585(n)]`
-/

namespace A237092.P2626099113905820452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237099 (n + 1) : ℚ) / (A173585 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237092.P2626099113905820452

/-! ## A237092.P18205463900841581423

`record[gcd(A002262(n), A237099(n+1))]`
-/

namespace A237092.P18205463900841581423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237092.P18205463900841581423

/-! ## A237092.P5543427983456649543

`record[root(A237099(n+1), A055129(n+1))]`
-/

namespace A237092.P5543427983456649543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237099 (n + 1) : ℝ) ^ (1 / (A055129 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237092.P5543427983456649543

/-!
# A237093: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237093, there is no canonical definition to state claims against.
-/

/-! ## A237093.P1687266485735007902

`A237099(∑[n+1]+2)`
-/

namespace A237093.P1687266485735007902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237093.P1687266485735007902

/-! ## A237093.P17807392593844389997

`record[A010054(n)*A237099(n+2)]`
-/

namespace A237093.P17807392593844389997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237093.P17807392593844389997

/-! ## A237093.P6279323932687893

`record[gcd(A002262(n), A237099(n+2))]`
-/

namespace A237093.P6279323932687893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237099 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237093.P6279323932687893

/-! ## A237093.P12079423585214849266

`record[root(A237099(n+2), A055129(n+1))]`
-/

namespace A237093.P12079423585214849266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237099 (n + 2) : ℝ) ^ (1 / (A055129 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237093.P12079423585214849266

/-! ## A237093.P1505986616838603752

`record[A237099(Δ[A003453(n+5)])]`
-/

namespace A237093.P1505986616838603752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237093.P1505986616838603752

/-!
# A237094: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237094, there is no canonical definition to state claims against.
-/

/-! ## A237094.P17474162129880277833

`A237099(∑[n+2]+4)`
-/

namespace A237094.P17474162129880277833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237094.P17474162129880277833

/-! ## A237094.P1951741553907026729

`lcm(2, A237099(A167614(n+1)))`
-/

namespace A237094.P1951741553907026729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237099 (A167614 (n + 1)).toNat)

end

end A237094.P1951741553907026729

/-! ## A237094.P8776235863944483746

`A237099(A167614(n+1))+A185284(n)`
-/

namespace A237094.P8776235863944483746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A167614 (n + 1)).toNat + A185284 n

end

end A237094.P8776235863944483746

/-! ## A237094.P15703458871412300358

`A237099(A167614(n+1))+A007394(n+1)`
-/

namespace A237094.P15703458871412300358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A167614 (n + 1)).toNat + A007394 (n + 1)

end

end A237094.P15703458871412300358

/-! ## A237094.P4950869026123107148

`record[A237099(A237519(n+2))]`
-/

namespace A237094.P4950869026123107148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A237519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237094.P4950869026123107148

/-!
# A237095: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237095, there is no canonical definition to state claims against.
-/

/-! ## A237095.P5803514599505085252

`A237099(A374004(n+1))`
-/

namespace A237095.P5803514599505085252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A374004 (n + 1)).toNat

end

end A237095.P5803514599505085252

/-! ## A237095.P11657450697907792484

`A237099(A141214(n)+7)`
-/

namespace A237095.P11657450697907792484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A141214 n + 7).toNat

end

end A237095.P11657450697907792484

/-! ## A237095.P1635893309126807847

`A237099(A052905(n)+9)`
-/

namespace A237095.P1635893309126807847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A052905 n + 9).toNat

end

end A237095.P1635893309126807847

/-! ## A237095.P11503179994705622411

`A237099(A055999(n)+10)`
-/

namespace A237095.P11503179994705622411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A055999 n + 10).toNat

end

end A237095.P11503179994705622411

/-! ## A237095.P5039937516554718122

`A237099(A167614(n+2)+1)`
-/

namespace A237095.P5039937516554718122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A167614 (n + 2) + 1).toNat

end

end A237095.P5039937516554718122

/-!
# A237096: Number of (n+1) X (5+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock equal.

The programs for A237096, there is no canonical definition to state claims against.
-/

/-! ## A237096.P7559049071491971721

`A237099(A374005(n+1))`
-/

namespace A237096.P7559049071491971721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A374005 (n + 1)).toNat

end

end A237096.P7559049071491971721

/-! ## A237096.P10427289768379733117

`A237099(A155212(n)+13)`
-/

namespace A237096.P10427289768379733117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A155212 n + 13).toNat

end

end A237096.P10427289768379733117

/-! ## A237096.P4773237060166296546

`A237099(A056000(n)+15)`
-/

namespace A237096.P4773237060166296546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A056000 n + 15).toNat

end

end A237096.P4773237060166296546

/-! ## A237096.P10118585983869985087

`A237099(A166136(n+3)-1)`
-/

namespace A237096.P10118585983869985087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A166136 (n + 3) - 1).toNat

end

end A237096.P10118585983869985087

/-! ## A237096.P3638117275437424332

`A237099(Δ[A264443(n)])`
-/

namespace A237096.P3638117275437424332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (f1 (n + 1) - f1 n).toNat

end

end A237096.P3638117275437424332

/-!
# A237097: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237097, there is no canonical definition to state claims against.
-/

/-! ## A237097.P13492280204160043355

`A237099(A374007(n+1))`
-/

namespace A237097.P13492280204160043355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A374007 (n + 1)).toNat

end

end A237097.P13492280204160043355

/-! ## A237097.P17752602013779191318

`A237099(A166136(n+4))`
-/

namespace A237097.P17752602013779191318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A166136 (n + 4)).toNat

end

end A237097.P17752602013779191318

/-! ## A237097.P16011933320397340051

`A237099(A056115(n)+21)`
-/

namespace A237097.P16011933320397340051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A056115 n + 21).toNat

end

end A237097.P16011933320397340051

/-! ## A237097.P15065667598846358631

`A237099(A052905(n+3))`
-/

namespace A237097.P15065667598846358631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A052905 (n + 3)).toNat

end

end A237097.P15065667598846358631

/-! ## A237097.P2130920828250608820

`A237099(eq[3, A219347(n)])`
-/

namespace A237097.P2130920828250608820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237097.P2130920828250608820

/-!
# A237098: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock equal.

The programs for A237098, there is no canonical definition to state claims against.
-/

/-! ## A237098.P11089590301886113495

`A237099(A374008(n+1))`
-/

namespace A237098.P11089590301886113495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A374008 (n + 1)).toNat

end

end A237098.P11089590301886113495

/-! ## A237098.P5882209330466686440

`A237099(A055999(n+4))`
-/

namespace A237098.P5882209330466686440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A055999 (n + 4)).toNat

end

end A237098.P5882209330466686440

/-! ## A237098.P11172280083066560559

`A237099(eq[4, A219347(n)])`
-/

namespace A237098.P11172280083066560559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237098.P11172280083066560559

/-! ## A237098.P3800537086713224276

`A237099(eq[6, A193592(n)])`
-/

namespace A237098.P3800537086713224276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237098.P3800537086713224276

/-! ## A237098.P8415158544573738058

`A237099(A167499(n+6)-11)`
-/

namespace A237098.P8415158544573738058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237099 (A167499 (n + 6) - 11).toNat

end

end A237098.P8415158544573738058

